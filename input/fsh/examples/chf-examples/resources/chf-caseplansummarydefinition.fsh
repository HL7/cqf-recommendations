Instance: chf-caseplansummarydefinition
InstanceOf: cpg-caseplansummarydefinition
Usage: #example
* insert GraphDefinitionMetadata(chf-caseplansummarydefinition)
* extension[+]
  * url = Canonical(artifact-identifier)
  * valueIdentifier
    * use = #official
    * system = $chf-implementationguide
    * value = "CHFCasePlanSummaryDefinition"
* extension[+]
  * url = Canonical(artifact-title)
  * valueString = "CHF Case Plan Summary Definition"
* name = "CHFCasePlanSummaryDefinition"
* description = "Definition of the case plan summary document for a congestive heart failure pathway"
* start = #EpisodeOfCare
* profile = Canonical(cpg-case)
* link
  * path = "encounter"
  * description = "Pathway Events"
  * target
    * type = #Encounter
    * profile = Canonical(cpg-encounter)
    * link[0]
      * description = "Weight"
      * target
        * type = #Observation
        * profile = Canonical(chf-bodyweight)
    * link[+]
      * description = "Weight Change"
      * target
        * type = #Observation
        * profile = Canonical(chf-bodyweight-change)
    * link[+]
      * description = "Urine Out"
      * target
        * type = #Observation
        * profile = Canonical(chf-urine-out)
    * link[+]
      * description = "Net IO's"
      * target
        * type = #Observation
        * profile = Canonical(chf-net-io)
    * link[+]
      * description = "JVP"
      * target[0]
        * type = #Observation
        * profile = Canonical(chf-jvp)
      * target[+]
        * type = #ServiceRequest
        * profile = Canonical(chf-jvp-request)
    * link[+]
      * description = "O2 Sat"
      * target[0]
        * type = #Observation
        * profile = Canonical(chf-o2-sat)
      * target[+]
        * type = #ServiceRequest
        * profile = Canonical(chf-o2-sat-request)
    * link[+]
      * description = "Potassium"
      * target
        * type = #Observation
        * profile = Canonical(chf-potassium)
    * link[+]
      * description = "Creatinine"
      * target
        * type = #Observation
        * profile = Canonical(chf-creatinine)
    * link[+]
      * description = "eGFR"
      * target
        * type = #Observation
        * profile = Canonical(chf-egfr)
    * link[+]
      * description = "LASIX IV"
      * target[0]
        * type = #MedicationAdministration
        * profile = Canonical(chf-lasix-iv-administration)
      * target[+]
        * type = #MedicationRequest
        * profile = Canonical(chf-lasix-iv-request)
    * link[+]
      * description = "LASIX PO"
      * target[0]
        * type = #MedicationAdministration
        * profile = Canonical(chf-lasix-po-administration)
      * target[+]
        * type = #MedicationRequest
        * profile = Canonical(chf-lasix-po-request)
    * link[+]
      * description = "Cardiology Consultation"
      * target[0]
        * type = #Procedure
        * profile = Canonical(chf-cardiology-consult)
      * target[+]
        * type = #ServiceRequest
        * profile = Canonical(chf-cardiology-consult-request)