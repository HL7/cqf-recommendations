Instance: activity-example-pathway-pd
InstanceOf: PlanDefinition
Usage: #example
* title = "Activity Example Pathway PD"
* insert Profile(cpg-pathwaydefinition)
* insert KnowledgeArtifactMetadata(activity-example-pathway-pd, PlanDefinition)
* description = "Example Pathway for activity examples"
* name = "ActivityExamplePathwayPD"
* type = $plan-definition-type#clinical-protocol
* action[+]
  * title = "Administer medication"
  * description = "Administer medication"
  * code = $cpg-common-process-codesystem#dispense-medications
  * definitionCanonical = Canonical(activity-example-administermedication-pd)
* action[+]
  * title = "Collect information"
  * description = "Collect information"
  * code = $cpg-common-process-codesystem#history-and-physical
  * definitionCanonical = Canonical(activity-example-collectinformation-pd)
* action[+]
  * title = "Dispense medication"
  * description = "Dispense medication"
  * code = $cpg-common-process-codesystem#dispense-medications
  * definitionCanonical = Canonical(activity-example-dispensemedication-pd)
* action[+]
  * title = "Document medication"
  * description = "Document medication"
  * code = $cpg-common-process-codesystem#dispense-medications
  * definitionCanonical = Canonical(activity-example-documentmedication-pd)
* action[+]
  * title = "Do not collect information"
  * description = "Do not collect information"
  * code = $cpg-common-process-codesystem#history-and-physical
  * definitionCanonical = Canonical(activity-example-donotcollectinformation-pd)
* action[+]
  * title = "Do not send message"
  * description = "Do not send message"
  * code = $cpg-common-process-codesystem#provide-counseling
  * definitionCanonical = Canonical(activity-example-donotsendmessage-pd)
* action[+]
  * title = "Enroll patient"
  * description = "Enroll patient"
  * code = $cpg-common-process-codesystem#triage
  * definitionCanonical = Canonical(activity-example-enrollment-pd)
* action[+]
  * title = "Generate report"
  * description = "Generate report"
  * code = $cpg-common-process-codesystem#record-and-report
  * definitionCanonical = Canonical(activity-example-generatereport-pd)
* action[+]
  * title = "Order medication"
  * description = "Order medication"
  * code = $cpg-common-process-codesystem#dispense-medications
  * definitionCanonical = Canonical(activity-example-ordermedication-pd)
* action[+]
  * title = "Order service"
  * description = "Order service"
  * code = $cpg-common-process-codesystem#guideline-based-care
  * definitionCanonical = Canonical(activity-example-orderservice-pd)
* action[+]
  * title = "Propose diagnosis"
  * description = "Propose diagnosis"
  * code = $cpg-common-process-codesystem#determine-diagnosis
  * definitionCanonical = Canonical(activity-example-proposediagnosis-pd)
* action[+]
  * title = "Recommend immunization"
  * description = "Recommend immunization"
  * code = $cpg-common-process-codesystem#dispense-medications
  * definitionCanonical = Canonical(activity-example-recommendimmunization-pd)
* action[+]
  * title = "Record detected issue"
  * description = "Record detected issue"
  * code = $cpg-common-process-codesystem#guideline-based-care
  * definitionCanonical = Canonical(activity-example-recorddetectedissue-pd)
* action[+]
  * title = "Record inference"
  * description = "Record inference"
  * code = $cpg-common-process-codesystem#diagnostic-testing
  * definitionCanonical = Canonical(activity-example-recordinference-pd)
* action[+]
  * title = "Report flag"
  * description = "Report flag"
  * code = $cpg-common-process-codesystem#monitor-and-follow-up-of-patient
  * definitionCanonical = Canonical(activity-example-reportflag-pd)
* action[+]
  * title = "Send message"
  * description = "Send message"
  * code = $cpg-common-process-codesystem#provide-counseling
  * definitionCanonical = Canonical(activity-example-sendmessage-pd)