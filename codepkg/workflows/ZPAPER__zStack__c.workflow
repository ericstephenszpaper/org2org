<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>zSendAmbAck2</fullName>
        <field>outbound_2_FaxTemplate__c</field>
        <formula>&quot;&lt;sendTo&gt;&quot; &amp; zCaller_ID__c &amp; &quot;&lt;/sendTo&gt;&lt;formId&gt;ambassadorFaxConfirm_Form&lt;/formId&gt;&quot;</formula>
        <name>zSendAmbAck2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>zStackForwardCreon</fullName>
        <description>sets Outbound Template to Creon email and doc ID. Production email is creonambassador@iqvia.com

&quot;&lt;sendTo&gt;shipra.prakash@abbvie.com&lt;/sendTo&gt;&lt;formId&gt;zStackForward_Form&lt;/formId&gt;&lt;appendId&gt;&quot;&amp; ZPAPER__receivedId__c &amp;&quot;&lt;/appendId&gt;&quot;</description>
        <field>ZPAPER__outboundFaxTemplate__c</field>
        <formula>&quot;&lt;sendTo&gt;implementations+abbvieforward@zpaper.com&lt;/sendTo&gt;&lt;formId&gt;zStackForward_Form&lt;/formId&gt;&lt;appendId&gt;&quot;&amp; ZPAPER__receivedId__c &amp;&quot;&lt;/appendId&gt;&quot;</formula>
        <name>zStackForwardCreon</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>zSendAmbAck2</fullName>
        <apiVersion>47.0</apiVersion>
        <endpointUrl>https://gw.zpaper.com/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>outbound_2_FaxTemplate__c</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>zpaper@abbvie.com</integrationUser>
        <name>zSendAmbAck2</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>zSendStack</fullName>
        <apiVersion>47.0</apiVersion>
        <description>outbound message from a zStack

https://gw.zpaper.com/services/OutboundMessageService</description>
        <endpointUrl>https://gw.zpaper.com/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>ZPAPER__outboundFaxTemplate__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>zpaper@abbvie.com</integrationUser>
        <name>zSendStack</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>zStackForwardCreon</fullName>
        <actions>
            <name>zSendAmbAck2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>zStackForwardCreon</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>zSendAmbAck2</name>
            <type>OutboundMessage</type>
        </actions>
        <actions>
            <name>zSendStack</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ZPAPER__zStack__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Outbound</value>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__receivedId__c</field>
            <operation>notEqual</operation>
            <value>Null</value>
        </criteriaItems>
        <description>Forwards a received document to the Creon email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
