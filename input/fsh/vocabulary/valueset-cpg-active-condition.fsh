ValueSet: CPGActiveCondition
Id: cpg-active-condition
Title: "CPG Active Condition"
Description: "Active condition clinical status codes"
* insert ValueSetMetadata(cpg-active-condition)
* ^purpose = "Used to specify the set of clinical status codes that are considered active"
* ^copyright = "© CDC 2016+."
* ConditionClinicalStatusCodes#active "Active"
* ConditionClinicalStatusCodes#recurrence "Recurrence"
* ConditionClinicalStatusCodes#relapse "Relapse"