Profile: CPGExecutableValueSet
Parent: $cpg-shareablevalueset
Id: cpg-executablevalueset
Title: "CPG Executable Value Set"
Description: "Defines an executable value set as one that SHALL have an expansion included, as well as a usage warning indicating the expansion is a point-in-time snapshot and must be maintained over time for production usage."
* insert StructureDefinitionMetadata(cpg-executablevalueset)
* extension contains $cpg-usageWarning named usageWarning 1..1 MS
* extension[usageWarning]
  * value[x] only string
  * valueString 1..1 MS
  * valueString = "This value set contains a point-in-time expansion enumerating the codes that meet the value set intent. As new versions of the code systems used by the value set are released, the contents of this expansion will need to be updated to incorporate newly defined codes that meet the value set intent. Before, and periodically during production use, the value set expansion contents SHOULD be updated. The value set expansion specifies the timestamp when the expansion was produced, SHOULD contain the parameters used for the expansion, and SHALL contain the codes that are obtained by evaluating the value set definition. If this is ONLY an executable value set, a distributable definition of the value set must be obtained to compute the updated expansion." (exactly)
* expansion 1..1 MS
* expansion
  * parameter MS
  * contains MS