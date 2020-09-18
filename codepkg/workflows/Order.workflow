<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Send_Order_Received_Form</fullName>
        <description>zPaper field update to send the Order Received document to the provider by fax. Updates the filed outboundFaxTemplate__c with XML payload used in an Outbound Message to zPaper.</description>
        <field>outboundFaxTemplate__c</field>
        <formula>&quot;&lt;sendTo&gt;&quot; &amp;  Account.Ordering_Provider__r.Fax &amp; &quot;&lt;/sendTo&gt;&lt;formId&gt;orderReceived_Form&lt;/formId&gt;&quot;</formula>
        <name>Send Order Received Form</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
