Extension: CPGEnrolledIn
Id: cpg-enrolledIn
Title: "CPG Enrolled In Extension"
Description: "Tracks the episode of care for a particular patient enrolled in a particular pathway."
* insert StructureDefinitionMetadata(cpg-enrolledIn)
* insert ExtensionContext(EpisodeOfCare)
* . ^comment = "The enrollment may be automatic, prompted, or manual."
* value[x] only canonical