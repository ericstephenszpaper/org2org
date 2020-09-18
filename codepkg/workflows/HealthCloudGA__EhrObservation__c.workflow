<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Send_Test_Results</fullName>
        <description>zPaper field update to send the Order Received document to the provider by fax. Updates the filed outboundFaxTemplate__c with XML payload used in an Outbound Message to zPaper.

HealthCloudGA__Account__r.Ordering_Provider__r.Fax</description>
        <field>outboundFaxTemplate__c</field>
        <formula>&quot;&lt;sendTo&gt;&quot; &amp; Order__r.Account.Ordering_Provider__r.Fax  &amp; &quot;&lt;/sendTo&gt;&lt;sourceId&gt;&quot; &amp; Order__c &amp; &quot;&lt;/sourceId&gt;&lt;formId&gt;testResults_Form&lt;/formId&gt;&quot;</formula>
        <name>Send Test Results</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
