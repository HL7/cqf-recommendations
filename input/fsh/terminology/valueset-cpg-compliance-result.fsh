ValueSet: CPGComplianceResultVS
Id: cpg-compliance-result-vs
Title: "CPG Compliance Result Value Set"
Description: "The result of evaluating a compliance metric scoped to a recommendation. This is the default result value set for a compliance metric scoped to a CPGRecommendation. Includes the operational states shared with the CPG Adherence Result value set."
* insert ValueSetMetadata(cpg-compliance-result-vs)
* CPGMetricResultCS#compliant
* CPGMetricResultCS#compliant-with-prior-non-compliance
* CPGMetricResultCS#non-compliant
* CPGMetricResultCS#at-risk-for-non-compliance
* insert MetricResultOperationalStates
