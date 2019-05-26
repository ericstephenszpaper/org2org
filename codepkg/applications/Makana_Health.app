<?xml version="1.0" encoding="UTF-8"?>
<CustomApplication xmlns="http://soap.sforce.com/2006/04/metadata">
    <brand>
        <headerColor>#615586</headerColor>
        <logo>Makana_Health_Logo_128_by_128</logo>
        <logoVersion>1</logoVersion>
        <shouldOverrideOrgTheme>false</shouldOverrideOrgTheme>
    </brand>
    <description>Document Automation for Salesforce</description>
    <formFactors>Large</formFactors>
    <isNavAutoTempTabsDisabled>false</isNavAutoTempTabsDisabled>
    <isNavPersonalizationDisabled>false</isNavPersonalizationDisabled>
    <label>Makana Health</label>
    <navType>Console</navType>
    <!-- ERS190526 O2O can not stand the custom profiles
    <profileActionOverrides>
        <actionName>Tab</actionName>
        <content>Makana_Health_PSA_Dashboard</content>
        <formFactor>Large</formFactor>
        <pageOrSobjectType>standard-home</pageOrSobjectType>
        <type>Flexipage</type>
        <profile>PSA User</profile>
    </profileActionOverrides>
    <profileActionOverrides>
        <actionName>Tab</actionName>
        <content>Makana_Health_PSM_Dashboard</content>
        <formFactor>Large</formFactor>
        <pageOrSobjectType>standard-home</pageOrSobjectType>
        <type>Flexipage</type>
        <profile>PSM User</profile>
    </profileActionOverrides>
-->
    <profileActionOverrides>
        <actionName>View</actionName>
        <content>Case_Record_Page</content>
        <formFactor>Large</formFactor>
        <pageOrSobjectType>Case</pageOrSobjectType>
        <recordType>Case.Enrollment</recordType>
        <type>Flexipage</type>
        <profile>Standard Manager User</profile>
    </profileActionOverrides>
    <profileActionOverrides>
        <actionName>View</actionName>
        <content>Case_Record_Page</content>
        <formFactor>Large</formFactor>
        <pageOrSobjectType>Case</pageOrSobjectType>
        <recordType>Case.Enrollment</recordType>
        <type>Flexipage</type>
        <profile>Standard</profile>
    </profileActionOverrides>
    <profileActionOverrides>
        <actionName>View</actionName>
        <content>Case_Record_Page</content>
        <formFactor>Large</formFactor>
        <pageOrSobjectType>Case</pageOrSobjectType>
        <recordType>Case.Enrollment</recordType>
        <type>Flexipage</type>
        <profile>Admin</profile>
    </profileActionOverrides>
    <tabs>standard-home</tabs>
    <tabs>ZPAPER__zStack__c</tabs>
    <tabs>standard-Case</tabs>
    <tabs>standard-Account</tabs>
    <tabs>standard-Contact</tabs>
    <uiType>Lightning</uiType>
    <utilityBar>Makana_Health_UtilityBar</utilityBar>
    <workspaceConfig>
        <mappings>
            <tab>ZPAPER__zStack__c</tab>
        </mappings>
        <mappings>
            <tab>standard-Account</tab>
        </mappings>
        <mappings>
            <tab>standard-Case</tab>
        </mappings>
        <mappings>
            <tab>standard-Contact</tab>
        </mappings>
        <mappings>
            <tab>standard-home</tab>
        </mappings>
    </workspaceConfig>
</CustomApplication>
