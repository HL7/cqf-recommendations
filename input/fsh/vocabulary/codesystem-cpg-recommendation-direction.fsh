CodeSystem: CPGRecommendationDirectionCS
Id: cpg-recommendation-direction-cs
Title: "CPG Recommendation Direction Code System"
Description: "The direction of a recommendation, either for or against a particular action, taking into account the balance between desirable and undersirable outcomes; the confidence in the magnitude of estimates of effect; the confidence in values and preferences and their variability; and resource use."
* insert CodeSystemMetadata(cpg-recommendation-direction)
* ^extension[+].url = $codesystem-sourceReference
* ^extension[=].valueUri = "https://www.ncbi.nlm.nih.gov/pubmed/23570745"
* ^extension[+].url = $codesystem-sourceReference
* ^extension[=].valueUri = "https://gdt.gradepro.org/app/handbook/handbook.html#h.1yd7iwhn8pxp"
* #for "For" "The recommendation is for a particular action, taking into account the balance between desirable and undersirable outcomes; the confidence in the magnitude of estimates of effect; the confidence in values and preferences and their variability; and resource use."
* #against "Against" "The recommendation is against a particular action, taking into account the balance between desirable and undersirable outcomes; the confidence in the magnitude of estimates of effect; the confidence in values and preferences and their variability; and resource use."