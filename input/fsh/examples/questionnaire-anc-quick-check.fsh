Instance: anc-quick-check
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - ANC Quick Check"
* insert QuestionnaireMetadata(anc-quick-check)
* description = "Example of a Questionnaire for an ANC Quick Check"
* name = "ANCQuickCheck"
* subjectType = #Patient
* item
  * extension[+]
    * url = Canonical(cpg-answerValueSetSource)
    * valueCanonical = Canonical(anc-reason-for-visit-vs)
  * extension[+]
    * url = Canonical(cpg-itemImage)
    * valueAttachment.url = $anc-reason-for-visit-image
  * linkId = "reason-for-visit"
  * text = "Why did you come?"
  * type = #choice
  * answerOption[+]
    * extension
      * url = Canonical(cpg-responseImage)
      * valueAttachment.url = $anc-reason-for-visit-routine-image
    * valueString = "For a scheduled (routine) visit"
  * answerOption[+]
    * extension
      * url = Canonical(cpg-responseImage)
      * valueAttachment.url = $anc-reason-for-visit-specific-complaint-image
    * valueString = "For specific complaints about you or your baby"
  * answerOption[+]
    * extension
      * url = Canonical(cpg-responseImage)
      * valueAttachment.url = $anc-reason-for-visit-first-image
    * valueString = "First visit"
  * answerOption[+]
    * extension
      * url = Canonical(cpg-responseImage)
      * valueAttachment.url = $anc-reason-for-visit-follow-up-image
    * valueString = "Follow-up visit"
  * answerOption[+]
    * extension
      * url = Canonical(cpg-responseImage)
      * valueAttachment.url = $anc-reason-for-visit-include-family-member-image
    * valueString = "Do you want to include your companion or other family member (parent if adolescent) in the examination and discussion?"