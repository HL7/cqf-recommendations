---
layout: default
title: Terminology
---

# Using Terminology

Terminologies are a critical aspect of supporting interoperable computable content. This implementation guide defines profiles for the CodeSystem and ValueSet resources to identify key elements that must be supported.

## Code Systems

Standard and established code systems should be used whenever possible. Only in the case that existing code systems do not provide the necessary concepts should new code systems be defined. If required, code systems defined by content conforming to this IG SHALL use the [cpg-codesystem](StructureDefinition-cpg-codesystem.html) profile.

## Value Sets

This implementation guide defines three value set profiles, a base cpg-valueset profile that establishes key elements that must be supported for any value set content, and two derived profiles, cpg-computablevalueset and cpg-cachedvalueset, that define key elements that should be used to support computable value set content. Value sets defined by content conforming to this IG SHALL use at least the [cpg-valueset](StructureDefinition-cpg-valueset.html) profile, and may also use:

1. **Computable**: Value sets SHOULD be defined using computable (or _intensional_) definitions if supported by the code systems involved. Value sets defined in this way SHALL conform to the [cpg-computablevalueset](StructureDefinition-cpg-computablevalueset.html) profile.
2. **Cached**: For value sets that are defined computably, content conforming to this IG SHALL include a _cached_ (or _extensional_) version of the value set that lists the codes in the `compose` element of the value set, to ensure the content of the value set can be processed by systems that cannot process the computable version. Value sets defined in this way SHALL conform to the [cpg-cachedvalueset](StructureDefinition-cpg-cachedvalueset.html) profile.

