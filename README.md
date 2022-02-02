# cqf-recommendations
Representation of Clinical Practice Guideline Recommendations in FHIR (FHIR R4 (4.0.1))

This project provides the source for the HL7 Representation of Clinical Practice Guideline Recommendations in FHIR Implementation Guide

Commits to this repository will automatically trigger a new build of the IG, which will then be published to the following location:

[http://build.fhir.org/ig/HL7/cqf-recommendations/](http://build.fhir.org/ig/HL7/cqf-recommendations/)

Build log is available here:

[http://build.fhir.org.s3-website-us-east-1.amazonaws.com/logs/HL7/cqf-recommendations](http://build.fhir.org.s3-website-us-east-1.amazonaws.com/logs/HL7/cqf-recommendations)

Debugging information is available here:

[http://build.fhir.org/ig/HL7/cqf-recommendations/debug.tgz](http://build.fhir.org/ig/HL7/cqf-recommendations/debug.tgz)

## Local Build

The HL7 IG Publisher is committed to this repository to make building as easy as possible. To build locally, clone the repository and issue the following command in the root:

    java -Xmx16G -jar publisher.jar -ig ig.json

The latest version of the IG publisher is available here:

[https://github.com/FHIR/latest-ig-publisher/raw/master/org.hl7.fhir.publisher.jar](https://github.com/FHIR/latest-ig-publisher/raw/master/org.hl7.fhir.publisher.jar)
