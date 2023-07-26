Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct
Alias: $medicationrequest-status = http://hl7.org/fhir/CodeSystem/medicationrequest-status
Alias: $medicationrequest-category = http://terminology.hl7.org/CodeSystem/medicationrequest-category

Instance: OpioidCDSR4Recommendation05
InstanceOf: Library
Usage: #example
* url = "http://fhir.org/guides/cdc/opioid-cds/Library/OpioidCDSR4Recommendation05"
* version = "0.1.0"
* name = "OpioidCDSR4Recommendation05"
* title = "Opioid CDS R4 Logic for recommendation #5"
* status = #active
* experimental = true
* type = $library-type#logic-library "Logic Library"
* date = "2018-04-15T13:49:09-06:00"
* publisher = "Centers for Disease Control and Prevention (CDC)"
* description = "Opioid Decision Support Logic for use in implementing CDC Opioid Prescribing Guidelines."
* useContext[0]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#182888003 "Medication requested (situation)"
* useContext[+]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#82423001 "Chronic pain (finding)"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "This library works in concert with the OMTK logic library to provide decision support for Morphine Milligram Equivalence calculations and dynamic value resolution."
* usage = "This library is to notify the prescriber/user whether the current prescription exceeds the recommended MME."
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
  * resource = "http://fhir.org/guides/cdc/opioid-cds/Library/OpioidCDSR4Common"
* relatedArtifact[+]
  * type = #documentation
  * display = "MME Conversion Tables"
  * url = "https://www.cdc.gov/drugoverdose/pdf/calculating_total_daily_dose-a.pdf"
* dataRequirement
  * id = "medications"
  * type = #MedicationRequest
  * codeFilter[0]
    * path = "status"
    * code = $medicationrequest-status#active
  * codeFilter[+]
    * path = "category"
    * code = $medicationrequest-category#outpatient
* content
  * id = "ig-loader-OpioidCDSR4Recommendation05.cql"