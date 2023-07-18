Profile: CPGExecutableValueSet
Parent: $cpg-shareablevalueset
Id: cpg-executablevalueset
Title: "CPG Executable Value Set"
Description: "Defines an executable value set as one that SHALL have an expansion included, as well as a usage warning indicating the expansion is a point-in-time snapshot and must be maintained over time for production usage."
* insert DefinitionMetadata(cpg-executablevalueset, StructureDefinition)
* extension contains $cpg-usageWarning named usageWarning 1..1 MS
* extension[usageWarning]
  * value[x] 1..1 MS
  * value[x] only string
  * value[x] = "This value set contains a point-in-time expansion enumerating the codes that meet the value set intent. As new versions of the code systems used by the value set are released, the contents of this expansion will need to be updated to incorporate newly defined codes that meet the value set intent. Before, and periodically during production use, the value set expansion contents SHOULD be updated. The value set expansion specifies the timestamp when the expansion was produced, SHOULD contain the parameters used for the expansion, and SHALL contain the codes that are obtained by evaluating the value set definition. If this is ONLY an executable value set, a distributable definition of the value set must be obtained to compute the updated expansion." (exactly)
* expansion 1..1 MS
* expansion
  * parameter MS
  * contains MS

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGExecutableValueSet
// Target: "http://hl7.org/v3"

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGExecutableValueSet
// Target: "http://hl7.org/fhir/workflow"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGExecutableValueSet
// Target: "http://hl7.org/fhir/fivews"

// Mapping: objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGExecutableValueSet
// Target: "http://hl7.org/fhir/object-implementation"