RuleSet: CHFScenario1MonitoringRequest(activity)
* instantiatesCanonical = Canonical({activity})
* status = #active
* intent = #option
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)

Instance: chf-scenario1-potassium-request
InstanceOf: CPGServiceRequest
Usage: #example
Description: "Potassium monitoring option in the CHF Scenario One care plan"
* insert CHFScenario1MonitoringRequest(chf-potassium-ad)
* code = $sct#59573005 "Potassium measurement (procedure)"

Instance: chf-scenario1-creatinine-request
InstanceOf: CPGServiceRequest
Usage: #example
Description: "Creatinine monitoring option in the CHF Scenario One care plan"
* insert CHFScenario1MonitoringRequest(chf-creatinine-ad)
* code = $sct#70901006 "Creatinine measurement (procedure)"

Instance: chf-scenario1-egfr-request
InstanceOf: CPGServiceRequest
Usage: #example
Description: "eGFR monitoring option in the CHF Scenario One care plan"
* insert CHFScenario1MonitoringRequest(chf-egfr-ad)
* code = $chf-example-codes#measure-egfr "Measure eGFR"
