ValueSet: OpioidsWithAmbulatoryAbusePotential
Id: opioids-with-ambulatory-abuse-potential
Title: "Opioids with Ambulatory Abuse Potential"
Description: "ValueSet containing an example subset of opioid medication formulations used in ambulatory settings that have the potential for misuse or abuse. Includes opioid drugs not restricted to surgical use that can be used in ambulatory setting. Excludes formulations with dose form Topical Cream(RXCUI 316982) or Topical Solution(RXCUI 316986) and ingredients available in surgery. NOTE: This is a deliberately reduced value set for example purposes."
* insert ExampleValueSetMetadata(opioids-with-ambulatory-abuse-potential)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-sourceReference"
* ^extension[=].valueUri = "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3128404/"
* ^extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-usageWarning"
* ^extension[=].valueString = "This value set contains a point-in-time expansion enumerating the codes that meet the value set intent. As new versions of the code systems used by the value set are released, the contents of this expansion will need to be updated to incorporate newly defined codes that meet the value set intent. Before, and periodically during production use, the value set expansion contents SHOULD be updated. The value set expansion specifies the timestamp when the expansion was produced, SHOULD contain the parameters used for the expansion, and SHALL contain the codes that are obtained by evaluating the value set definition. If this is ONLY an executable value set, a distributable definition of the value set must be obtained to compute the updated expansion."
* ^extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-relatedArtifact"
* ^extension[=].valueRelatedArtifact.type = #citation
* ^extension[=].valueRelatedArtifact.citation = "Nelson SJ, Zeng K, Kilbourne J, Powell T, Moore R. Normalized names for clinical drugs: RxNorm at 6 years.<br/>J Am Med Inform Assoc. 2011 Jul-Aug;18(4)441-8. doi: 10.1136/amiajnl-2011-000116.<br/>Epub 2011 Apr 21. PubMed PMID: 21515544; PubMed Central PMCID: PMC3128404.<br/>[Full text](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3128404/)"
* ^useContext[0].code = $usage-context-type#focus "Clinical Focus"
* ^useContext[=].valueCodeableConcept = $sct#182888003 "Medication requested (situation)"
* ^useContext[+].code = $usage-context-type#focus "Clinical Focus"
* ^useContext[=].valueCodeableConcept = $sct#82423001 "Chronic pain (finding)"
* ^useContext[+].code = $usage-context-type#focus "Clinical Focus"
* ^useContext[=].valueCodeableConcept = $sct#16076005 "Prescription (procedure)"
* ^purpose = "Used to determine if prescription is for opioid medication with ambulatory abuse potential for all recommendations."
* ^copyright = "© CDC 2016+.<br/>This product uses publicly available data courtesy of the U.S. National Library of Medicine (NLM), National Institutes of Health, Department of Health and Human Services; NLM is not responsible for the product and does not endorse or recommend this or any other product."
* ^expansion.timestamp = "2020-03-26T17:39:09-06:00"
* ^expansion.contains[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #564334
* ^expansion.contains[=].display = "Alfentanil 0.5 MG/ML [Alfenta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #576376
* ^expansion.contains[=].display = "Buprenorphine 8 MG [Subutex]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #566435
* ^expansion.contains[=].display = "Buprenorphine 0.3 MG/ML [Buprenex]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1010601
* ^expansion.contains[=].display = "Buprenorphine 2 MG / Naloxone 0.5 MG [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1010605
* ^expansion.contains[=].display = "Buprenorphine 8 MG / Naloxone 2 MG [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1307057
* ^expansion.contains[=].display = "Buprenorphine 4 MG / Naloxone 1 MG [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1307062
* ^expansion.contains[=].display = "Buprenorphine 12 MG / Naloxone 3 MG [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904872
* ^expansion.contains[=].display = "Buprenorphine 0.01 MG/HR [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904877
* ^expansion.contains[=].display = "Buprenorphine 0.02 MG/HR [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904881
* ^expansion.contains[=].display = "Buprenorphine 0.005 MG/HR [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1432970
* ^expansion.contains[=].display = "Buprenorphine 0.015 MG/HR [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542998
* ^expansion.contains[=].display = "Buprenorphine 0.0075 MG/HR [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1864413
* ^expansion.contains[=].display = "Buprenorphine 0.7 MG / Naloxone 0.18 MG [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431078
* ^expansion.contains[=].display = "Buprenorphine 1.4 MG / Naloxone 0.36 MG [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431103
* ^expansion.contains[=].display = "Buprenorphine 5.7 MG / Naloxone 1.4 MG [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597569
* ^expansion.contains[=].display = "Buprenorphine 11.4 MG / Naloxone 2.9 MG [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597574
* ^expansion.contains[=].display = "Buprenorphine 8.6 MG / Naloxone 2.1 MG [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1666384
* ^expansion.contains[=].display = "Buprenorphine 2.9 MG / Naloxone 0.71 MG [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1488636
* ^expansion.contains[=].display = "Buprenorphine hydrochloride 1.3 MG/ML [Animalgesics]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542392
* ^expansion.contains[=].display = "Buprenorphine 2.1 MG / Naloxone 0.3 MG [Bunavail]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1544852
* ^expansion.contains[=].display = "Buprenorphine 4.2 MG / Naloxone 0.7 MG [Bunavail]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1544855
* ^expansion.contains[=].display = "Buprenorphine 6.3 MG / Naloxone 1 MG [Bunavail]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1594652
* ^expansion.contains[=].display = "Buprenorphine 1.8 MG/ML [Simbadol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716059
* ^expansion.contains[=].display = "Buprenorphine 0.15 MG [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716066
* ^expansion.contains[=].display = "Buprenorphine 0.3 MG [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716070
* ^expansion.contains[=].display = "Buprenorphine 0.45 MG [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716074
* ^expansion.contains[=].display = "Buprenorphine 0.6 MG [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716078
* ^expansion.contains[=].display = "Buprenorphine 0.075 MG [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716082
* ^expansion.contains[=].display = "Buprenorphine 0.75 MG [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716087
* ^expansion.contains[=].display = "Buprenorphine 0.9 MG [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1797652
* ^expansion.contains[=].display = "Buprenorphine 74.2 MG [Probuphine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2106364
* ^expansion.contains[=].display = "Buprenorphine 16 MG / Naloxone 4 MG [Cassipa]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1996186
* ^expansion.contains[=].display = "Buprenorphine 200 MG/ML [Sublocade]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1302740
* ^expansion.contains[=].display = "Butorphanol 10 MG/ML [Dolorex Solution]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1489988
* ^expansion.contains[=].display = "Butorphanol 10 MG/ML [Torbugesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1809203
* ^expansion.contains[=].display = "Butorphanol Tartrate 2 MG/ML [Torbugesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1310924
* ^expansion.contains[=].display = "Butorphanol 10 MG/ML [Butorphic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1947135
* ^expansion.contains[=].display = "Butorphanol 10 MG/ML [Torphaject]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994276
* ^expansion.contains[=].display = "Aspirin 325 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG [Fiorinal with Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1433801
* ^expansion.contains[=].display = "Acetaminophen 300 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG [Fioricet with Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993836
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Codeine Phosphate 30 MG [Tylenol with Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993891
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Codeine Phosphate 60 MG [Tylenol with Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993765
* ^expansion.contains[=].display = "Acetaminophen 24 MG/ML / Codeine Phosphate 2.4 MG/ML [Capital and Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994238
* ^expansion.contains[=].display = "Aspirin 325 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG [Ascomp]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234973
* ^expansion.contains[=].display = "Aspirin 356.4 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG [Synalgos-DC]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597136
* ^expansion.contains[=].display = "Acetaminophen 320.5 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG [Trezix]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234987
* ^expansion.contains[=].display = "Acetaminophen 356.4 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG [Trezix]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2105925
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG [Dvorah]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1995532
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG [Panlor Reformulated Jan 2018]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053649
* ^expansion.contains[=].display = "Fentanyl 0.1 MG [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053653
* ^expansion.contains[=].display = "Fentanyl 0.2 MG [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053656
* ^expansion.contains[=].display = "Fentanyl 0.3 MG [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053659
* ^expansion.contains[=].display = "Fentanyl 0.4 MG [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053662
* ^expansion.contains[=].display = "Fentanyl 0.6 MG [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053665
* ^expansion.contains[=].display = "Fentanyl 0.8 MG [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1115548
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/ACTUAT [Lazanda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1115578
* ^expansion.contains[=].display = "Fentanyl 0.4 MG/ACTUAT [Lazanda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729321
* ^expansion.contains[=].display = "Fentanyl 0.3 MG/ACTUAT [Lazanda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574418
* ^expansion.contains[=].display = "Fentanyl 0.025 MG/HR [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574419
* ^expansion.contains[=].display = "Fentanyl 0.05 MG/HR [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574420
* ^expansion.contains[=].display = "Fentanyl 0.075 MG/HR [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574656
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/HR [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #583489
* ^expansion.contains[=].display = "Fentanyl 0.012 MG/HR [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574353
* ^expansion.contains[=].display = "Fentanyl 0.2 MG [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574354
* ^expansion.contains[=].display = "Fentanyl 0.6 MG [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574355
* ^expansion.contains[=].display = "Fentanyl 0.8 MG [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574356
* ^expansion.contains[=].display = "Fentanyl 1.2 MG [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574357
* ^expansion.contains[=].display = "Fentanyl 1.6 MG [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574688
* ^expansion.contains[=].display = "Fentanyl 0.4 MG [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #574121
* ^expansion.contains[=].display = "Fentanyl 0.05 MG/ML [Sublimaze]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668620
* ^expansion.contains[=].display = "Fentanyl 0.1 MG [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668623
* ^expansion.contains[=].display = "Fentanyl 0.2 MG [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668625
* ^expansion.contains[=].display = "Fentanyl 0.4 MG [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668627
* ^expansion.contains[=].display = "Fentanyl 0.6 MG [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668629
* ^expansion.contains[=].display = "Fentanyl 0.8 MG [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1992290
* ^expansion.contains[=].display = "Fentanyl 0.04 MG/ACTUAT [Ionsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237052
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/ACTUAT [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237058
* ^expansion.contains[=].display = "Fentanyl 0.2 MG/ACTUAT [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237061
* ^expansion.contains[=].display = "Fentanyl 0.4 MG/ACTUAT [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237065
* ^expansion.contains[=].display = "Fentanyl 0.6 MG/ACTUAT [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237069
* ^expansion.contains[=].display = "Fentanyl 0.8 MG/ACTUAT [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857103
* ^expansion.contains[=].display = "Acetaminophen 33.3 MG/ML / Hydrocodone Bitartrate 0.5 MG/ML [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857112
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 2.5 MG [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857119
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 7.5 MG [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442444
* ^expansion.contains[=].display = "Acetaminophen 20 MG/ML / Hydrocodone Bitartrate 0.667 MG/ML [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1495471
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1495473
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 5 MG [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1495475
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 7.5 MG [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1310197
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 5 MG [Vicodin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1310208
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 7.5 MG [Vicodin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1310268
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 10 MG [Vicodin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857000
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG [Norco]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857003
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 5 MG [Norco]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857006
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 7.5 MG [Norco]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857135
* ^expansion.contains[=].display = "Acetaminophen 400 MG / Hydrocodone Bitartrate 7.5 MG [Zydone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858837
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 7.5 MG / Ibuprofen 200 MG [Vicoprofen]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1492670
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG [Lorcet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1492672
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 5 MG [Lorcet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1492674
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 7.5 MG [Lorcet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1147393
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG [Xodol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856941
* ^expansion.contains[=].display = "Acetaminophen 21.7 MG/ML / Hydrocodone Bitartrate 0.5 MG/ML [Hycet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856982
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 10 MG [Xodol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856989
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 5 MG [Xodol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856994
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 7.5 MG [Xodol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858771
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 2.5 MG / Ibuprofen 200 MG [Reprexain]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858783
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 5 MG / Ibuprofen 200 MG [Reprexain]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859330
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG / Ibuprofen 200 MG [Reprexain]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856945
* ^expansion.contains[=].display = "Acetaminophen 21.7 MG/ML / Hydrocodone Bitartrate 0.67 MG/ML [Zamicet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858779
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 5 MG / Ibuprofen 200 MG [Ibudone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859316
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG / Ibuprofen 200 MG [Ibudone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442524
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442531
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 15 MG [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442535
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 20 MG [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442539
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 30 MG [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442543
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 40 MG [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442547
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 50 MG [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542977
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 2.5 MG [Verdrocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542984
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG / Ibuprofen 200 MG [Xylon]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860207
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 100 MG [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860211
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 120 MG [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860214
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 30 MG [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860217
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 20 MG [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860220
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 40 MG [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860224
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 60 MG [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860228
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 80 MG [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897654
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 1 MG/ML [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897664
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 10 MG/ML [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897697
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 2 MG [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897703
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 4 MG [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897711
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 8 MG [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897746
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 2 MG/ML [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897754
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 4 MG/ML [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2277369
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 0.2 MG/ML [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902731
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 12 MG [Exalgo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902737
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 16 MG [Exalgo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902742
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 8 MG [Exalgo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1306899
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 32 MG [Exalgo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861515
* ^expansion.contains[=].display = "Meperidine Hydrochloride 100 MG [Demerol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861518
* ^expansion.contains[=].display = "Meperidine Hydrochloride 100 MG/ML [Demerol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861521
* ^expansion.contains[=].display = "Meperidine Hydrochloride 50 MG/ML [Demerol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861524
* ^expansion.contains[=].display = "Meperidine Hydrochloride 50 MG [Demerol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861530
* ^expansion.contains[=].display = "Meperidine Hydrochloride 25 MG/ML [Demerol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861535
* ^expansion.contains[=].display = "Meperidine Hydrochloride 75 MG/ML [Demerol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864736
* ^expansion.contains[=].display = "Methadone Hydrochloride 5 MG [Methadose]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1804028
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG/ML [Methadose]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864711
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG [Methadose]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1869551
* ^expansion.contains[=].display = "Methadone Hydrochloride 40 MG [Methadose]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864707
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG [Dolophine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864719
* ^expansion.contains[=].display = "Methadone Hydrochloride 5 MG [Dolophine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1990741
* ^expansion.contains[=].display = "Methadone Hydrochloride 40 MG [Diskets]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2055304
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG/ML [Mitigo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2055310
* ^expansion.contains[=].display = "Morphine Sulfate 25 MG/ML [Mitigo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892471
* ^expansion.contains[=].display = "Morphine Sulfate 0.5 MG/ML [Duramorph]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892488
* ^expansion.contains[=].display = "Morphine Sulfate 1 MG/ML [Duramorph]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892495
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892532
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG/ML [Infumorph]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892555
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892559
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892573
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892597
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892644
* ^expansion.contains[=].display = "Morphine Sulfate 200 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892647
* ^expansion.contains[=].display = "Morphine Sulfate 200 MG [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892651
* ^expansion.contains[=].display = "Morphine Sulfate 25 MG/ML [Infumorph]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892657
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892659
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894802
* ^expansion.contains[=].display = "Morphine Sulfate 50 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894804
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894812
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894815
* ^expansion.contains[=].display = "Morphine Sulfate 80 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1303737
* ^expansion.contains[=].display = "Morphine Sulfate 40 MG [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892298
* ^expansion.contains[=].display = "Morphine Sulfate 120 MG [Avinza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892343
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG [Avinza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892350
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG [Avinza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892356
* ^expansion.contains[=].display = "Morphine Sulfate 90 MG [Avinza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859960
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG / Naltrexone hydrochloride 0.8 MG [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859966
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG / Naltrexone hydrochloride 1.2 MG [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859971
* ^expansion.contains[=].display = "Morphine Sulfate 50 MG / Naltrexone hydrochloride 2 MG [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863542
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG / Naltrexone hydrochloride 4 MG [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863549
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG / Naltrexone hydrochloride 2.4 MG [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863554
* ^expansion.contains[=].display = "Morphine Sulfate 80 MG / Naltrexone hydrochloride 3.2 MG [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892366
* ^expansion.contains[=].display = "Morphine Sulfate 0.5 MG/ML [Astramorph]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892478
* ^expansion.contains[=].display = "Morphine Sulfate 1 MG/ML [Astramorph]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1745877
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG [Morphabond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1745885
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG [Morphabond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1745888
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG [Morphabond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1745891
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG [Morphabond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871436
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG [Arymo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871442
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG [Arymo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871445
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG [Arymo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944531
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 15 MG [Roxybond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944539
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 30 MG [Roxybond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944542
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG [Roxybond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049215
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 10 MG [Endocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049222
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG [Endocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049226
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG [Endocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1487287
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 2.5 MG [Endocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049503
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 10 MG [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049544
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 15 MG [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049564
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 20 MG [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049575
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 30 MG [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049585
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 40 MG [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049594
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 60 MG [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049600
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 80 MG [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1050408
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 20 MG/ML [Oxyfast]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049581
* ^expansion.contains[=].display = "Acetaminophen 65 MG/ML / Oxycodone Hydrochloride 1 MG/ML [Roxicet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049612
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 15 MG [Roxicodone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049619
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 30 MG [Roxicodone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049622
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG [Roxicodone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1050489
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG [Roxicet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049624
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 10 MG [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049636
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 2.5 MG [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049639
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049641
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049646
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Oxycodone Hydrochloride 7.5 MG [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049649
* ^expansion.contains[=].display = "Acetaminophen 650 MG / Oxycodone Hydrochloride 10 MG [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049654
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Oxycodone Hydrochloride 10 MG [Xolox]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #848770
* ^expansion.contains[=].display = "Aspirin 325 MG / Oxycodone Hydrochloride 4.84 MG [Percodan Reformulated May 2009]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #848927
* ^expansion.contains[=].display = "Aspirin 325 MG / Oxycodone Hydrochloride 4.84 MG [Endodan Reformulated May 2009]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1491785
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG [Xartemis]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1537112
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 5 MG [Primlev]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1537119
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 10 MG [Primlev]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1537121
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 7.5 MG [Primlev]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1546085
* ^expansion.contains[=].display = "Naloxone Hydrochloride 5 MG / Oxycodone Hydrochloride 10 MG [Targiniq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2268080
* ^expansion.contains[=].display = "Naloxone Hydrochloride 10 MG / Oxycodone Hydrochloride 20 MG [Targiniq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2268084
* ^expansion.contains[=].display = "Naloxone Hydrochloride 20 MG / Oxycodone Hydrochloride 40 MG [Targiniq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1664444
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG [Oxaydo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1664633
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 7.5 MG [Oxaydo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1790529
* ^expansion.contains[=].display = "Oxycodone 9 MG [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791559
* ^expansion.contains[=].display = "Oxycodone 13.5 MG [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791568
* ^expansion.contains[=].display = "Oxycodone 18 MG [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791575
* ^expansion.contains[=].display = "Oxycodone 27 MG [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791581
* ^expansion.contains[=].display = "Oxycodone 36 MG [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1806703
* ^expansion.contains[=].display = "Naltrexone hydrochloride 1.2 MG / Oxycodone Hydrochloride 10 MG [Troxyca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2045496
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 2.5 MG [Nalocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2279506
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 10 MG [Prolate]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2279511
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 5 MG [Prolate]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2279513
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 7.5 MG [Prolate]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977875
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 10 MG [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977895
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 15 MG [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977903
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 20 MG [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977910
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 30 MG [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977916
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 40 MG [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977924
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 5 MG [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977930
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 7.5 MG [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977936
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 1 MG/ML [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857235
* ^expansion.contains[=].display = "Pentazocine 30 MG/ML [Talwin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #827749
* ^expansion.contains[=].display = "propoxyphene napsylate 100 MG [Darvon-N]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729579
* ^expansion.contains[=].display = "remifentanil 1 MG [Ultiva]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729585
* ^expansion.contains[=].display = "remifentanil 2 MG [Ultiva]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729711
* ^expansion.contains[=].display = "remifentanil 5 MG [Ultiva]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2103194
* ^expansion.contains[=].display = "Sufentanil 0.03 MG [Dsuvia]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1149369
* ^expansion.contains[=].display = "tapentadol 150 MG [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1149372
* ^expansion.contains[=].display = "tapentadol 200 MG [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1149375
* ^expansion.contains[=].display = "tapentadol 250 MG [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #854138
* ^expansion.contains[=].display = "tapentadol 100 MG [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #854141
* ^expansion.contains[=].display = "tapentadol 50 MG [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #854143
* ^expansion.contains[=].display = "tapentadol 75 MG [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148480
* ^expansion.contains[=].display = "tramadol hydrochloride 100 MG [ConZip]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148486
* ^expansion.contains[=].display = "tramadol hydrochloride 200 MG [ConZip]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148490
* ^expansion.contains[=].display = "tramadol hydrochloride 300 MG [ConZip]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #835604
* ^expansion.contains[=].display = "tramadol hydrochloride 50 MG [Ultram]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836399
* ^expansion.contains[=].display = "tramadol hydrochloride 100 MG [Ultram]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836402
* ^expansion.contains[=].display = "tramadol hydrochloride 200 MG [Ultram]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836405
* ^expansion.contains[=].display = "tramadol hydrochloride 300 MG [Ultram]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836396
* ^expansion.contains[=].display = "Acetaminophen 325 MG / tramadol hydrochloride 37.5 MG [Ultracet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #831434
* ^expansion.contains[=].display = "tramadol hydrochloride 100 MG [Ryzolt]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #831439
* ^expansion.contains[=].display = "tramadol hydrochloride 200 MG [Ryzolt]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #831443
* ^expansion.contains[=].display = "tramadol hydrochloride 300 MG [Ryzolt]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2058257
* ^expansion.contains[=].display = "Buprenorphine 16 MG / Naloxone 4 MG Sublingual Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1864412
* ^expansion.contains[=].display = "Buprenorphine 0.7 MG / Naloxone 0.18 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #246474
* ^expansion.contains[=].display = "Buprenorphine 0.2 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250426
* ^expansion.contains[=].display = "Buprenorphine 0.4 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1010600
* ^expansion.contains[=].display = "Buprenorphine 2 MG / Naloxone 0.5 MG Sublingual Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1010604
* ^expansion.contains[=].display = "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #351264
* ^expansion.contains[=].display = "Buprenorphine 2 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #351265
* ^expansion.contains[=].display = "Buprenorphine 8 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #351266
* ^expansion.contains[=].display = "Buprenorphine 2 MG / Naloxone 0.5 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #351267
* ^expansion.contains[=].display = "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904870
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.01 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904876
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.02 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904880
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.005 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431076
* ^expansion.contains[=].display = "Buprenorphine 1.4 MG / Naloxone 0.36 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431102
* ^expansion.contains[=].display = "Buprenorphine 5.7 MG / Naloxone 1.4 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1432969
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.015 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542390
* ^expansion.contains[=].display = "Buprenorphine 2.1 MG / Naloxone 0.3 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542997
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.0075 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1544851
* ^expansion.contains[=].display = "Buprenorphine 4.2 MG / Naloxone 0.7 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1544854
* ^expansion.contains[=].display = "Buprenorphine 6.3 MG / Naloxone 1 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597568
* ^expansion.contains[=].display = "Buprenorphine 11.4 MG / Naloxone 2.9 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597573
* ^expansion.contains[=].display = "Buprenorphine 8.6 MG / Naloxone 2.1 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1666338
* ^expansion.contains[=].display = "Buprenorphine 2.9 MG / Naloxone 0.71 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716057
* ^expansion.contains[=].display = "Buprenorphine 0.15 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716065
* ^expansion.contains[=].display = "Buprenorphine 0.3 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716069
* ^expansion.contains[=].display = "Buprenorphine 0.45 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716073
* ^expansion.contains[=].display = "Buprenorphine 0.6 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716077
* ^expansion.contains[=].display = "Buprenorphine 0.075 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716081
* ^expansion.contains[=].display = "Buprenorphine 0.75 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716086
* ^expansion.contains[=].display = "Buprenorphine 0.9 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1797650
* ^expansion.contains[=].display = "Buprenorphine 74.2 MG Drug Implant"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1307056
* ^expansion.contains[=].display = "Buprenorphine 4 MG / Naloxone 1 MG Sublingual Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1307061
* ^expansion.contains[=].display = "Buprenorphine 12 MG / Naloxone 3 MG Sublingual Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #886634
* ^expansion.contains[=].display = "Butorphanol Tartrate 1 MG/ACTUAT Metered Dose Nasal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993755
* ^expansion.contains[=].display = "Acetaminophen 24 MG/ML / Codeine Phosphate 2.4 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993763
* ^expansion.contains[=].display = "Acetaminophen 24 MG/ML / Codeine Phosphate 2.4 MG/ML Oral Suspension"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993770
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Codeine Phosphate 15 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993781
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Codeine Phosphate 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993890
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Codeine Phosphate 60 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993943
* ^expansion.contains[=].display = "Acetaminophen 325 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994043
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 15 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994046
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994226
* ^expansion.contains[=].display = "Aspirin 325 MG / Carisoprodol 200 MG / Codeine Phosphate 16 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994237
* ^expansion.contains[=].display = "Aspirin 325 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #995447
* ^expansion.contains[=].display = "Codeine Phosphate 1.8 MG/ML / Pyrilamine Maleate 1.67 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996979
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 30 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996983
* ^expansion.contains[=].display = "Acetaminophen 650 MG / Codeine Phosphate 60 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996991
* ^expansion.contains[=].display = "Aspirin 325 MG / Codeine Phosphate 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996994
* ^expansion.contains[=].display = "Aspirin 325 MG / Codeine Phosphate 60 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997019
* ^expansion.contains[=].display = "Codeine Phosphate 1 MG/ML / Kaolin 300 MG/ML Oral Suspension"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997169
* ^expansion.contains[=].display = "Codeine Phosphate 15 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997280
* ^expansion.contains[=].display = "Codeine Phosphate 20 MG / Ibuprofen 300 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997285
* ^expansion.contains[=].display = "Codeine Phosphate 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997301
* ^expansion.contains[=].display = "Codeine Phosphate 60 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431286
* ^expansion.contains[=].display = "Acetaminophen 300 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1536459
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 30 MG Effervescent Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996734
* ^expansion.contains[=].display = "Codeine Phosphate 5 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996976
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 12.8 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996978
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 13.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996981
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 8 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996982
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 8 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996988
* ^expansion.contains[=].display = "Aspirin 300 MG / Codeine Phosphate 8 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997164
* ^expansion.contains[=].display = "Codeine Phosphate 12.5 MG / Ibuprofen 200 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997165
* ^expansion.contains[=].display = "Codeine Phosphate 12.8 MG / Ibuprofen 200 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997170
* ^expansion.contains[=].display = "Codeine sulfate 15 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997284
* ^expansion.contains[=].display = "Codeine Phosphate 3 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997287
* ^expansion.contains[=].display = "Codeine sulfate 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997296
* ^expansion.contains[=].display = "Codeine sulfate 60 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1536457
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Codeine Phosphate 8 MG Effervescent Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250879
* ^expansion.contains[=].display = "Dextromoramide 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250880
* ^expansion.contains[=].display = "Dextromoramide 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1596108
* ^expansion.contains[=].display = "Acetaminophen 320.5 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1812164
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234871
* ^expansion.contains[=].display = "Acetaminophen 356.4 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234872
* ^expansion.contains[=].display = "Aspirin 356.4 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234978
* ^expansion.contains[=].display = "Acetaminophen 712.8 MG / Caffeine 60 MG / dihydrocodeine bitartrate 32 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234999
* ^expansion.contains[=].display = "Acetaminophen 500 MG / dihydrocodeine bitartrate 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1235009
* ^expansion.contains[=].display = "Acetaminophen 500 MG / dihydrocodeine bitartrate 20 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1235011
* ^expansion.contains[=].display = "Acetaminophen 500 MG / dihydrocodeine bitartrate 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236179
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 120 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236182
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236184
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 40 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236188
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 60 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236190
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 90 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #104972
* ^expansion.contains[=].display = "Cyclizine 30 MG / dipipanone 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1666831
* ^expansion.contains[=].display = "80 ACTUAT Fentanyl 0.04 MG/ACTUAT Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1115573
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/ACTUAT Metered Dose Nasal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1115577
* ^expansion.contains[=].display = "Fentanyl 0.4 MG/ACTUAT Metered Dose Nasal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237050
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/ACTUAT Mucosal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237060
* ^expansion.contains[=].display = "Fentanyl 0.4 MG/ACTUAT Mucosal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053652
* ^expansion.contains[=].display = "Fentanyl 0.2 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053655
* ^expansion.contains[=].display = "Fentanyl 0.3 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053658
* ^expansion.contains[=].display = "Fentanyl 0.4 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #197696
* ^expansion.contains[=].display = "72 HR Fentanyl 0.075 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #245134
* ^expansion.contains[=].display = "72 HR Fentanyl 0.025 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #245135
* ^expansion.contains[=].display = "72 HR Fentanyl 0.05 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #245136
* ^expansion.contains[=].display = "72 HR Fentanyl 0.1 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #310295
* ^expansion.contains[=].display = "Fentanyl 0.2 MG Oral Lozenge"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #310296
* ^expansion.contains[=].display = "Fentanyl 0.3 MG Oral Lozenge"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #310297
* ^expansion.contains[=].display = "Fentanyl 0.4 MG Oral Lozenge"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668364
* ^expansion.contains[=].display = "Fentanyl 0.2 MG Buccal Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668365
* ^expansion.contains[=].display = "Fentanyl 0.4 MG Buccal Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #706898
* ^expansion.contains[=].display = "Fentanyl 0.3 MG Buccal Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858092
* ^expansion.contains[=].display = "Fentanyl 0.2 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858095
* ^expansion.contains[=].display = "Fentanyl 0.4 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053647
* ^expansion.contains[=].display = "Fentanyl 0.1 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053664
* ^expansion.contains[=].display = "Fentanyl 0.8 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #310293
* ^expansion.contains[=].display = "Fentanyl 1.2 MG Oral Lozenge"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #310294
* ^expansion.contains[=].display = "Fentanyl 1.6 MG Oral Lozenge"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668363
* ^expansion.contains[=].display = "Fentanyl 0.1 MG Buccal Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858087
* ^expansion.contains[=].display = "Fentanyl 1.2 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053661
* ^expansion.contains[=].display = "Fentanyl 0.6 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #313992
* ^expansion.contains[=].display = "Fentanyl 0.6 MG Oral Lozenge"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #313993
* ^expansion.contains[=].display = "Fentanyl 0.8 MG Oral Lozenge"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668366
* ^expansion.contains[=].display = "Fentanyl 0.6 MG Buccal Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668367
* ^expansion.contains[=].display = "Fentanyl 0.8 MG Buccal Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858098
* ^expansion.contains[=].display = "Fentanyl 0.6 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858101
* ^expansion.contains[=].display = "Fentanyl 0.8 MG Buccal Film"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #577057
* ^expansion.contains[=].display = "72 HR Fentanyl 0.012 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1603495
* ^expansion.contains[=].display = "72 HR Fentanyl 0.0375 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1603498
* ^expansion.contains[=].display = "72 HR Fentanyl 0.0625 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1603501
* ^expansion.contains[=].display = "72 HR Fentanyl 0.0875 MG/HR Transdermal System"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729320
* ^expansion.contains[=].display = "Fentanyl 0.3 MG/ACTUAT Metered Dose Nasal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237057
* ^expansion.contains[=].display = "Fentanyl 0.2 MG/ACTUAT Mucosal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237064
* ^expansion.contains[=].display = "Fentanyl 0.6 MG/ACTUAT Mucosal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237068
* ^expansion.contains[=].display = "Fentanyl 0.8 MG/ACTUAT Mucosal Spray"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250473
* ^expansion.contains[=].display = "Heroin 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #833036
* ^expansion.contains[=].display = "Acetaminophen 750 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856992
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857005
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857083
* ^expansion.contains[=].display = "Acetaminophen 650 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857118
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857134
* ^expansion.contains[=].display = "Acetaminophen 400 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858798
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 7.5 MG / Ibuprofen 200 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #860599
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1044427
* ^expansion.contains[=].display = "Acetaminophen 20 MG/ML / Hydrocodone Bitartrate 0.667 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856903
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856908
* ^expansion.contains[=].display = "Acetaminophen 660 MG / Hydrocodone Bitartrate 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856940
* ^expansion.contains[=].display = "Acetaminophen 21.7 MG/ML / Hydrocodone Bitartrate 0.5 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856944
* ^expansion.contains[=].display = "Acetaminophen 21.7 MG/ML / Hydrocodone Bitartrate 0.67 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856962
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 5 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856980
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856987
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856999
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857002
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857076
* ^expansion.contains[=].display = "Acetaminophen 33.3 MG/ML / Hydrocodone Bitartrate 0.333 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857099
* ^expansion.contains[=].display = "Acetaminophen 33.3 MG/ML / Hydrocodone Bitartrate 0.5 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857107
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857111
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 2.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857121
* ^expansion.contains[=].display = "Aspirin 500 MG / Hydrocodone Bitartrate 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857128
* ^expansion.contains[=].display = "Acetaminophen 400 MG / Hydrocodone Bitartrate 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857131
* ^expansion.contains[=].display = "Acetaminophen 400 MG / Hydrocodone Bitartrate 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857383
* ^expansion.contains[=].display = "Acetaminophen 650 MG / Hydrocodone Bitartrate 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857391
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 2.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857501
* ^expansion.contains[=].display = "Acetaminophen 556 MG / Hydrocodone Bitartrate 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858770
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 2.5 MG / Ibuprofen 200 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858778
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 5 MG / Ibuprofen 200 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859315
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG / Ibuprofen 200 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860491
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 10 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595730
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 20 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595740
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 30 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595746
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 40 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860493
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 15 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860495
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 20 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860497
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 30 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860499
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 40 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860501
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 50 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595752
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 60 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595758
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 80 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595764
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 100 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595770
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 120 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #898611
* ^expansion.contains[=].display = "12 HR Hydromorphone Hydrochloride 2 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #898614
* ^expansion.contains[=].display = "12 HR Hydromorphone Hydrochloride 4 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #898618
* ^expansion.contains[=].display = "12 HR Hydromorphone Hydrochloride 8 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897657
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 1 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897696
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 2 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897702
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 4 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897710
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 8 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897749
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 3 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897771
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 1 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #898004
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 1.3 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #898138
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 2.6 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #898139
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 3 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902729
* ^expansion.contains[=].display = "24 HR Hydromorphone Hydrochloride 12 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902736
* ^expansion.contains[=].display = "24 HR Hydromorphone Hydrochloride 16 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902741
* ^expansion.contains[=].display = "24 HR Hydromorphone Hydrochloride 8 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1306898
* ^expansion.contains[=].display = "24 HR Hydromorphone Hydrochloride 32 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #311297
* ^expansion.contains[=].display = "Levomethadyl 10 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2058845
* ^expansion.contains[=].display = "Levorphanol Tartrate 3 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #197873
* ^expansion.contains[=].display = "Levorphanol 2 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861455
* ^expansion.contains[=].display = "Meperidine Hydrochloride 100 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861467
* ^expansion.contains[=].display = "Meperidine Hydrochloride 50 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861479
* ^expansion.contains[=].display = "Meperidine Hydrochloride 10 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1655058
* ^expansion.contains[=].display = "Meperidine Hydrochloride 150 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1655060
* ^expansion.contains[=].display = "Meperidine Hydrochloride 75 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #106505
* ^expansion.contains[=].display = "Meptazinol 200 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864706
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864718
* ^expansion.contains[=].display = "Methadone Hydrochloride 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864761
* ^expansion.contains[=].display = "Methadone Hydrochloride 1 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864769
* ^expansion.contains[=].display = "Methadone Hydrochloride 2 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864984
* ^expansion.contains[=].display = "Methadone Hydrochloride 20 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #991147
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864978
* ^expansion.contains[=].display = "Methadone Hydrochloride 40 MG Tablet for Oral Suspension"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894942
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 45 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894970
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 75 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895248
* ^expansion.contains[=].display = "Morphine Sulfate 75 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1872234
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 100 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863845
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 100 MG / Naltrexone hydrochloride 4 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863848
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 20 MG / Naltrexone hydrochloride 0.8 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863850
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 30 MG / Naltrexone hydrochloride 1.2 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863852
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 50 MG / Naltrexone hydrochloride 2 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863854
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 60 MG / Naltrexone hydrochloride 2.4 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863856
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 80 MG / Naltrexone hydrochloride 3.2 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891874
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891883
* ^expansion.contains[=].display = "12 HR Morphine Sulfate 100 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891885
* ^expansion.contains[=].display = "12 HR Morphine Sulfate 30 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891888
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891890
* ^expansion.contains[=].display = "12 HR Morphine Sulfate 60 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891893
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892342
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 30 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892345
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892349
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 60 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892352
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892554
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892596
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892603
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892669
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892672
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892678
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894801
* ^expansion.contains[=].display = "Morphine Sulfate 50 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894814
* ^expansion.contains[=].display = "Morphine Sulfate 80 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895022
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895201
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895221
* ^expansion.contains[=].display = "Morphine Sulfate 50 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895227
* ^expansion.contains[=].display = "Morphine Sulfate 50 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895247
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871441
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 30 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871444
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 60 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891878
* ^expansion.contains[=].display = "12 HR Morphine Sulfate 15 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891881
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892297
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 120 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892355
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 90 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892494
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892516
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892579
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892582
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892589
* ^expansion.contains[=].display = "Morphine Sulfate 2 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892625
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892643
* ^expansion.contains[=].display = "Morphine Sulfate 200 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892646
* ^expansion.contains[=].display = "Morphine Sulfate 200 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894780
* ^expansion.contains[=].display = "Morphine Sulfate 4 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894807
* ^expansion.contains[=].display = "Morphine Sulfate 5 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894918
* ^expansion.contains[=].display = "12 HR Morphine Sulfate 200 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894986
* ^expansion.contains[=].display = "Morphine Sulfate 0.4 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895014
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895016
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895185
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895199
* ^expansion.contains[=].display = "Morphine Sulfate 2 MG/ML Oral Suspension"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895206
* ^expansion.contains[=].display = "Morphine Sulfate 200 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895208
* ^expansion.contains[=].display = "Morphine Sulfate 3 MG/ML Oral Suspension"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895215
* ^expansion.contains[=].display = "Morphine Sulfate 35 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895217
* ^expansion.contains[=].display = "Morphine Sulfate 5 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895219
* ^expansion.contains[=].display = "Morphine Sulfate 5 MG/ML Oral Suspension"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895238
* ^expansion.contains[=].display = "Morphine Sulfate 6 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895240
* ^expansion.contains[=].display = "Morphine Sulfate 6.67 MG/ML Oral Suspension"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871434
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 15 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1303736
* ^expansion.contains[=].display = "Morphine Sulfate 40 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #312104
* ^expansion.contains[=].display = "Belladonna Alkaloids 16.2 MG / Opium 30 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #312107
* ^expansion.contains[=].display = "Belladonna Alkaloids 16.2 MG / Opium 60 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #830196
* ^expansion.contains[=].display = "opium tincture 100 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944541
* ^expansion.contains[=].display = "Abuse-Deterrent Oxycodone Hydrochloride 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1014599
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1014615
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1014632
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1037259
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 2.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049214
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049221
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049225
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049233
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049251
* ^expansion.contains[=].display = "Acetaminophen 400 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049260
* ^expansion.contains[=].display = "Acetaminophen 400 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049267
* ^expansion.contains[=].display = "Acetaminophen 400 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049270
* ^expansion.contains[=].display = "Acetaminophen 650 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049502
* ^expansion.contains[=].display = "12 HR Oxycodone Hydrochloride 10 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049589
* ^expansion.contains[=].display = "Ibuprofen 400 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049621
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049635
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 2.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049651
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049658
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Oxycodone Hydrochloride 5 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049683
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049696
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049717
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 10 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049727
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1113314
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1491832
* ^expansion.contains[=].display = "12 HR Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1545910
* ^expansion.contains[=].display = "12 HR Naloxone Hydrochloride 5 MG / Oxycodone Hydrochloride 10 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1806701
* ^expansion.contains[=].display = "12 HR Naltrexone hydrochloride 1.2 MG / Oxycodone Hydrochloride 10 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860157
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 10 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944529
* ^expansion.contains[=].display = "Abuse-Deterrent Oxycodone Hydrochloride 15 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944538
* ^expansion.contains[=].display = "Abuse-Deterrent Oxycodone Hydrochloride 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049543
* ^expansion.contains[=].display = "12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049563
* ^expansion.contains[=].display = "12 HR Oxycodone Hydrochloride 20 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049574
* ^expansion.contains[=].display = "12 HR Oxycodone Hydrochloride 30 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049580
* ^expansion.contains[=].display = "Acetaminophen 65 MG/ML / Oxycodone Hydrochloride 1 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049584
* ^expansion.contains[=].display = "12 HR Oxycodone Hydrochloride 40 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049593
* ^expansion.contains[=].display = "12 HR Oxycodone Hydrochloride 60 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049599
* ^expansion.contains[=].display = "12 HR Oxycodone Hydrochloride 80 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049604
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 1 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049611
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 15 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049615
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 20 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049618
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 30 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049686
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 20 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049720
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 10 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049721
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 20 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1545903
* ^expansion.contains[=].display = "12 HR Naloxone Hydrochloride 10 MG / Oxycodone Hydrochloride 20 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1545907
* ^expansion.contains[=].display = "12 HR Naloxone Hydrochloride 20 MG / Oxycodone Hydrochloride 40 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860127
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 60 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860129
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 20 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860137
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 40 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860148
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 80 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860151
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 30 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860154
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #637540
* ^expansion.contains[=].display = "Aspirin 325 MG / Oxycodone Hydrochloride 4.5 MG / oxycodone terephthalate 0.38 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #724614
* ^expansion.contains[=].display = "Aspirin 325 MG / Oxycodone Hydrochloride 2.25 MG / oxycodone terephthalate 0.19 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #848768
* ^expansion.contains[=].display = "Aspirin 325 MG / Oxycodone Hydrochloride 4.84 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1790527
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 9 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791558
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 13.5 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791567
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 18 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791574
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 27 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791580
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 36 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2105822
* ^expansion.contains[=].display = "Acetaminophen 60 MG/ML / Oxycodone Hydrochloride 2 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977874
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 10 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977894
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 15 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977902
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 20 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977909
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 30 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977915
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 40 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977923
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 5 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977929
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 7.5 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977939
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977942
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 10 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250486
* ^expansion.contains[=].display = "Pentazocine 50 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250877
* ^expansion.contains[=].display = "Pentazocine 50 MG Rectal Suppository"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #312289
* ^expansion.contains[=].display = "Naloxone 0.5 MG / Pentazocine 50 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250485
* ^expansion.contains[=].display = "Pentazocine 25 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #312288
* ^expansion.contains[=].display = "Acetaminophen 650 MG / Pentazocine 25 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250647
* ^expansion.contains[=].display = "pholcodine 1 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #250646
* ^expansion.contains[=].display = "pholcodine 2 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #827748
* ^expansion.contains[=].display = "propoxyphene napsylate 100 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #827751
* ^expansion.contains[=].display = "Acetaminophen 325 MG / propoxyphene napsylate 100 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #828576
* ^expansion.contains[=].display = "Acetaminophen 650 MG / propoxyphene napsylate 100 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #828581
* ^expansion.contains[=].display = "Acetaminophen 650 MG / Propoxyphene Hydrochloride 65 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #828585
* ^expansion.contains[=].display = "Aspirin 389 MG / Caffeine 32.4 MG / Propoxyphene Hydrochloride 32 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #828594
* ^expansion.contains[=].display = "Aspirin 389 MG / Caffeine 32.4 MG / Propoxyphene Hydrochloride 65 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849279
* ^expansion.contains[=].display = "Propoxyphene Hydrochloride 65 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849304
* ^expansion.contains[=].display = "Acetaminophen 500 MG / propoxyphene napsylate 100 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849293
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Propoxyphene Hydrochloride 32.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849295
* ^expansion.contains[=].display = "Acetaminophen 325 MG / propoxyphene napsylate 50 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2103192
* ^expansion.contains[=].display = "Sufentanil 0.03 MG Sublingual Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148800
* ^expansion.contains[=].display = "12 HR tapentadol 150 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148803
* ^expansion.contains[=].display = "12 HR tapentadol 200 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148807
* ^expansion.contains[=].display = "12 HR tapentadol 250 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148797
* ^expansion.contains[=].display = "12 HR tapentadol 100 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148809
* ^expansion.contains[=].display = "12 HR tapentadol 50 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #825409
* ^expansion.contains[=].display = "tapentadol 100 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #825411
* ^expansion.contains[=].display = "tapentadol 50 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #825413
* ^expansion.contains[=].display = "tapentadol 75 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148478
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 100 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148485
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 200 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148489
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 300 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #833709
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 100 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #833711
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 200 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #833713
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 300 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2179635
* ^expansion.contains[=].display = "tramadol hydrochloride 100 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1946525
* ^expansion.contains[=].display = "Matrix Delivery 24 HR tramadol hydrochloride 300 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1946527
* ^expansion.contains[=].display = "Matrix Delivery 24 HR tramadol hydrochloride 200 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1946529
* ^expansion.contains[=].display = "Matrix Delivery 24 HR tramadol hydrochloride 100 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849561
* ^expansion.contains[=].display = "12 HR tramadol hydrochloride 150 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #835603
* ^expansion.contains[=].display = "tramadol hydrochloride 50 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836395
* ^expansion.contains[=].display = "Acetaminophen 325 MG / tramadol hydrochloride 37.5 MG Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836408
* ^expansion.contains[=].display = "tramadol hydrochloride 50 MG Disintegrating Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836466
* ^expansion.contains[=].display = "tramadol hydrochloride 50 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836485
* ^expansion.contains[=].display = "tramadol hydrochloride 1 MG/ML Oral Solution"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849331
* ^expansion.contains[=].display = "tramadol hydrochloride 75 MG Extended Release Oral Tablet"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849903
* ^expansion.contains[=].display = "tramadol hydrochloride 50 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #999729
* ^expansion.contains[=].display = "Acetaminophen 250 MG / tramadol hydrochloride 50 MG Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1248115
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 150 MG Extended Release Oral Capsule"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328828
* ^expansion.contains[=].display = "Alfentanil 0.5 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #360846
* ^expansion.contains[=].display = "Alfentanil 5 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2058256
* ^expansion.contains[=].display = "Buprenorphine 16 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1864410
* ^expansion.contains[=].display = "Buprenorphine 0.7 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #330801
* ^expansion.contains[=].display = "Buprenorphine 0.3 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #332698
* ^expansion.contains[=].display = "Buprenorphine 0.2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #333623
* ^expansion.contains[=].display = "Buprenorphine 0.4 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #353390
* ^expansion.contains[=].display = "Buprenorphine 2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #353391
* ^expansion.contains[=].display = "Buprenorphine 8 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904869
* ^expansion.contains[=].display = "Buprenorphine 0.01 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904875
* ^expansion.contains[=].display = "Buprenorphine 0.02 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904879
* ^expansion.contains[=].display = "Buprenorphine 0.005 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431074
* ^expansion.contains[=].display = "Buprenorphine 1.4 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431099
* ^expansion.contains[=].display = "Buprenorphine 5.7 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1432968
* ^expansion.contains[=].display = "Buprenorphine 0.015 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1488632
* ^expansion.contains[=].display = "Buprenorphine hydrochloride 1.3 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542386
* ^expansion.contains[=].display = "Buprenorphine 2.1 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542518
* ^expansion.contains[=].display = "Buprenorphine 6.3 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542996
* ^expansion.contains[=].display = "Buprenorphine 0.0075 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1544849
* ^expansion.contains[=].display = "Buprenorphine 4.2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1594649
* ^expansion.contains[=].display = "Buprenorphine 1.8 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597566
* ^expansion.contains[=].display = "Buprenorphine 11.4 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597571
* ^expansion.contains[=].display = "Buprenorphine 8.6 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1666336
* ^expansion.contains[=].display = "Buprenorphine 2.9 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716054
* ^expansion.contains[=].display = "Buprenorphine 0.15 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716064
* ^expansion.contains[=].display = "Buprenorphine 0.3 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716068
* ^expansion.contains[=].display = "Buprenorphine 0.45 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716072
* ^expansion.contains[=].display = "Buprenorphine 0.6 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716076
* ^expansion.contains[=].display = "Buprenorphine 0.075 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716080
* ^expansion.contains[=].display = "Buprenorphine 0.75 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716084
* ^expansion.contains[=].display = "Buprenorphine 0.9 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1797647
* ^expansion.contains[=].display = "Buprenorphine 74.2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1307054
* ^expansion.contains[=].display = "Buprenorphine 4 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1307059
* ^expansion.contains[=].display = "Buprenorphine 12 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1996182
* ^expansion.contains[=].display = "Buprenorphine 200 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #886621
* ^expansion.contains[=].display = "Butorphanol Tartrate 2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #886626
* ^expansion.contains[=].display = "Butorphanol Tartrate 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1302738
* ^expansion.contains[=].display = "Butorphanol 10 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2201633
* ^expansion.contains[=].display = "Butorphanol Tartrate 1 MG/ACTUAT"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1113997
* ^expansion.contains[=].display = "Codeine Phosphate 1.6 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #832866
* ^expansion.contains[=].display = "Codeine Phosphate 2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891481
* ^expansion.contains[=].display = "Codeine Phosphate 1.5 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993754
* ^expansion.contains[=].display = "Codeine Phosphate 2.4 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993769
* ^expansion.contains[=].display = "Codeine Phosphate 15 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993780
* ^expansion.contains[=].display = "Codeine Phosphate 30 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993889
* ^expansion.contains[=].display = "Codeine Phosphate 60 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993923
* ^expansion.contains[=].display = "Codeine Phosphate 16 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994011
* ^expansion.contains[=].display = "Codeine Phosphate 20 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994017
* ^expansion.contains[=].display = "Codeine Phosphate 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994282
* ^expansion.contains[=].display = "Codeine Phosphate 1.27 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #995033
* ^expansion.contains[=].display = "Codeine Phosphate 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #995127
* ^expansion.contains[=].display = "Codeine Phosphate 1.8 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #995225
* ^expansion.contains[=].display = "Codeine Phosphate 0.5 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #995437
* ^expansion.contains[=].display = "Codeine Phosphate 1.26 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996733
* ^expansion.contains[=].display = "Codeine Phosphate 5 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996735
* ^expansion.contains[=].display = "Codeine Phosphate 9 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996775
* ^expansion.contains[=].display = "Codeine Phosphate 60 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996975
* ^expansion.contains[=].display = "Codeine Phosphate 12.8 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996977
* ^expansion.contains[=].display = "Codeine Phosphate 13.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #996980
* ^expansion.contains[=].display = "Codeine Phosphate 8 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997163
* ^expansion.contains[=].display = "Codeine Phosphate 12.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997167
* ^expansion.contains[=].display = "Codeine sulfate 15 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997281
* ^expansion.contains[=].display = "Codeine Phosphate 3 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997286
* ^expansion.contains[=].display = "Codeine sulfate 30 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #997291
* ^expansion.contains[=].display = "Codeine sulfate 60 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1652086
* ^expansion.contains[=].display = "CODEINE POLISTIREX 4 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1664453
* ^expansion.contains[=].display = "Codeine Phosphate 54.3 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1190574
* ^expansion.contains[=].display = "Codeine Phosphate 1.2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #332475
* ^expansion.contains[=].display = "Dextromoramide 5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #333000
* ^expansion.contains[=].display = "Dextromoramide 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1190194
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 16 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234940
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 0.6 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234977
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 32 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234997
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1235008
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 20 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1235010
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 30 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236178
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 120 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236183
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 40 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236187
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 60 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1236189
* ^expansion.contains[=].display = "dihydrocodeine bitartrate 90 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #334588
* ^expansion.contains[=].display = "dipipanone 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1992288
* ^expansion.contains[=].display = "Fentanyl 0.04 MG/ACTUAT"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1115544
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/ACTUAT"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1115576
* ^expansion.contains[=].display = "Fentanyl 0.4 MG/ACTUAT"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328183
* ^expansion.contains[=].display = "Fentanyl 0.025 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328184
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328186
* ^expansion.contains[=].display = "Fentanyl 0.05 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328187
* ^expansion.contains[=].display = "Fentanyl 0.075 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328264
* ^expansion.contains[=].display = "Fentanyl 0.05 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328385
* ^expansion.contains[=].display = "Fentanyl 0.2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328387
* ^expansion.contains[=].display = "Fentanyl 0.3 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328388
* ^expansion.contains[=].display = "Fentanyl 0.4 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #329756
* ^expansion.contains[=].display = "Fentanyl 0.1 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #330335
* ^expansion.contains[=].display = "Fentanyl 1.2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #330336
* ^expansion.contains[=].display = "Fentanyl 1.6 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #330337
* ^expansion.contains[=].display = "Fentanyl 0.8 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #330860
* ^expansion.contains[=].display = "Fentanyl 0.6 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #360444
* ^expansion.contains[=].display = "Fentanyl 0.004 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #577056
* ^expansion.contains[=].display = "Fentanyl 0.012 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1603494
* ^expansion.contains[=].display = "Fentanyl 0.0375 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1603497
* ^expansion.contains[=].display = "Fentanyl 0.0625 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1603500
* ^expansion.contains[=].display = "Fentanyl 0.0875 MG/HR"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729319
* ^expansion.contains[=].display = "Fentanyl 0.3 MG/ACTUAT"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237056
* ^expansion.contains[=].display = "Fentanyl 0.2 MG/ACTUAT"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237063
* ^expansion.contains[=].display = "Fentanyl 0.6 MG/ACTUAT"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237067
* ^expansion.contains[=].display = "Fentanyl 0.8 MG/ACTUAT"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #333004
* ^expansion.contains[=].display = "Heroin 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1144866
* ^expansion.contains[=].display = "HYDROCODONE POLISTIREX 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1145789
* ^expansion.contains[=].display = "HYDROCODONE POLISTIREX 2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #833035
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 7.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856891
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856902
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856914
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856939
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.5 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856943
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.67 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857075
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.333 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857110
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 2.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857124
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.667 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857555
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.34 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857733
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.334 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857835
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.4 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858922
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.8 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858952
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.6 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858966
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.9 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859026
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.7 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859219
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.65 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #860144
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 0.75 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442529
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 15 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442533
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 20 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442537
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 30 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442541
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 40 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442545
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 50 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1488839
* ^expansion.contains[=].display = "HYDROCODONE POLISTIREX 5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860205
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 100 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860209
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 120 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860222
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 60 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860226
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 80 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897652
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897662
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 10 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897669
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 12 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897686
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 16 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897695
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897701
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 4 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897709
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 8 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897729
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 24 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897736
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 32 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897744
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897748
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 3 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897752
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 4 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897770
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 1 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #898003
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 1.3 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #898137
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 2.6 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897642
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 0.2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #329902
* ^expansion.contains[=].display = "Levomethadyl 10 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2058844
* ^expansion.contains[=].display = "Levorphanol Tartrate 3 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #329903
* ^expansion.contains[=].display = "Levorphanol 2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #860791
* ^expansion.contains[=].display = "Meperidine Hydrochloride 75 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861446
* ^expansion.contains[=].display = "Meperidine Hydrochloride 10 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861454
* ^expansion.contains[=].display = "Meperidine Hydrochloride 100 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861458
* ^expansion.contains[=].display = "Meperidine Hydrochloride 100 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861462
* ^expansion.contains[=].display = "Meperidine Hydrochloride 50 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861466
* ^expansion.contains[=].display = "Meperidine Hydrochloride 50 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861475
* ^expansion.contains[=].display = "Meperidine Hydrochloride 25 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1655057
* ^expansion.contains[=].display = "Meperidine Hydrochloride 150 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1655059
* ^expansion.contains[=].display = "Meperidine Hydrochloride 75 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #334026
* ^expansion.contains[=].display = "Meptazinol 100 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #334027
* ^expansion.contains[=].display = "Meptazinol 200 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864705
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864713
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864717
* ^expansion.contains[=].display = "Methadone Hydrochloride 5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864760
* ^expansion.contains[=].display = "Methadone Hydrochloride 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864768
* ^expansion.contains[=].display = "Methadone Hydrochloride 2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864983
* ^expansion.contains[=].display = "Methadone Hydrochloride 20 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1869548
* ^expansion.contains[=].display = "Methadone Hydrochloride 40 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #828712
* ^expansion.contains[=].display = "Morphine Sulfate 45 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #828716
* ^expansion.contains[=].display = "Morphine Sulfate 75 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859955
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859963
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859968
* ^expansion.contains[=].display = "Morphine Sulfate 50 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863539
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863546
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863551
* ^expansion.contains[=].display = "Morphine Sulfate 80 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #891877
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892296
* ^expansion.contains[=].display = "Morphine Sulfate 120 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892354
* ^expansion.contains[=].display = "Morphine Sulfate 90 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892364
* ^expansion.contains[=].display = "Morphine Sulfate 0.5 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892476
* ^expansion.contains[=].display = "Morphine Sulfate 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892493
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892530
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892588
* ^expansion.contains[=].display = "Morphine Sulfate 2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892624
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892642
* ^expansion.contains[=].display = "Morphine Sulfate 200 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892649
* ^expansion.contains[=].display = "Morphine Sulfate 25 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894779
* ^expansion.contains[=].display = "Morphine Sulfate 4 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894806
* ^expansion.contains[=].display = "Morphine Sulfate 5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894910
* ^expansion.contains[=].display = "Morphine Sulfate 14.3 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894913
* ^expansion.contains[=].display = "Morphine Sulfate 8 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894931
* ^expansion.contains[=].display = "Morphine Sulfate 150 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894972
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894985
* ^expansion.contains[=].display = "Morphine Sulfate 0.4 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895207
* ^expansion.contains[=].display = "Morphine Sulfate 3 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895212
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895214
* ^expansion.contains[=].display = "Morphine Sulfate 35 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895218
* ^expansion.contains[=].display = "Morphine Sulfate 5 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895228
* ^expansion.contains[=].display = "Morphine Sulfate 50 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895232
* ^expansion.contains[=].display = "Morphine Sulfate 6 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #895239
* ^expansion.contains[=].display = "Morphine Sulfate 6.67 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1303735
* ^expansion.contains[=].display = "Morphine Sulfate 40 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904414
* ^expansion.contains[=].display = "Nalbuphine Hydrochloride 10 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904439
* ^expansion.contains[=].display = "Nalbuphine Hydrochloride 20 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #316409
* ^expansion.contains[=].display = "Opium 30 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #317452
* ^expansion.contains[=].display = "Opium 60 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #830195
* ^expansion.contains[=].display = "opium tincture 100 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1014598
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1014614
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1014631
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 7.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1037258
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 2.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049542
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 15 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049562
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 20 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049573
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 30 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049579
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049583
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 40 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049592
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 60 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049598
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 80 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049614
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 20 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049718
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 10 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #637538
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 4.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #637539
* ^expansion.contains[=].display = "oxycodone terephthalate 0.38 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #724542
* ^expansion.contains[=].display = "oxycodone terephthalate 0.19 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #724613
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 2.25 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #848767
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 4.84 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1790525
* ^expansion.contains[=].display = "Oxycodone 9 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791557
* ^expansion.contains[=].display = "Oxycodone 13.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791566
* ^expansion.contains[=].display = "Oxycodone 18 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791573
* ^expansion.contains[=].display = "Oxycodone 27 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791579
* ^expansion.contains[=].display = "Oxycodone 36 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2105821
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977873
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 10 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977893
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 15 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977901
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 20 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977908
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 30 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977914
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 40 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977922
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977928
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 7.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977934
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #360847
* ^expansion.contains[=].display = "Papaveretum 15.4 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328396
* ^expansion.contains[=].display = "Pentazocine 50 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #329085
* ^expansion.contains[=].display = "Pentazocine 25 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #330810
* ^expansion.contains[=].display = "Pentazocine 30 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #332561
* ^expansion.contains[=].display = "pholcodine 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #335432
* ^expansion.contains[=].display = "pholcodine 2 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #827747
* ^expansion.contains[=].display = "propoxyphene napsylate 100 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #828580
* ^expansion.contains[=].display = "Propoxyphene Hydrochloride 65 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #828584
* ^expansion.contains[=].display = "Propoxyphene Hydrochloride 32 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849292
* ^expansion.contains[=].display = "Propoxyphene Hydrochloride 32.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849294
* ^expansion.contains[=].display = "propoxyphene napsylate 50 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729576
* ^expansion.contains[=].display = "remifentanil 1 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729583
* ^expansion.contains[=].display = "remifentanil 2 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729709
* ^expansion.contains[=].display = "remifentanil 5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #328654
* ^expansion.contains[=].display = "Sufentanil 0.05 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2103187
* ^expansion.contains[=].display = "Sufentanil 0.03 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148799
* ^expansion.contains[=].display = "tapentadol 150 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148802
* ^expansion.contains[=].display = "tapentadol 200 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148805
* ^expansion.contains[=].display = "tapentadol 250 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #825407
* ^expansion.contains[=].display = "tapentadol 100 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #825410
* ^expansion.contains[=].display = "tapentadol 50 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #825412
* ^expansion.contains[=].display = "tapentadol 75 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #831431
* ^expansion.contains[=].display = "tramadol hydrochloride 100 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #831437
* ^expansion.contains[=].display = "tramadol hydrochloride 200 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #831441
* ^expansion.contains[=].display = "tramadol hydrochloride 300 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #835602
* ^expansion.contains[=].display = "tramadol hydrochloride 50 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836394
* ^expansion.contains[=].display = "tramadol hydrochloride 37.5 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836484
* ^expansion.contains[=].display = "tramadol hydrochloride 1 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836487
* ^expansion.contains[=].display = "tramadol hydrochloride 150 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836491
* ^expansion.contains[=].display = "tramadol hydrochloride 400 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849328
* ^expansion.contains[=].display = "tramadol hydrochloride 50 MG/ML"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #849330
* ^expansion.contains[=].display = "tramadol hydrochloride 75 MG"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #404414
* ^expansion.contains[=].display = "Buprenorphine 8 MG Sublingual Tablet [Subutex]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1010603
* ^expansion.contains[=].display = "Buprenorphine 2 MG / Naloxone 0.5 MG Sublingual Film [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1010606
* ^expansion.contains[=].display = "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Film [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1010608
* ^expansion.contains[=].display = "Buprenorphine 2 MG / Naloxone 0.5 MG Sublingual Tablet [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1010609
* ^expansion.contains[=].display = "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Tablet [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1307058
* ^expansion.contains[=].display = "Buprenorphine 4 MG / Naloxone 1 MG Sublingual Film [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1307063
* ^expansion.contains[=].display = "Buprenorphine 12 MG / Naloxone 3 MG Sublingual Film [Suboxone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904874
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.01 MG/HR Transdermal System [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904878
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.02 MG/HR Transdermal System [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #904882
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.005 MG/HR Transdermal System [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1432971
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.015 MG/HR Transdermal System [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542999
* ^expansion.contains[=].display = "168 HR Buprenorphine 0.0075 MG/HR Transdermal System [BuTrans]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1864414
* ^expansion.contains[=].display = "Buprenorphine 0.7 MG / Naloxone 0.18 MG Sublingual Tablet [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431083
* ^expansion.contains[=].display = "Buprenorphine 1.4 MG / Naloxone 0.36 MG Sublingual Tablet [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1431104
* ^expansion.contains[=].display = "Buprenorphine 5.7 MG / Naloxone 1.4 MG Sublingual Tablet [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597570
* ^expansion.contains[=].display = "Buprenorphine 11.4 MG / Naloxone 2.9 MG Sublingual Tablet [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1597575
* ^expansion.contains[=].display = "Buprenorphine 8.6 MG / Naloxone 2.1 MG Sublingual Tablet [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1666385
* ^expansion.contains[=].display = "Buprenorphine 2.9 MG / Naloxone 0.71 MG Sublingual Tablet [Zubsolv]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542396
* ^expansion.contains[=].display = "Buprenorphine 2.1 MG / Naloxone 0.3 MG Buccal Film [Bunavail]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1544853
* ^expansion.contains[=].display = "Buprenorphine 4.2 MG / Naloxone 0.7 MG Buccal Film [Bunavail]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1544856
* ^expansion.contains[=].display = "Buprenorphine 6.3 MG / Naloxone 1 MG Buccal Film [Bunavail]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716063
* ^expansion.contains[=].display = "Buprenorphine 0.15 MG Buccal Film [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716067
* ^expansion.contains[=].display = "Buprenorphine 0.3 MG Buccal Film [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716071
* ^expansion.contains[=].display = "Buprenorphine 0.45 MG Buccal Film [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716075
* ^expansion.contains[=].display = "Buprenorphine 0.6 MG Buccal Film [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716079
* ^expansion.contains[=].display = "Buprenorphine 0.075 MG Buccal Film [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716083
* ^expansion.contains[=].display = "Buprenorphine 0.75 MG Buccal Film [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1716090
* ^expansion.contains[=].display = "Buprenorphine 0.9 MG Buccal Film [Belbuca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1797655
* ^expansion.contains[=].display = "Buprenorphine 74.2 MG Drug Implant [Probuphine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2106368
* ^expansion.contains[=].display = "Buprenorphine 16 MG / Naloxone 4 MG Sublingual Film [Cassipa]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994277
* ^expansion.contains[=].display = "Aspirin 325 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG Oral Capsule [Fiorinal with Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1433802
* ^expansion.contains[=].display = "Acetaminophen 300 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG Oral Capsule [Fioricet with Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993837
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Codeine Phosphate 30 MG Oral Tablet [Tylenol with Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993892
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Codeine Phosphate 60 MG Oral Tablet [Tylenol with Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #993767
* ^expansion.contains[=].display = "Acetaminophen 24 MG/ML / Codeine Phosphate 2.4 MG/ML Oral Suspension [Capital and Codeine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #994239
* ^expansion.contains[=].display = "Aspirin 325 MG / butalbital 50 MG / Caffeine 40 MG / Codeine Phosphate 30 MG Oral Capsule [Ascomp]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234976
* ^expansion.contains[=].display = "Aspirin 356.4 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Capsule [Synalgos-DC]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1190201
* ^expansion.contains[=].display = "Acetaminophen 320.5 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Capsule [Trezix]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1234990
* ^expansion.contains[=].display = "Acetaminophen 356.4 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Capsule [Trezix]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2105929
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Tablet [Dvorah]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1995536
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Caffeine 30 MG / dihydrocodeine bitartrate 16 MG Oral Tablet [Panlor Reformulated Jan 2018]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053651
* ^expansion.contains[=].display = "Fentanyl 0.1 MG Sublingual Tablet [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053654
* ^expansion.contains[=].display = "Fentanyl 0.2 MG Sublingual Tablet [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053657
* ^expansion.contains[=].display = "Fentanyl 0.3 MG Sublingual Tablet [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053660
* ^expansion.contains[=].display = "Fentanyl 0.4 MG Sublingual Tablet [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053663
* ^expansion.contains[=].display = "Fentanyl 0.6 MG Sublingual Tablet [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1053666
* ^expansion.contains[=].display = "Fentanyl 0.8 MG Sublingual Tablet [Abstral]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1115575
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/ACTUAT Metered Dose Nasal Spray [Lazanda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1115579
* ^expansion.contains[=].display = "Fentanyl 0.4 MG/ACTUAT Metered Dose Nasal Spray [Lazanda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1729322
* ^expansion.contains[=].display = "Fentanyl 0.3 MG/ACTUAT Metered Dose Nasal Spray [Lazanda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #261184
* ^expansion.contains[=].display = "72 HR Fentanyl 0.025 MG/HR Transdermal System [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #261185
* ^expansion.contains[=].display = "72 HR Fentanyl 0.05 MG/HR Transdermal System [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #261186
* ^expansion.contains[=].display = "72 HR Fentanyl 0.075 MG/HR Transdermal System [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #262071
* ^expansion.contains[=].display = "72 HR Fentanyl 0.1 MG/HR Transdermal System [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #583490
* ^expansion.contains[=].display = "72 HR Fentanyl 0.012 MG/HR Transdermal System [Duragesic]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #261106
* ^expansion.contains[=].display = "Fentanyl 0.2 MG Oral Lozenge [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #261107
* ^expansion.contains[=].display = "Fentanyl 0.6 MG Oral Lozenge [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #261108
* ^expansion.contains[=].display = "Fentanyl 0.8 MG Oral Lozenge [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #261109
* ^expansion.contains[=].display = "Fentanyl 1.2 MG Oral Lozenge [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #261110
* ^expansion.contains[=].display = "Fentanyl 1.6 MG Oral Lozenge [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #262219
* ^expansion.contains[=].display = "Fentanyl 0.4 MG Oral Lozenge [Actiq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668622
* ^expansion.contains[=].display = "Fentanyl 0.1 MG Buccal Tablet [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668624
* ^expansion.contains[=].display = "Fentanyl 0.2 MG Buccal Tablet [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668626
* ^expansion.contains[=].display = "Fentanyl 0.4 MG Buccal Tablet [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668628
* ^expansion.contains[=].display = "Fentanyl 0.6 MG Buccal Tablet [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #668630
* ^expansion.contains[=].display = "Fentanyl 0.8 MG Buccal Tablet [Fentora]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1666837
* ^expansion.contains[=].display = "80 ACTUAT Fentanyl 0.04 MG/ACTUAT Transdermal System [Ionsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237055
* ^expansion.contains[=].display = "Fentanyl 0.1 MG/ACTUAT Mucosal Spray [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237059
* ^expansion.contains[=].display = "Fentanyl 0.2 MG/ACTUAT Mucosal Spray [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237062
* ^expansion.contains[=].display = "Fentanyl 0.4 MG/ACTUAT Mucosal Spray [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237066
* ^expansion.contains[=].display = "Fentanyl 0.6 MG/ACTUAT Mucosal Spray [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1237070
* ^expansion.contains[=].display = "Fentanyl 0.8 MG/ACTUAT Mucosal Spray [Subsys]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857105
* ^expansion.contains[=].display = "Acetaminophen 33.3 MG/ML / Hydrocodone Bitartrate 0.5 MG/ML Oral Solution [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857113
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 2.5 MG Oral Tablet [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857120
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1442445
* ^expansion.contains[=].display = "Acetaminophen 20 MG/ML / Hydrocodone Bitartrate 0.667 MG/ML Oral Solution [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1495472
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG Oral Tablet [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1495474
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 5 MG Oral Tablet [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1495476
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet [Lortab]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1310202
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 5 MG Oral Tablet [Vicodin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1310212
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet [Vicodin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1310270
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 10 MG Oral Tablet [Vicodin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857001
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG Oral Tablet [Norco]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857004
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 5 MG Oral Tablet [Norco]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857007
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet [Norco]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #857136
* ^expansion.contains[=].display = "Acetaminophen 400 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet [Zydone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858838
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 7.5 MG / Ibuprofen 200 MG Oral Tablet [Vicoprofen]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1492671
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG Oral Tablet [Lorcet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1492673
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 5 MG Oral Tablet [Lorcet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1492675
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet [Lorcet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1147395
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 10 MG Oral Tablet [Xodol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856942
* ^expansion.contains[=].display = "Acetaminophen 21.7 MG/ML / Hydrocodone Bitartrate 0.5 MG/ML Oral Solution [Hycet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856984
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 10 MG Oral Tablet [Xodol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856991
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 5 MG Oral Tablet [Xodol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856996
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Hydrocodone Bitartrate 7.5 MG Oral Tablet [Xodol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858772
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 2.5 MG / Ibuprofen 200 MG Oral Tablet [Reprexain]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858784
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 5 MG / Ibuprofen 200 MG Oral Tablet [Reprexain]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859331
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG / Ibuprofen 200 MG Oral Tablet [Reprexain]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #856946
* ^expansion.contains[=].display = "Acetaminophen 21.7 MG/ML / Hydrocodone Bitartrate 0.67 MG/ML Oral Solution [Zamicet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #858780
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 5 MG / Ibuprofen 200 MG Oral Tablet [Ibudone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #859317
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG / Ibuprofen 200 MG Oral Tablet [Ibudone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860492
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 10 MG Extended Release Oral Capsule [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860494
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 15 MG Extended Release Oral Capsule [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860496
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 20 MG Extended Release Oral Capsule [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860498
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 30 MG Extended Release Oral Capsule [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860500
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 40 MG Extended Release Oral Capsule [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1860502
* ^expansion.contains[=].display = "12 HR Hydrocodone Bitartrate 50 MG Extended Release Oral Capsule [Zohydro]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542981
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Hydrocodone Bitartrate 2.5 MG Oral Tablet [Verdrocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1542988
* ^expansion.contains[=].display = "Hydrocodone Bitartrate 10 MG / Ibuprofen 200 MG Oral Tablet [Xylon]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595736
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 20 MG Extended Release Oral Tablet [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595742
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 30 MG Extended Release Oral Tablet [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595748
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 40 MG Extended Release Oral Tablet [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595754
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 60 MG Extended Release Oral Tablet [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595760
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 80 MG Extended Release Oral Tablet [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595766
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 100 MG Extended Release Oral Tablet [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1595772
* ^expansion.contains[=].display = "Abuse-Deterrent 24 HR Hydrocodone Bitartrate 120 MG Extended Release Oral Tablet [Hysingla]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897658
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 1 MG/ML Oral Solution [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897698
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 2 MG Oral Tablet [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897704
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 4 MG Oral Tablet [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #897712
* ^expansion.contains[=].display = "Hydromorphone Hydrochloride 8 MG Oral Tablet [Dilaudid]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902733
* ^expansion.contains[=].display = "24 HR Hydromorphone Hydrochloride 12 MG Extended Release Oral Tablet [Exalgo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902738
* ^expansion.contains[=].display = "24 HR Hydromorphone Hydrochloride 16 MG Extended Release Oral Tablet [Exalgo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #902743
* ^expansion.contains[=].display = "24 HR Hydromorphone Hydrochloride 8 MG Extended Release Oral Tablet [Exalgo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1306900
* ^expansion.contains[=].display = "24 HR Hydromorphone Hydrochloride 32 MG Extended Release Oral Tablet [Exalgo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861517
* ^expansion.contains[=].display = "Meperidine Hydrochloride 100 MG Oral Tablet [Demerol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #861525
* ^expansion.contains[=].display = "Meperidine Hydrochloride 50 MG Oral Tablet [Demerol]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864737
* ^expansion.contains[=].display = "Methadone Hydrochloride 5 MG Oral Tablet [Methadose]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864980
* ^expansion.contains[=].display = "Methadone Hydrochloride 40 MG Tablet for Oral Suspension [Methadose]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #991149
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG/ML Oral Solution [Methadose]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864712
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG Oral Tablet [Methadose]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864708
* ^expansion.contains[=].display = "Methadone Hydrochloride 10 MG Oral Tablet [Dolophine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #864720
* ^expansion.contains[=].display = "Methadone Hydrochloride 5 MG Oral Tablet [Dolophine]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1990745
* ^expansion.contains[=].display = "Methadone Hydrochloride 40 MG Tablet for Oral Suspension [Diskets]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892496
* ^expansion.contains[=].display = "Morphine Sulfate 10 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892556
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892560
* ^expansion.contains[=].display = "Morphine Sulfate 100 MG Extended Release Oral Tablet [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892574
* ^expansion.contains[=].display = "Morphine Sulfate 15 MG Extended Release Oral Tablet [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892598
* ^expansion.contains[=].display = "Morphine Sulfate 20 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892645
* ^expansion.contains[=].display = "Morphine Sulfate 200 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892648
* ^expansion.contains[=].display = "Morphine Sulfate 200 MG Extended Release Oral Tablet [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892658
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892660
* ^expansion.contains[=].display = "Morphine Sulfate 30 MG Extended Release Oral Tablet [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894803
* ^expansion.contains[=].display = "Morphine Sulfate 50 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894805
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894813
* ^expansion.contains[=].display = "Morphine Sulfate 60 MG Extended Release Oral Tablet [MS Contin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #894816
* ^expansion.contains[=].display = "Morphine Sulfate 80 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1303738
* ^expansion.contains[=].display = "Morphine Sulfate 40 MG Extended Release Oral Capsule [Kadian]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892299
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 120 MG Extended Release Oral Capsule [Avinza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892344
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 30 MG Extended Release Oral Capsule [Avinza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892351
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 60 MG Extended Release Oral Capsule [Avinza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #892357
* ^expansion.contains[=].display = "24 HR Morphine Sulfate 90 MG Extended Release Oral Capsule [Avinza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863847
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 100 MG / Naltrexone hydrochloride 4 MG Extended Release Oral Capsule [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863849
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 20 MG / Naltrexone hydrochloride 0.8 MG Extended Release Oral Capsule [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863851
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 30 MG / Naltrexone hydrochloride 1.2 MG Extended Release Oral Capsule [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863853
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 50 MG / Naltrexone hydrochloride 2 MG Extended Release Oral Capsule [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863855
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 60 MG / Naltrexone hydrochloride 2.4 MG Extended Release Oral Capsule [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #863857
* ^expansion.contains[=].display = "Abuse-Deterrent Morphine Sulfate 80 MG / Naltrexone hydrochloride 3.2 MG Extended Release Oral Capsule [Embeda]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1745881
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 15 MG Extended Release Oral Tablet [Morphabond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1745886
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 100 MG Extended Release Oral Tablet [Morphabond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1745889
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 30 MG Extended Release Oral Tablet [Morphabond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1745892
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 60 MG Extended Release Oral Tablet [Morphabond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871440
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 15 MG Extended Release Oral Tablet [Arymo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871443
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 30 MG Extended Release Oral Tablet [Arymo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1871446
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Morphine Sulfate 60 MG Extended Release Oral Tablet [Arymo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944535
* ^expansion.contains[=].display = "Abuse-Deterrent Oxycodone Hydrochloride 15 MG Oral Tablet [Roxybond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944540
* ^expansion.contains[=].display = "Abuse-Deterrent Oxycodone Hydrochloride 30 MG Oral Tablet [Roxybond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1944543
* ^expansion.contains[=].display = "Abuse-Deterrent Oxycodone Hydrochloride 5 MG Oral Tablet [Roxybond]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049216
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Endocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049223
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet [Endocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049227
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet [Endocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1487288
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 2.5 MG Oral Tablet [Endocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049504
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 10 MG Extended Release Oral Tablet [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049545
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049565
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 20 MG Extended Release Oral Tablet [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049576
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 30 MG Extended Release Oral Tablet [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049586
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 40 MG Extended Release Oral Tablet [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049595
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 60 MG Extended Release Oral Tablet [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049601
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 80 MG Extended Release Oral Tablet [Oxycontin]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1050409
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 20 MG/ML Oral Solution [Oxyfast]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049582
* ^expansion.contains[=].display = "Acetaminophen 65 MG/ML / Oxycodone Hydrochloride 1 MG/ML Oral Solution [Roxicet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049613
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 15 MG Oral Tablet [Roxicodone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049620
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 30 MG Oral Tablet [Roxicodone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049623
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG Oral Tablet [Roxicodone]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1050490
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet [Roxicet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049625
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049637
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 2.5 MG Oral Tablet [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049640
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049642
* ^expansion.contains[=].display = "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049647
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049650
* ^expansion.contains[=].display = "Acetaminophen 650 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Percocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1049655
* ^expansion.contains[=].display = "Acetaminophen 500 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Xolox]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #848772
* ^expansion.contains[=].display = "Aspirin 325 MG / Oxycodone Hydrochloride 4.84 MG Oral Tablet [Percodan Reformulated May 2009]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #848928
* ^expansion.contains[=].display = "Aspirin 325 MG / Oxycodone Hydrochloride 4.84 MG Oral Tablet [Endodan Reformulated May 2009]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1491834
* ^expansion.contains[=].display = "12 HR Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG Extended Release Oral Tablet [Xartemis]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1537116
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 5 MG Oral Tablet [Primlev]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1537120
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Primlev]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1537122
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet [Primlev]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1546089
* ^expansion.contains[=].display = "12 HR Naloxone Hydrochloride 5 MG / Oxycodone Hydrochloride 10 MG Extended Release Oral Tablet [Targiniq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2268081
* ^expansion.contains[=].display = "12 HR Naloxone Hydrochloride 10 MG / Oxycodone Hydrochloride 20 MG Extended Release Oral Tablet [Targiniq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2268085
* ^expansion.contains[=].display = "12 HR Naloxone Hydrochloride 20 MG / Oxycodone Hydrochloride 40 MG Extended Release Oral Tablet [Targiniq]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1664448
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 5 MG Oral Tablet [Oxaydo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1664634
* ^expansion.contains[=].display = "Oxycodone Hydrochloride 7.5 MG Oral Tablet [Oxaydo]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1790533
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 9 MG Extended Release Oral Capsule [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791560
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 13.5 MG Extended Release Oral Capsule [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791569
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 18 MG Extended Release Oral Capsule [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791576
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 27 MG Extended Release Oral Capsule [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1791582
* ^expansion.contains[=].display = "Abuse-Deterrent 12 HR Oxycodone 36 MG Extended Release Oral Capsule [Xtampza]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1806707
* ^expansion.contains[=].display = "12 HR Naltrexone hydrochloride 1.2 MG / Oxycodone Hydrochloride 10 MG Extended Release Oral Capsule [Troxyca]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2045500
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 2.5 MG Oral Tablet [Nalocet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2279510
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Prolate]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2279512
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 5 MG Oral Tablet [Prolate]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2279514
* ^expansion.contains[=].display = "Acetaminophen 300 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet [Prolate]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977876
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 10 MG Extended Release Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977896
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 15 MG Extended Release Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977904
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 20 MG Extended Release Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977911
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 30 MG Extended Release Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977917
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 40 MG Extended Release Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977925
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 5 MG Extended Release Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977931
* ^expansion.contains[=].display = "12 HR Oxymorphone Hydrochloride 7.5 MG Extended Release Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977940
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 5 MG Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #977943
* ^expansion.contains[=].display = "Oxymorphone Hydrochloride 10 MG Oral Tablet [Opana]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #827750
* ^expansion.contains[=].display = "propoxyphene napsylate 100 MG Oral Tablet [Darvon-N]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #2103199
* ^expansion.contains[=].display = "Sufentanil 0.03 MG Sublingual Tablet [Dsuvia]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1149367
* ^expansion.contains[=].display = "12 HR tapentadol 100 MG Extended Release Oral Tablet [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1149370
* ^expansion.contains[=].display = "12 HR tapentadol 150 MG Extended Release Oral Tablet [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1149373
* ^expansion.contains[=].display = "12 HR tapentadol 200 MG Extended Release Oral Tablet [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1149376
* ^expansion.contains[=].display = "12 HR tapentadol 250 MG Extended Release Oral Tablet [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1149378
* ^expansion.contains[=].display = "12 HR tapentadol 50 MG Extended Release Oral Tablet [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #854140
* ^expansion.contains[=].display = "tapentadol 100 MG Oral Tablet [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #854142
* ^expansion.contains[=].display = "tapentadol 50 MG Oral Tablet [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #854144
* ^expansion.contains[=].display = "tapentadol 75 MG Oral Tablet [Nucynta]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148482
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 100 MG Extended Release Oral Capsule [ConZip]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148487
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 200 MG Extended Release Oral Capsule [ConZip]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1148491
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 300 MG Extended Release Oral Capsule [ConZip]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #835605
* ^expansion.contains[=].display = "tramadol hydrochloride 50 MG Oral Tablet [Ultram]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #845314
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 100 MG Extended Release Oral Tablet [Ultram]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #845315
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 200 MG Extended Release Oral Tablet [Ultram]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #845316
* ^expansion.contains[=].display = "24 HR tramadol hydrochloride 300 MG Extended Release Oral Tablet [Ultram]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #836397
* ^expansion.contains[=].display = "Acetaminophen 325 MG / tramadol hydrochloride 37.5 MG Oral Tablet [Ultracet]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #833710
* ^expansion.contains[=].display = "Matrix Delivery 24 HR tramadol hydrochloride 100 MG Extended Release Oral Tablet [Ryzolt]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #833712
* ^expansion.contains[=].display = "Matrix Delivery 24 HR tramadol hydrochloride 200 MG Extended Release Oral Tablet [Ryzolt]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #833714
* ^expansion.contains[=].display = "Matrix Delivery 24 HR tramadol hydrochloride 300 MG Extended Release Oral Tablet [Ryzolt]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1740008
* ^expansion.contains[=].display = "{2 (Fentanyl 0.6 MG/ACTUAT Mucosal Spray [Subsys]) } Pack [Subsys 1200 MCG]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1740010
* ^expansion.contains[=].display = "{2 (Fentanyl 0.8 MG/ACTUAT Mucosal Spray [Subsys]) } Pack [Subsys 1600 MCG]"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1740007
* ^expansion.contains[=].display = "{2 (Fentanyl 0.6 MG/ACTUAT Mucosal Spray) } Pack"
* ^expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* ^expansion.contains[=].version = "02-Mar-2020"
* ^expansion.contains[=].code = #1740009
* ^expansion.contains[=].display = "{2 (Fentanyl 0.8 MG/ACTUAT Mucosal Spray) } Pack"
* RxNorm#1010600 "Buprenorphine 2 MG / Naloxone 0.5 MG Oral Strip"
* RxNorm#1010603 "Buprenorphine 2 MG / Naloxone 0.5 MG Oral Strip [Suboxone]"
* RxNorm#1010604 "Buprenorphine 8 MG / Naloxone 2 MG Oral Strip"
* RxNorm#1010606 "Buprenorphine 8 MG / Naloxone 2 MG Oral Strip [Suboxone]"
* RxNorm#1010608 "Buprenorphine 2 MG / Naloxone 0.5 MG Sublingual Tablet [Suboxone]"
* RxNorm#1010609 "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Tablet [Suboxone]"
* RxNorm#1012727 "Carbinoxamine maleate 0.4 MG/ML / Hydrocodone Bitartrate 1 MG/ML / Pseudoephedrine Hydrochloride 6 MG/ML Oral Solution"
* RxNorm#1014599 "Acetaminophen 300 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* RxNorm#1014615 "Acetaminophen 300 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* RxNorm#1014632 "Acetaminophen 300 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* RxNorm#1037259 "Acetaminophen 300 MG / Oxycodone Hydrochloride 2.5 MG Oral Tablet"
* RxNorm#1042693 "Chlorpheniramine Maleate 0.4 MG/ML / Codeine Phosphate 2 MG/ML / Phenylephrine Hydrochloride 1 MG/ML Oral Solution"
* RxNorm#1043650 "Codeine Phosphate 2 MG/ML / Pseudoephedrine Hydrochloride 3 MG/ML / Triprolidine Hydrochloride 0.25 MG/ML Oral Solution [Poly Hist NC]"
* RxNorm#1044427 "Acetaminophen 20 MG/ML / Hydrocodone Bitartrate 0.667 MG/ML Oral Solution"
* RxNorm#1049214 "Acetaminophen 325 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* RxNorm#1049216 "Acetaminophen 325 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Endocet]"
* RxNorm#1049221 "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* RxNorm#1049223 "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet [Endocet]"
* RxNorm#1049225 "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* RxNorm#1049227 "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet [Endocet]"
* RxNorm#1049233 "Acetaminophen 500 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* RxNorm#1049251 "Acetaminophen 400 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* RxNorm#1049260 "Acetaminophen 400 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* RxNorm#1049267 "Acetaminophen 400 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet"
* RxNorm#1049270 "Acetaminophen 650 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* RxNorm#1049502 "12 HR Oxycodone Hydrochloride 10 MG Extended Release Oral Tablet"
* RxNorm#1049504 "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 10 MG Extended Release Oral Tablet [Oxycontin]"
* RxNorm#1049543 "12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet"
* RxNorm#1049545 "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet [Oxycontin]"
* RxNorm#1049557 "12 HR Oxycodone Hydrochloride 160 MG Extended Release Oral Tablet"
* RxNorm#1049563 "12 HR Oxycodone Hydrochloride 20 MG Extended Release Oral Tablet"
* RxNorm#1049565 "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 20 MG Extended Release Oral Tablet [Oxycontin]"
* RxNorm#1049574 "12 HR Oxycodone Hydrochloride 30 MG Extended Release Oral Tablet"
* RxNorm#1049576 "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 30 MG Extended Release Oral Tablet [Oxycontin]"
* RxNorm#1049580 "Acetaminophen 65 MG/ML / Oxycodone Hydrochloride 1 MG/ML Oral Solution"
* RxNorm#1049582 "Acetaminophen 65 MG/ML / Oxycodone Hydrochloride 1 MG/ML Oral Solution [Roxicet]"
* RxNorm#1049584 "12 HR Oxycodone Hydrochloride 40 MG Extended Release Oral Tablet"
* RxNorm#1049586 "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 40 MG Extended Release Oral Tablet [Oxycontin]"
* RxNorm#1049589 "Ibuprofen 400 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* RxNorm#1049593 "12 HR Oxycodone Hydrochloride 60 MG Extended Release Oral Tablet"
* RxNorm#1049595 "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 60 MG Extended Release Oral Tablet [Oxycontin]"
* RxNorm#1049599 "12 HR Oxycodone Hydrochloride 80 MG Extended Release Oral Tablet"
* RxNorm#1049601 "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 80 MG Extended Release Oral Tablet [Oxycontin]"
* RxNorm#1049604 "Oxycodone Hydrochloride 1 MG/ML Oral Solution"
* RxNorm#1049611 "Oxycodone Hydrochloride 15 MG Oral Tablet"
* RxNorm#1049613 "Oxycodone Hydrochloride 15 MG Oral Tablet [Roxicodone]"
* RxNorm#1049615 "Oxycodone Hydrochloride 20 MG/ML Oral Solution"
* RxNorm#1049618 "Oxycodone Hydrochloride 30 MG Oral Tablet"
* RxNorm#1049620 "Oxycodone Hydrochloride 30 MG Oral Tablet [Roxicodone]"
* RxNorm#1049621 "Oxycodone Hydrochloride 5 MG Oral Tablet"
* RxNorm#1049623 "Oxycodone Hydrochloride 5 MG Oral Tablet [Roxicodone]"
* RxNorm#1049625 "Acetaminophen 325 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Percocet]"
* RxNorm#1049635 "Acetaminophen 325 MG / Oxycodone Hydrochloride 2.5 MG Oral Tablet"
* RxNorm#1049637 "Acetaminophen 325 MG / Oxycodone Hydrochloride 2.5 MG Oral Tablet [Percocet]"
* RxNorm#1049640 "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet [Percocet]"
* RxNorm#1049642 "Acetaminophen 325 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet [Percocet]"
* RxNorm#1049647 "Acetaminophen 500 MG / Oxycodone Hydrochloride 7.5 MG Oral Tablet [Percocet]"
* RxNorm#1049650 "Acetaminophen 650 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Percocet]"
* RxNorm#1049651 "Acetaminophen 500 MG / Oxycodone Hydrochloride 10 MG Oral Tablet"
* RxNorm#1049655 "Acetaminophen 500 MG / Oxycodone Hydrochloride 10 MG Oral Tablet [Xolox]"
* RxNorm#1049658 "Acetaminophen 500 MG / Oxycodone Hydrochloride 5 MG Oral Capsule"
* RxNorm#1049683 "Oxycodone Hydrochloride 10 MG Oral Tablet"
* RxNorm#1049686 "Oxycodone Hydrochloride 20 MG Oral Tablet"