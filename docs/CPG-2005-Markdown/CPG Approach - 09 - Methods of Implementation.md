1. Methods of Implementation
*   As a “Spec”
*   Translation
*   Native Execution

With these computable artifacts, there are three (3) methods of implementation that broadly describe different approaches to moving from the computable representation (L3) of guideline content to the executable representation (L4):



<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/CPG-Approach0.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/methods-of-implementation.png "image_tooltip")


_Methods of Implementation_

Note that there are numerous factors that must be considered as part of the local implementation of guideline content. The intent of the L3 artifacts described in this implementation guide is to ensure that these factors can be appropriately considered and addressed as part of implementation while still providing useful content that can accelerate the process.


## Manual

Manual implementation involves development of clinical guideline functionality using the computable (L3) content as a set of rigorously specified requirements for the implementation. In the absence of computable (L3) content, this is the only method.


## Automatic

Automatic implementation involves programmatic translation of the L3 content into an appropriate L4 format. For example, a CQL query may be translated into an equivalent SQL query for execution, or a PlanDefinition may be transformed into a production rule. This approach involves potentially significant effort to build the appropriate tooling but can pay dividends at scale once the tooling is in place.


## Native

Native implementation involves direct execution of L3 content. For example, a CQL query may be run directly on a native CQL engine. As with the automatic approach, this approach may involve significant initial tooling effort but can dramatically reduce implementation time thereafter. In addition, there are open source reference implementations that support the use of the FHIR Clinical Reasoning module resources. In particular:



*   CQL Engine - A java-based native engine for Clinical Quality Language
*   HAPI FHIR - A java-based reference implementation of a FHIR Server and Client
*   CQF Ruler - A java-based plug-in for the HAPI FHIR server that enables Clinical Reasoning use cases
