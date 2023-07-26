Instance: activity-example-administermedication-bundle
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = $inline-activity-example-administermedication-library
  * resource = Inline-Instance-for-activity-example-administermedication-1
* entry[+]
  * fullUrl = $administermedication-library
  * resource = administermedication-library
* entry[+]
  * fullUrl = $inline-activity-example-administermedication-pd
  * resource = Inline-Instance-for-activity-example-administermedication-2
* entry[+]
  * fullUrl = $am-scenario7-bundle
  * resource = am-scenario7

Instance: Inline-Instance-for-activity-example-administermedication-1
InstanceOf: Library
Usage: #inline
Title: "Activity Example - Administer Medication Collection"
* description = "Asset collection of artifacts in the Administer Medication activity example"
* id = "inline-activity-example-administermedication-library"
* insert Profile(cpg-shareablelibrary)
* insert Profile(cpg-assetcollection)
* insert KnowledgeArtifactMetadata(inline-activity-example-administermedication-library, Library)
* insert RelatedFHIRLibraries
* name = "ActivityExampleAdministerMedication"
* type = $library-type#asset-collection
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(cpg-activity-type-cs)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-ad)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-library)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-pd)

Instance: Inline-Instance-for-activity-example-administermedication-2
InstanceOf: PlanDefinition
Usage: #inline
Title: "Activity Example Administer Medication"
* description = "Example Plan Definition for a recommendation to administer a medication"
* id = "inline-activity-example-administermedication-pd"
* insert Profile(cpg-recommendationdefinition)
* insert KnowledgeArtifactMetadata(inline-activity-example-administermedication-pd, PlanDefinition)
* name = "ActivityExampleAdministerMedication"
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

Instance: am-scenario7
InstanceOf: Bundle
Usage: #inline
* type = #collection
* entry[0]
  * fullUrl = "http://example.org/GuidanceResponse/am-scenario7"
  * resource
    * resourceType = "GuidanceResponse"
    * id = "am-scenario7"
    * contained
      * resourceType = "Parameters"
      * id = "output"
      * parameter[0]
        * name = "Inclusion Criteria"
        * valueBoolean = true
      * parameter[+]
        * name = "Is Recommendation Applicable"
        * valueBoolean = false
    * moduleCanonical = Canonical(administermedication-library)
    * status = #success
    * subject.reference = "Patient/am-scenario7"
    * outputParameters.reference = "#output"
* entry[+]
  * fullUrl = "http://example.org/MedicationAdministration/am-scenario7"
  * resource
    * resourceType = "MedicationAdministration"
    * id = "am-scenario7"
    * status = #not-done
    * medicationCodeableConcept = $sct#333919005 "Fentanyl 25micrograms/hour patch (product)"
    * subject.reference = "Patient/am-scenario7"
    * effectivePeriod
      * start = "2015-01-15T22:03:00+01:00"
      * end = "2015-01-16T02:03:00+01:00"
    * request.reference = "MedicationRequest/am-scenario7"
    * dosage
      * text = "apply one patch three times per week"
      * dose = 1 $v3-orderableDrugForm-cs#PATCH "patch"
* entry[+]
  * fullUrl = "http://example.org/MedicationRequest/am-scenario7"
  * resource
    * resourceType = "MedicationRequest"
    * id = "am-scenario7"
    * status = #active
    * intent = #order
    * priority = #routine
    * medicationCodeableConcept = $sct#333919005 "Fentanyl 25micrograms/hour patch (product)"
    * subject.reference = "Patient/am-scenario7"
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
  * fullUrl = "http://example.org/Patient/am-scenario7"
  * resource
    * resourceType = "Patient"
    * id = "am-scenario7"
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
  * fullUrl = "http://example.org/Task/request-am-scenario7"
  * resource
    * resourceType = "Task"
    * id = "request-am-scenario7"
    * instantiatesCanonical = Canonical(activity-example-administermedication-ad)
    * status = #in-progress
    * intent = #order
    * code = $cpg-activity-type-cs#administer-medication "Administer a medication"
    * for.reference = "Patient/am-scenario7"
    * input
      * type = $cpg-activity-type-cs#administer-medication "Administer a medication"
      * valueReference.reference = "MedicationRequest/am-scenario7"