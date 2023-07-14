Extension: CPGEnrolledIn
Id: cpg-enrolledIn
Title: "CPG Enrolled In"
Description: "Tracks the episode of care for a particular patient enrolled in a particular pathway."
* insert DefinitionMetadata(cpg-enrolledIn, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"
* . 0..*
  * ^short = "Which pathway"
  * ^definition = "Tracks the episode of care for a particular patient enrolled in a particular pathway."
  * ^comment = "The enrollment may be automatic, prompted, or manual."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrolledIn" (exactly)
* value[x] only canonical