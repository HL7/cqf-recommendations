This implementation guide uses the Library resource to represent libraries of computable content (such as Clinical Quality Language libraries). See the [Using CQL With FHIR](http://hl7.org/fhir/uv/cql) implementation guide for conformance expectations and guidance on the use of CQL with FHIR. This implementation guide does not take a dependency on the Using CQL With FHIR IG, because content is not required to use CQL. However, content that does use CQL is required to conform to that IG (see [Use of CQL](documentation-conformance.html#use-of-cql)):
{:.modified-content}

* {:.modified-content} §lib-1?^^logic:Content that uses CQL **SHALL** use CQLLibrary (for Computable content), ELMLibrary (for Executable content), and CQLModule (to provide structured representation of dependencies and data requirements)§
* {:.modified-content} §lib-2?^^logic:Content that uses CQL **SHALL** use CQLModelInfo for model information§
