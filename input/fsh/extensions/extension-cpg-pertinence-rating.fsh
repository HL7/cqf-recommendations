Extension: CPGPertinenceRating
Id: cpg-pertinenceRating
Title: "CPG Pertinence Rating Extension"
Description: "The weight given to a fact (such as a sign, symptom, or lab value) for inferring a higher-level clinical finding, such as a condition or physiological state, on a scale from 0 (no weight) to 10 (greatest weight). May be used alone, or alongside the cpg-caseFeaturePertinence extension, in which case it establishes the weight of that pertinence relationship. Applies to instance resources (requests and events), and to references to pertinent information (cpg-pertinent and cpg-pertinentTo), not to definitional resources."
* insert StructureDefinitionMetadata(cpg-pertinenceRating)
* insert ExtensionContext(Resource)
* insert ExtensionContext(Reference)
* . ^comment = "The range of values may be extended to allow negative values in a future version."
* value[x] only integer
* valueInteger ^minValueInteger = 0
* valueInteger ^maxValueInteger = 10
