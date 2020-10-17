<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Outbound_Fax_MINFO_Template_Value</fullName>
        <description>Automatic outbound template when workflow changes Status from New to Missing Information</description>
        <field>ZPAPER__outboundFaxTemplate__c</field>
        <formula>&quot;&lt;formId&gt;MissingInformation_Form&lt;/formId&gt;&lt;sendTo&gt;&quot;&amp; Account.Fax &amp;&quot;&lt;/sendTo&gt;&quot;</formula>
        <name>Outbound Fax MINFO Template Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Missing_Information</fullName>
        <apiVersion>50.0</apiVersion>
        <description>This is an outbound template message for missing information.</description>
        <endpointUrl>https://edge.zpaper.com/kb/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>ZPAPER__outboundFaxTemplate__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>sales.edgehcdemo.pfls@force.com</integrationUser>
        <name>Missing Information</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Sending Outbound Acknowledgement Template</fullName>
        <actions>
            <name>Outbound_Fax_Acknowledgement_Value</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Acknowledgement_Message</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Working</value>
        </criteriaItems>
        <description>This is an automatic outbound merged template when a new Enrollment form has been created.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sending Outbound Missing Information Template</fullName>
        <actions>
            <name>Outbound_Fax_MINFO_Template_Value</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Missing_Information</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Missing Information</value>
        </criteriaItems>
        <description>This is an automatic outbound merged template when there is missing information.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
