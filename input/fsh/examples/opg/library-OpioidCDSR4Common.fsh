Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct

Instance: OpioidCDSR4Common
InstanceOf: Library
Usage: #example
* url = "http://fhir.org/guides/cdc/opioid-cds/Library/OpioidCDSR4Common"
* version = "0.1.0"
* name = "OpioidCDSR4Common"
* title = "Opioid CDS R4 Common Logic"
* status = #active
* experimental = true
* type = $library-type#logic-library "Logic Library"
* date = "2018-03-25T13:49:09-06:00"
* publisher = "Centers for Disease Control and Prevention (CDC)"
* description = "Common Opioid Decision Support Logic for use in implementing CDC Opioid Prescribing Guidelines."
* useContext[0]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#182888003 "Medication requested (situation)"
* useContext[+]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#82423001 "Chronic pain (finding)"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "This library contains common logic across recommendations including MME calculations, conversions, and looking up codes in valuesets."
* usage = "This library is used for decision support for opioid guideline recommendations when applying PlanDefinitions."
* copyright = "© CDC 2016+."
* topic.text = "Opioid Prescribing"
* author[0].name = "Kensaku Kawamoto, MD, PhD, MHS"
* author[+].name = "Bryn Rhodes"
* author[+].name = "Floyd Eisenberg, MD, MPH"
* author[+].name = "Robert McClure, MD, MPH"
* relatedArtifact[0]
  * type = #documentation
  * display = "CDC guideline for prescribing opioids for chronic pain"
  * url = "https://www.cdc.gov/mmwr/volumes/65/rr/rr6501e1.htm?CDC_AA_refVal=https%3A%2F%2Fwww.cdc.gov%2Fmmwr%2Fvolumes%2F65%2Frr%2Frr6501e1er.htm"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://fhir.org/guides/cdc/opioid-cds/Library/OMTKLogic"
* relatedArtifact[+]
  * type = #depends-on
  * url = "urn:hl7-org:elm-types:r1"
* dataRequirement[0]
  * type = #MedicationRequest
  * codeFilter
    * path = "medication"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/opioids-abused-in-ambulatory-care"
* dataRequirement[+]
  * type = #MedicationRequest
  * codeFilter
    * path = "medication"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/benzodiazepines"
* dataRequirement[+]
  * type = #MedicationRequest
  * codeFilter
    * path = "medication"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/naloxone"
* dataRequirement[+]
  * type = #MedicationRequest
  * codeFilter
    * path = "medication"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/opioids-abused-in-ambulatory-care"
* dataRequirement[+]
  * type = #Condition
  * codeFilter
    * path = "code"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/end-of-life-conditions"
* dataRequirement[+]
  * type = #Condition
  * codeFilter
    * path = "code"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/limited-life-expectancy-conditions"
* dataRequirement[+]
  * type = #ServiceRequest
  * codeFilter.path = "type"
* dataRequirement[+]
  * type = #Procedure
  * codeFilter
    * path = "code"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/hospice-procedure"
* dataRequirement[+]
  * type = #ServiceRequest
  * codeFilter
    * path = "code"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/hospice-procedure"
* dataRequirement[+]
  * type = #Observation
  * codeFilter
    * path = "code"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/hospice-finding"
* dataRequirement[+].type = #Encounter
* dataRequirement[+]
  * type = #MedicationAdministration
  * codeFilter
    * path = "code"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/opioids-indicating-end-of-life"
* dataRequirement[+]
  * type = #MedicationDispense
  * codeFilter
    * path = "code"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/opioids-indicating-end-of-life"
* dataRequirement[+]
  * type = #MedicationRequest
  * codeFilter
    * path = "code"
    * valueSet = "http://fhir.org/guides/cdc/opioid-cds/ValueSet/opioids-indicating-end-of-life"
* content
  * id = "ig-loader-OpioidCDSR4Common.cql"
