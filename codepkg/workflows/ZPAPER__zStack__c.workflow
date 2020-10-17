<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>zAccept</fullName>
        <actions>
            <name>Time_Accepted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This is the workflow rule that allow time reporting for when a zStack is accepted from the main intake list to the agent&apos;s list.</description>
        <formula>AND(ISCHANGED(OwnerId),OwnerId=$User.Id)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
