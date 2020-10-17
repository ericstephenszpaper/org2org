public with sharing class zPaperCalloutDemonstratorController {
    private String calloutResult = 'NO CALLOUT PERFORMED YET';
    private String calloutUser = 'NONE';
    private Blob calloutFileBody = null;
    private String calloutFileName = '';
    private String endPointHost;
    
    public void doCallout() {
        calloutResult = 'Call Pending...';
        calloutUser = UserInfo.getUserName();
        
        System.debug('@@@ Inside doCallout: endPointHost = ' + endPointHost);
        // keeping things simple, just hard-code everything
        String form64 = ZPAPER5.HttpMultipartFormBuilder.writeBoundary();
        form64 += ZPAPER5.HttpMultipartFormBuilder.writeBodyParameter('uploadDir' , 'lightningUpload');
        form64 += ZPAPER5.HttpMultipartFormBuilder.writeBoundary();
        ZPAPER5.HttpMultipartFormBuilder.WriteFileResult result =
            ZPAPER5.HttpMultipartFormBuilder.writeFile('file',
                                               'test.txt',
                                               'text/plain',
                                               calloutFileBody);
        form64 += result.Content;
        form64 += ZPAPER5.HttpMultipartFormBuilder.writeBoundary(result.EndingType);
        Blob formBlob = Blob.valueOf(form64);
        System.debug('Form body ==> ' + formBlob);
        String contentLength = formBlob.size() + '';
        String sId = UserInfo.getSessionId();
        String endPoint = 'https://' + endPointHost + '/kb/jsp/echoRequest.jsp' +
            '?SFserver=' + uriEncode('https://zpapersalesdemo.my.salesforce.com') + '&SFsession=' + uriEncode(sId);
       
        
        System.debug('@@@ endPoint = ' + endPoint);
        System.debug('@@@ file name = ' + calloutFileName);
        System.debug('@@@ file content size = ' + calloutFileBody.size());
        System.debug('@@@ file content = ' + EncodingUtil.base64Encode(calloutFileBody));
        System.debug('@@@ first 3 chars of file content = ' + EncodingUtil.base64Decode(EncodingUtil.base64Encode(calloutFileBody).substring(0,8)).toString());
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setBodyAsBlob(formBlob);
        req.setEndpoint(endPoint);
        req.setHeader('X-API-Key', 'qaHu4MUDRb7iEnTozZfj7TSotaAxagCnsgmuQUBa0hca8yUnYfVbFg==');
        req.setHeader('Authorization', 'Bearer ' + sId);
        req.setHeader('Content-Length', contentLength);
        req.setHeader('Content-Type', ZPAPER5.HttpMultipartFormBuilder.getContentType());
        req.setTimeout(60 * 1000);         // requests are taking a long time, let's wait at least a minute for reponse
        try {
            Http h = new Http();
            HttpResponse response = h.send(req);
            System.debug('Back from http callout: response status = ' + response.getStatusCode());
            System.debug('Back from http callout: response status message = ' + response.getStatus());
            System.debug('Back from http callout: response = ' + response);
            calloutResult = 'Response from zPaper Server = ' + response.getStatusCode();
        } catch (Exception e) {
            calloutResult = 'ERROR: ' + e.getMessage();
        }
        System.debug('Final calloutResult = ' + calloutResult);
    }
    
    public String getCalloutResult() {
        return calloutResult;
    }
    
    public String getCalloutUser() {
        return calloutUser;
    }
    
    public String getEndpointHost() {
        return endpointHost;
    }
    
    public void setEndpointHost(String host) {
        endPointHost = host;
    }
    
    public List<SelectOption> getEndpointHosts() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('demo.zpaper.com','Direct'));
        options.add(new SelectOption('gw.zpaper.com', 'Gateway'));
        return options;
    }
    
    public void setCalloutFileBody(Blob body) {
        calloutFileBody = body;
    }
    
    public Blob getCalloutFileBody() {
        return calloutFileBody;
    }
    
    public void setCalloutFileName(String filename) {
        calloutFileName = filename;
    }
    
    public String getCalloutFileName() {
        return calloutFileName;
    }
        
    private static String uriEncode(String str) {
        return EncodingUtil.urlEncode(str, 'UTF-8')
                .replace('+', '%20')
                .replace('%21', '!')
                .replace('%27', '\'')
                .replace('%28', '(')
                .replace('%29', ')')
                .replace('%7E', '~');
    }

}