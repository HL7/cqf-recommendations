ValueSet: CPGActiveConditionVS
Id: cpg-active-condition-vs
Title: "CPG Active Condition Value Set"
Description: "Active condition clinical status codes"
* insert ValueSetMetadata(cpg-active-condition-vs)
* ^purpose = "Used to specify the set of clinical status codes that are considered active"
* ^copyright = "© CDC 2016+."
* $condition-clinical|3.0.0#active "Active"
* $condition-clinical|3.0.0#recurrence "Recurrence"
* $condition-clinical|3.0.0#relapse "Relapse"