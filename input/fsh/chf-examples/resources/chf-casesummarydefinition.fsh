Instance: chf-casesummarydefinition
InstanceOf: cpg-casesummarydefinition
Usage: #definition
* insert CaseSummaryDefinitionMetadata(chf-casesummarydefinition)
* extension[+]
  * url = Canonical(cpg-identifier)
  * valueIdentifier
    * use = #official
    * system = $chf-implementationguide
    * value = "CHFCaseSummaryDefinition"
* extension[+]
  * url = Canonical(cpg-title)
  * valueString = "CHF Case Summary Definition"
* name = "CHFCaseSummaryDefinition"
* description = "Definition of the case summary document for a congestive heart failure pathway"
* start = #EpisodeOfCare
* profile = Canonical(cpg-case)
* link
  * path = "encounter"
  * description = "Pathway Events"
  * target
    * type = #Encounter
    * profile = Canonical(cpg-encounter)
    * link[+]
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
      * target
        * type = #Observation
        * profile = Canonical(chf-jvp)
    * link[+]
      * description = "O2 Sat"
      * target
        * type = #Observation
        * profile = Canonical(chf-o2-sat)
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
      * target
        * type = #MedicationAdministration
        * profile = Canonical(chf-lasix-iv-administration)
    * link[+]
      * description = "LASIX PO"
      * target
        * type = #MedicationAdministration
        * profile = Canonical(chf-lasix-po-administration)
    * link[+]
      * description = "Cardiology Consultation"
      * target
        * type = #Procedure
        * profile = Canonical(chf-cardiology-consult)