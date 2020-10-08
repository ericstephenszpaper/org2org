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
    <outboundMessages>
        <fullName>SendEHRObservationFax</fullName>
        <apiVersion>50.0</apiVersion>
        <endpointUrl>https://gw.zpaper.com/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>outboundFaxTemplate__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>zpaper@immunovia.com</integrationUser>
        <name>SendEHRObservationFax</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Send Test Results</fullName>
        <actions>
            <name>Send_Test_Results</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SendEHRObservationFax</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Workflow to send the template testResults by zPaper and outbound message</description>
        <formula>AND(
NOT(ISBLANK( Order__c )),
NOT(
ISBLANK(Order__r.Account.Ordering_Provider__r.Fax)
),
NOT(
INCLUDES(Order__r.Account.Ordering_Provider__r.Fax_Opt_Out__c, &quot;Patient Results&quot;)
),
NOT(
INCLUDES(Order__r.Account.Ordering_Provider__r.Fax_Opt_Out__c, &quot;All&quot;)
)
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
