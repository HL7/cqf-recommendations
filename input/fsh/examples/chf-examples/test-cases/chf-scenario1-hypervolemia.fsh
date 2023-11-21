Instance: chf-scenario1-hypervolemia
InstanceOf: RequestGroup
Usage: #example
Description: "CHF Scenario One"
* instantiatesCanonical = Canonical(chf-hypervolemia)
* status = #active
* intent = #plan
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* action[+]
  * title = "JVP"
  * description = "Measure JVP daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * action
    * id = "jvp"
    * title = "JVP"
    * description = "Measure JVP daily"
    * code = $cpg-common-process-cs#diagnostic-testing
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
    * resource = Reference(chf-scenario1-jvp)
* action[+]
  * title = "O2 Sat"
  * description = "Monitor O2 Sat"
  * code = $cpg-common-process-cs#diagnostic-testing
  * action
    * id = "o2-sat"
    * title = "O2 Sat"
    * description = "Monitor oxygen saturation"
    * code = $cpg-common-process-cs#diagnostic-testing
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
    * resource = Reference(chf-scenario1-o2-sat)
* action[+]
  * title = "Potassium"
  * description = "Monitor Potassium"
  * code = $cpg-common-process-cs#diagnostic-testing
  * action
    * id = "potassium"
    * title = "Potassium"
    * description = "Monitor potassium"
    * code = $cpg-common-process-cs#diagnostic-testing
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
* action[+]
  * title = "Creatinine"
  * description = "Monitor Creatinine"
  * code = $cpg-common-process-cs#diagnostic-testing
  * action
    * id = "creatinine"
    * title = "Creatinine"
    * description = "Monitor creatinine"
    * code = $cpg-common-process-cs#diagnostic-testing
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
* action[+]
  * title = "eGFR"
  * description = "Monitor eGFR"
  * code = $cpg-common-process-cs#diagnostic-testing
  * action
    * id = "egfr"
    * title = "eGFR"
    * description = "Monitor eGFR"
    * code = $cpg-common-process-cs#diagnostic-testing
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
* action[+]
  * title = "LASIX"
  * description = "LASIX"
  * code = $cpg-common-process-cs#guideline-based-care
  * action[+]
    * id = "lasix-iv"
    * title = "LASIX IV"
    * description = "Administer LASIX IV"
    * code = $cpg-common-process-cs#dispense-medications
    * condition
      * kind = #stop
      * expression
        * language = #text/cql-identifier
        * expression = "Should Stop LASIX IV"
    * resource = Reference(chf-scenario1-stop-lasix-iv)
  * action[+]
    * id = "lasix-po"
    * title = "LASIX PO"
    * description = "Administer LASIX PO"
    * code = $cpg-common-process-cs#dispense-medications
    * condition
      * kind = #start
      * expression
        * language = #text/cql-identifier
        * expression = "Should Start LASIX PO"
    * resource = Reference(chf-scenario1-lasix-po-mr)
* action[+]
  * title = "Cardiology Consultation"
  * description = "Cardiology Consultation within 24 hours"
  * code = $cpg-common-process-cs#guideline-based-care
  * action
    * id = "cardiology-consultation"
    * title = "Cardiology Consultation"
    * description = "Cardiology Consultation"
    * code = $cpg-common-process-cs#guideline-based-care
    * resource = Reference(chf-scenario1-cardiology-consultation)