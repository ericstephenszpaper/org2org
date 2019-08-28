public class zAcceptController {
    public List<ZPAPER__zStack__c> selected { get;set; }
    public String listViewFilterId { get;set; }
    
    public zAcceptController(ApexPages.StandardSetController stdSetController) {
        this.listViewFilterId = stdSetController.getFilterId();
        System.debug('### current filterId = ' + stdSetController.getFilterId());
        System.debug('@@@ Setting our filter Id to: ' + this.listViewFilterId);
        this.selected = (List<ZPAPER__zStack__c>)stdSetController.getSelected();
    }
    
    public PageReference setOwnerAndRedirect() {
        Id userId = UserInfo.getUserId();
        for (ZPAPER__zStack__c stack : this.selected) {
            System.debug('@@@ Changing Owner for Stack: ' + stack.Id + ', old owner: ' + stack.OwnerId + ', new owner: ' + userId);
            stack.OwnerId = userId;
        }
        update this.selected;
        PageReference pageRef = new PageReference('/lightning/o/ZPAPER__zStack__c/list?filterName=' + listViewFilterId);
        pageRef.setRedirect(true);
        return pageRef;
    }
}