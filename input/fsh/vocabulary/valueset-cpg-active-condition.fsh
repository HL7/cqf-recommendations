ValueSet: CPGActiveConditionVS
Id: cpg-active-condition-vs
Title: "CPG Active Condition Value Set"
Description: "Active condition clinical status codes"
* insert ValueSetMetadata(cpg-active-condition-vs)
* ^purpose = "Used to specify the set of clinical status codes that are considered active"
* ^copyright = "© CDC 2016+."
* ConditionClinicalStatusCodes#active "Active"
* ConditionClinicalStatusCodes#recurrence "Recurrence"
* ConditionClinicalStatusCodes#relapse "Relapse"