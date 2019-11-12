<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>zClear_New_Incoming</fullName>
        <field>ZPAPER__newFax__c</field>
        <literalValue>0</literalValue>
        <name>zClear New Incoming</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>zStage_Update</fullName>
        <field>ZPAPER__Stage__c</field>
        <literalValue>Delivered</literalValue>
        <name>zStage Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>SendStack</fullName>
        <apiVersion>47.0</apiVersion>
        <description>Sends documents from the Stack record to zPaper for delivery</description>
        <endpointUrl>https://gw.zpaper.com/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>ZPAPER__outboundFaxTemplate__c</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>zpaper@regalorx.com</integrationUser>
        <name>SendStack</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>zForward to Pharmacy</fullName>
        <actions>
            <name>zClear_New_Incoming</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>zStage_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SendStack</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__receivedId__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__From__c</field>
            <operation>contains</operation>
            <value>ken.schumacher</value>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__sentFaxTo__c</field>
            <operation>contains</operation>
            <value>6789489653</value>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__Status__c</field>
            <operation>equals</operation>
            <value>Forward</value>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__outboundFaxTemplate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This workflow rule will fires when the fax number is 16789489653</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
