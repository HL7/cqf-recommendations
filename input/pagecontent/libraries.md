This implementation guide uses the Library resource to represent libraries of computable content (such as Clinical Quality Language libraries). See the [Using CQL With FHIR](http://build.fhir.org/ig/HL7/cql-ig) for conformance expectations and guidance on the use of CQL with FHIR. Computable content using CQL SHALL conform to the profiles defined in the Using CQL With FHIR IG:

* CQL Library - SHALL use CQLLibrary (for Computable content), ELMLibrary (for Executable content), and CQLModule (to provide structured representation of dependencies and data requirements)
* CQL ModelInfo - SHALL use CQLModelInfo
