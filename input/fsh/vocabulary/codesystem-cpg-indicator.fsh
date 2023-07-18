CodeSystem: CPG_Indicator
Id: cpg-indicator
Title: "CPG Indicator Codes"
Description: "Indicates the urgency/importance of what this recommendation conveys"
* insert CodeSystemMetadata(cpg-indicator)
* #info "Information" "Indicates that the recommendation is informational"
* #warning "Warning" "Indicates that the recommendation is a warning"
* #critical "Critical" "Indicates that the recommendation is critical and the workflow should not be allowed to proceed. When implemented, an alternative pathway should be provided, and care should be taken to ensure that the user experience is not disruptive."