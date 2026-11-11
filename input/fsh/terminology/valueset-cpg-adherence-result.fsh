ValueSet: CPGAdherenceResultVS
Id: cpg-adherence-result-vs
Title: "CPG Adherence Result Value Set"
Description: "The result of evaluating an adherence metric scoped to a strategy. This is the default result value set for an adherence metric scoped to a CPGStrategy. Includes the operational states shared with the CPG Compliance Result value set."
* insert ValueSetMetadata(cpg-adherence-result-vs)
* CPGMetricResultCS#adherent
* CPGMetricResultCS#adherent-with-prior-non-adherence
* CPGMetricResultCS#partially-adherent
* CPGMetricResultCS#non-adherent
* CPGMetricResultCS#at-risk-for-non-adherence
* insert MetricResultOperationalStates
