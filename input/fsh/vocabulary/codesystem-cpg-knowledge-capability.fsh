CodeSystem: CPG_Knowledge_Capability
Id: cpg-knowledge-capability
Title: "CPG Knowledge Capability Codes"
Description: "A capability afforded by a knowledge artifact."
* insert CodeSystemMetadata(cpg-knowledge-capability, codeSystem)
* ^date = "2019-05-08"
* #shareable "Shareable" "The artifact provides essential information necessary to ensure shareability of the content as a FHIR resource."
* #computable "Computable" "The artifact provides at least machine-readable capability (i.e. it does not _only_ have narrative or unstructured elements). This capability can also be characterized as the artifact provides design-time capability, for example, an artifact is computable if it contains semantically verified CQL logic."
* #publishable "Publishable" "The artifact provides information necessary to provide content management capability, including dependency management, artifact lifecycle, and publishing and repository metadata."
* #executable "Executable" "The artifact is guaranteed to have the elements required to support execution of at least one run-time operation appropriate for the type of artifact. This capability can also be characterized as the artifact provides run-time capability, for example, an artifact is executable if it contains compiled ELM logic."