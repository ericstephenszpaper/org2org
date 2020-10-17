<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Time_Accepted</fullName>
        <description>This the field update the adds the time accepted on the zStack record for the record owner.</description>
        <field>Time_Accepted_Date__c</field>
        <formula>NOW()</formula>
        <name>Time Accepted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Time Completed Date Stamp</fullName>
        <actions>
            <name>Date_Time_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ZPAPER__zStack__c.ZPAPER__Stage__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>After Triage Complete button selected time is calculated.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>zAccept</fullName>
        <actions>
            <name>Time_Accepted</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Time_Stamp_Accepted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This is the workflow rule that allow time reporting for when a zStack is accepted from the main intake list to the agent&apos;s list.</description>
        <formula>AND(ISCHANGED(OwnerId),OwnerId=$User.Id)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
