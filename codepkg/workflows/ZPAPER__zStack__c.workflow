<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Inbound_with_no_QR_Codes</fullName>
        <field>OwnerId</field>
        <lookupValue>Inbound</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Inbound with no QR Codes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>zClear_New_Incoming</fullName>
        <description>This will clear the New Incoming field so that the &quot;zForward to RxC&quot; wf may fire again.</description>
        <field>ZPAPER__newFax__c</field>
        <literalValue>0</literalValue>
        <name>zClear New Incoming</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>zPopulate_Outbound_Template_field_Stack</fullName>
        <field>ZPAPER__outboundFaxTemplate__c</field>
        <formula>&quot;&lt;sendTo&gt;16786366130&lt;/sendTo&gt;&lt;formId&gt;&quot;+ZPAPER__receivedId__c +&quot;&lt;/formId&gt;&lt;coverID&gt;noCode&lt;/coverID&gt;&quot;</formula>
        <name>zPopulate Outbound Template field Stack</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>zStage_Update</fullName>
        <field>ZPAPER__Stage__c</field>
        <literalValue>Discovered</literalValue>
        <name>zStage Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Forward to McKesson</fullName>
        <actions>
            <name>zClear_New_Incoming</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>zPopulate_Outbound_Template_field_Stack</name>
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
        <booleanFilter>(1 OR 2 OR 3 OR 4) AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__faxType__c</field>
            <operation>contains</operation>
            <value>ENRL</value>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__faxType__c</field>
            <operation>contains</operation>
            <value>ENRL2</value>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__faxType__c</field>
            <operation>contains</operation>
            <value>ENJIAP</value>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__faxType__c</field>
            <operation>contains</operation>
            <value>ENJENR</value>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__receivedId__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__sentFaxTo__c</field>
            <operation>contains</operation>
            <value>6786366034</value>
        </criteriaItems>
        <description>This workflow will fire if zOCR identifies Alprolix and forwards to Mckesson</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Inbound with no QR Codes</fullName>
        <actions>
            <name>Inbound_with_no_QR_Codes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__faxType__c</field>
            <operation>equals</operation>
            <value>FAX</value>
        </criteriaItems>
        <description>if we receives a fax and there is no QR code orfor some reason if we were not able to read f</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
