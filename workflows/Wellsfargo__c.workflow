<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>wells_work_flow_alert</fullName>
        <ccEmails>eswar.n@autorabit.com</ccEmails>
        <description>wells work flow alert</description>
        <protected>false</protected>
        <senderAddress>praveenkumar.t@autorabit.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CustomEmailFolder/TextTemplate1</template>
    </alerts>
    <fieldUpdates>
        <fullName>Field_update_in_wf</fullName>
        <description>testing</description>
        <field>Field_for_Testing__c</field>
        <name>Field update in wf</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>updated_test_field</fullName>
        <field>Field_for_Testing__c</field>
        <formula>Text(TODAY())</formula>
        <name>updated test field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update test field</fullName>
        <actions>
            <name>wells_work_flow_alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Field_update_in_wf</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>updated_test_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wellsfargo__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>