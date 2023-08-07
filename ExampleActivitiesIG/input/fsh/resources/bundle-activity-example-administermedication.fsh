Instance: activity-example-administermedication-bundle
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://example.org/Library/activity-example-administermedication-1"
  * resource = Inline-Instance-for-activity-example-administermedication-1
* entry[+]
  * fullUrl = "http://example.org/Library/AdministerMedication"
  * resource = AdministerMedication
* entry[+]
  * fullUrl = "http://example.org/PlanDefinition/activity-example-administermedication-2"
  * resource = Inline-Instance-for-activity-example-administermedication-2
* entry[+]
  * fullUrl = "http://example.org/Bundle/am-scenario7-inline-bundle"
  * resource = am-scenario7-inline-bundle

Instance: Inline-Instance-for-activity-example-administermedication-1
InstanceOf: Library
Usage: #inline
* id = "activity-example-administermedication-1"
* insert Profile(cpg-shareablelibrary)
* insert Profile(cpg-assetcollection)
* insert KnowledgeArtifactMetadata(activity-example-administermedication-1, Library)
* insert RelatedFHIRLibraries
* name = "ActivityExampleAdministerMedication"
* title = "Activity Example - Administer Medication Collection"
* status = #draft
* experimental = true
* type = $library-type#asset-collection
* description = "Asset collection of artifacts in the Administer Medication activity example"
* relatedArtifact[+]
  * type = #depends-on
//  * resource = Canonical(cpg-activity-type-cs)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-ad)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(administermedication-library)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-pd)

Instance: AdministerMedication
InstanceOf: Library
Usage: #inline
* insert Profile(cpg-shareablelibrary)
* insert Profile(cpg-computablelibrary)
* insert Profile(cpg-executablelibrary)
* insert KnowledgeArtifactMetadata(AdministerMedication, Library)
* insert RelatedFHIRLibraries
* name = "AdministerMedication"
* title = "Administer Medication"
* status = #draft
* experimental = true
* type = $library-type#logic-library
* description = "Logic for an example recommendation to administer a medication"
* relatedArtifact[+]
  * type = #depends-on
//  * resource = Canonical(cpg-activity-type-cs)
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #"Medication Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationRequest
* parameter[+]
  * name = #"Medication Not Proposed"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationRequest
* parameter[+]
  * name = #"Inclusion Criteria"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Active or Completed Medication Administration"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationAdministration
* parameter[+]
  * name = #"Medication Administration Not Done"
  * use = #out
  * min = 0
  * max = "*"
  * type = #MedicationAdministration
* parameter[+]
  * name = #"Administer Proposal"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Administer Proposal Rejected"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Task
* parameter[+]
  * name = #"Is Recommendation Applicable"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = Canonical(MedicationRequest)
* dataRequirement[+]
  * type = #MedicationRequest
  * profile = Canonical(MedicationRequest)
* dataRequirement[+]
  * type = #MedicationAdministration
  * profile = Canonical(MedicationAdministration)
* dataRequirement[+]
  * type = #MedicationAdministration
  * profile = Canonical(MedicationAdministration)
* dataRequirement[+]
  * type = #Task
  * profile = Canonical(Task)
* dataRequirement[+]
  * type = #Task
  * profile = Canonical(Task)
* content
  * id = "ig-loader-AdministerMedication.cql"

Instance: Inline-Instance-for-activity-example-administermedication-2
InstanceOf: PlanDefinition
Usage: #inline
* id = "activity-example-administermedication-2"
* insert Profile(cpg-recommendationdefinition)
* insert (activity-example-administermedication-2, PlanDefinition)
* name = "ActivityExampleAdministerMedication"
* title = "Activity Example Administer Medication"
* status = #draft
* description = "Example Plan Definition for a recommendation to administer a medication"
* type = $plan-definition-type#eca-rule
* experimental = true
* library = Canonical(administermedication-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-administermedication-ad)

Instance: am-scenario7-inline-bundle
InstanceOf: Bundle
Usage: #inline
* type = #collection
* entry[+]
  * fullUrl = "http://example.org/GuidanceResponse/am-scenario7-1"
  * resource
    * resourceType = "GuidanceResponse"
    * id = "am-scenario7-1"
    * contained
      * resourceType = "Parameters"
      * id = "output"
      * parameter[+]
        * name = "Inclusion Criteria"
        * valueBoolean = true
      * parameter[+]
        * name = "Is Recommendation Applicable"
        * valueBoolean = false
    * moduleCanonical = Canonical(administermedication-library)
    * status = #success
    * subject.reference = "Patient/am-scenario7-patient"
    * outputParameters.reference = "#output"
* entry[+]
  * fullUrl = "http://example.org/MedicationAdministration/am-scenario7-2"
  * resource
    * resourceType = "MedicationAdministration"
    * id = "am-scenario7-2"
    * status = #not-done
    * medicationCodeableConcept = $sct#333919005 "Fentanyl 25micrograms/hour patch (product)"
    * subject.reference = "Patient/am-scenario7-patient"
    * effectivePeriod
      * start = "2015-01-15T22:03:00+01:00"
      * end = "2015-01-16T02:03:00+01:00"
    * request.reference = "MedicationRequest/am-scenario7-mr"
    * dosage
      * text = "apply one patch three times per week"
      * dose = 1 $v3-orderableDrugForm-cs#PATCH "patch"
* entry[+]
  * fullUrl = "http://example.org/MedicationRequest/am-scenario7-3"
  * resource
    * resourceType = "MedicationRequest"
    * id = "am-scenario7-3"
    * status = #active
    * intent = #order
    * priority = #routine
    * medicationCodeableConcept = $sct#333919005 "Fentanyl 25micrograms/hour patch (product)"
    * subject.reference = "Patient/am-scenario7-patient"
    * dosageInstruction
      * sequence = 1
      * text = "apply one patch three times per week"
      * timing.repeat
        * frequency = 3
        * period = 1
        * periodUnit = #wk
      * doseAndRate
        * type = $dose-rate-type#ordered "Ordered"
        * doseQuantity = 1 $v3-orderableDrugForm-cs#PATCH "patch"
    * dispenseRequest
      * validityPeriod
        * start = "2015-01-15"
        * end = "2016-01-15"
      * quantity = 6 $v3-orderableDrugForm-cs#PATCH "patch"
      * expectedSupplyDuration = 14 'd' "days"
* entry[+]
  * fullUrl = "http://example.org/Patient/am-scenario7-4"
  * resource
    * resourceType = "Patient"
    * id = "am-scenario7-4"
    * active = true
    * name
      * use = #usual
      * text = "Example Patient"
      * family = "Patient"
      * given = "Example"
    * gender = #female
    * birthDate = "1990-10-01"
    * deceasedBoolean = false
* entry[+]
  * fullUrl = "http://example.org/Task/request-am-scenario7-5"
  * resource
    * resourceType = "Task"
    * id = "request-am-scenario7-5"
    * instantiatesCanonical = Canonical(activity-example-administermedication-ad)
    * status = #in-progress
    * intent = #order
    * code = $cpg-activity-type-cs#administer-medication "Administer a medication"
    * for.reference = "Patient/am-scenario7-patient"
    * input
      // * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
      * valueReference.reference = "MedicationRequest/am-scenario7-mr"