Extension: CPGCopyright
Id: cpg-copyright
Title: "CPG Copyright"
Description: "A copyright statement relating to the artifact and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the artifact."
* insert DefinitionMetadata(cpg-copyright, StructureDefinition)
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..1
  * ^short = "Use and/or publishing restrictions"
  * ^definition = "A copyright statement relating to the artifact and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the artifact."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-copyright" (exactly)
* value[x] only markdown