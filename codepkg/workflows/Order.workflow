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
    <outboundMessages>
        <fullName>SendOrderFax</fullName>
        <apiVersion>49.0</apiVersion>
        <endpointUrl>https://gw.zpaper.com/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>outboundFaxTemplate__c</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>zpaper@immunovia.com</integrationUser>
        <name>SendOrderFax</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Send Order Received Form</fullName>
        <actions>
            <name>Send_Order_Received_Form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SendOrderFax</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Sends the Order Received Form to the Provider by fax</description>
        <formula>AND(
ISPICKVAL(Source__c, &quot;Fax&quot;),
NOT(
ISBLANK(Account.Ordering_Provider__r.Fax)
),
NOT(
ISBLANK(Account.PersonContact.Birth_Date__c)
),
NOT(
INCLUDES(Account.Ordering_Provider__r.Fax_Opt_Out__c , &quot;Order Confirmation&quot;)
),
NOT(
INCLUDES(Account.Ordering_Provider__r.Fax_Opt_Out__c , &quot;All&quot;)
)
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
