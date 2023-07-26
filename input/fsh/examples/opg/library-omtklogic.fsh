Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct

Instance: omtklogic
InstanceOf: Library
Usage: #example
* url = "http://fhir.org/guides/cdc/opioid-cds/Library/OMTKLogic"
* version = "0.0.0"
* name = "OMTKLogic"
* title = "OMTK Logic"
* status = #draft
* experimental = true
* type = $library-type#logic-library "Logic Library"
* date = "2018-04-17"
* publisher = "Centers for Disease Control and Prevention (CDC)"
* description = "Opioid Management Terminology Knowledge Base Logic for use in implementing CDC Opioid Prescribing Guidelines."
* useContext[0]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#182888003 "Medication requested (situation)"
* useContext[+]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#82423001 "Chronic pain (finding)"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "This library normalizes units to UCUM units, identifies the conversion factor for the given ingredient, identifies the non-surgical opioid ingredients and their strengths that make up a drug identified by the given rxNormCode, calculates daily dose for a specific ingredient based on the ingredient strength, dose form, dose quantity, and daily frequency, calculates daily frequency given frequency within a period, and calculates the Morphine Milligram Equivalency (MME) for a given prescription."
* usage = "This is a \"stub\" version of the OMTKLogic library that has no dependencies on the OMTK data. It provides a workable version of the logic suitable for example usage. For the full version of this library, see the CDC Opioid Prescribing Support Implementation Guide."
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
  * type = #documentation
  * display = "MME Conversion Tables"
  * url = "https://www.cdc.gov/drugoverdose/pdf/calculating_total_daily_dose-a.pdf"
* relatedArtifact[+]
  * type = #depends-on
  * url = "urn:hl7-org:elm-types:r1"
* content
  * id = "ig-loader-OMTKLogic.cql"