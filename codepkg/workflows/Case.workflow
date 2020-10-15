<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Outbound_Fax_ACK_Template_Value</fullName>
        <description>Automatic outbound template when workflow changes Status from New to Working</description>
        <field>ZPAPER__outboundFaxTemplate__c</field>
        <formula>&quot;&lt;formId&gt;Acknowledgement_Form&lt;/formId&gt;&lt;sendTo&gt;&quot;&amp; Account.Fax &amp;&quot;&lt;/sendTo&gt;&quot;</formula>
        <name>Outbound Fax ACK Template Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Outbound_Fax_MED_Template_Value</fullName>
        <description>Automatic outbound template when workflow changes Status from New to Medical Records Request</description>
        <field>ZPAPER__outboundFaxTemplate__c</field>
        <formula>&quot;&lt;formId&gt;MedicalRecordRequest_Form&lt;/formId&gt;&lt;sendTo&gt;&quot;&amp; Account.Fax &amp;&quot;&lt;/sendTo&gt;&quot;</formula>
        <name>Outbound Fax MED Template Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
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
    <fieldUpdates>
        <fullName>Outbound_Physician_Order_Value</fullName>
        <description>This is getting the zPaper Template to send out.</description>
        <field>ZPAPER__outboundFaxTemplate__c</field>
        <formula>&quot;&lt;formId&gt;PhysicianOrderACK_Form&lt;/formId&gt;&lt;sendTo&gt;&quot;&amp; Account.Fax &amp;&quot;&lt;/sendTo&gt;&quot;</formula>
        <name>Outbound Physician Order Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sent_Document_Status_to_Pending</fullName>
        <field>ZPAPER__sentFaxStatus__c</field>
        <formula>&quot;Pending&quot;</formula>
        <name>Sent Document Status to Pending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Medical_Records_Request</fullName>
        <apiVersion>48.0</apiVersion>
        <description>This is an outbound template message for a medical records request.</description>
        <endpointUrl>https://demo.zpaper.com/kb/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>ZPAPER__outboundFaxTemplate__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>sales.demo@zpaper.com</integrationUser>
        <name>Medical Records Request</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Missing_Information</fullName>
        <apiVersion>48.0</apiVersion>
        <description>This is an outbound template message for missing information.</description>
        <endpointUrl>https://demo.zpaper.com/kb/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>ZPAPER__outboundFaxTemplate__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>sales.demo@zpaper.com</integrationUser>
        <name>Missing Information</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>New_Outbound_PA_Message</fullName>
        <apiVersion>45.0</apiVersion>
        <description>This is an outbound template message for Prior Authorization</description>
        <endpointUrl>https://demo.zpaper.com/kb/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>ZPAPER__outboundFaxTemplate__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>sales.demo@zpaper.com</integrationUser>
        <name>New Outbound PA Message</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>New_Outbound_Template_Message</fullName>
        <apiVersion>41.0</apiVersion>
        <description>This is an outbound template message for Enrollment form</description>
        <endpointUrl>https://demo.zpaper.com/kb/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>ZPAPER__outboundFaxTemplate__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>sales.demo@zpaper.com</integrationUser>
        <name>New Outbound Template Message</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Physician_Order</fullName>
        <apiVersion>48.0</apiVersion>
        <description>This is an outbound template message for a physician order.</description>
        <endpointUrl>https://demo.zpaper.com/kb/services/OutboundMessageService</endpointUrl>
        <fields>Id</fields>
        <fields>ZPAPER__outboundFaxTemplate__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>sales.demo@zpaper.com</integrationUser>
        <name>Physician Order</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Sending Outbound Acknowledgement Template</fullName>
        <actions>
            <name>Outbound_Fax_ACK_Template_Value</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>New_Outbound_Template_Message</name>
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
        <fullName>Sending Outbound Medical Record Request Template</fullName>
        <actions>
            <name>Outbound_Fax_MED_Template_Value</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Medical_Records_Request</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Medical Records Request</value>
        </criteriaItems>
        <description>This is an automatic outbound merged template when a Medical Record Request has been created.</description>
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
    <rules>
        <fullName>Sending Outbound Physician Order Template</fullName>
        <actions>
            <name>Outbound_Physician_Order_Value</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Sent_Document_Status_to_Pending</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Physician_Order</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Authorized</value>
        </criteriaItems>
        <description>This is an automatic outbound merged template when a new Physician Order has been created.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
