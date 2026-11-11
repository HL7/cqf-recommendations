<div id="cpg-common-patient-summary-usage"></div>

- Invoke the operation on a Patient instance. It does not declare system-level or Patient-type-level invocation, and it declares no input parameters beyond the patient selected by the request URL.
- Expect one returned Bundle representing the current summary document. Agree the applicable document convention with the service and validate the document structure and profile it claims; the return parameter itself is typed as Bundle without a specific target profile.
- Check the document's patient identity, authorship, dates, source information, and clinical coverage before using it as evaluation data. A summary can omit information needed by a particular recommendation.

For guideline-specific organization of patient information, see [case features](approach-model.html#case). For execution context and data acquisition, see [integration mechanisms](approach-implementation.html#integration-mechanisms).
