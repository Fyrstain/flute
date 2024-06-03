Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org

Instance: Questionnaire-StudyVariable-S2-null-response
InstanceOf: QuestionnaireResponse
Usage: #example
* contained = Questionnaire-StudyVariable
* extension.url = "http://hl7.org/fhir/us/davinci-dtr/StructureDefinition/dtr-questionnaireresponse-questionnaire"
* extension.valueReference = Reference(Questionnaire-StudyVariable)
* questionnaire = "https://flute.com/fhir/Questionnaire/Questionnaire-StudyVariable"
* status = #in-progress
* subject = Reference(EXP-S2-Patient)
* item[+].linkId = "procedure-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure"
* item[=].item[+].linkId = "patient"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.subject"
* item[=].item[=].text = "Patient"
* item[=].item[=].answer.valueReference.identifier.value = "urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a"

* item[=].item[+].linkId = "type-of-biopsy"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.category.coding"
* item[=].item[=].text = "Type of biopsy"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #884001

* item[=].item[+].linkId = "procedure-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.status"
* item[=].item[=].text = "Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].answer.valueCoding.code = #completed

* item[=].item[+].linkId = "age-at-biopsy"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.performed"
* item[=].item[=].text = "Age at biopsy"
* item[=].item[=].answer.valueQuantity.value = 54
* item[=].item[=].answer.valueQuantity.system = "http://unitsofmeasure.org"
* item[=].item[=].answer.valueQuantity.code = #a

* item[=].item[+].linkId = "biopsy"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.code.coding"
* item[=].item[=].text = "Biopsy"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #86273004
* item[=].item[=].answer.valueCoding.display = "Biopsy"

* item[=].item[+].linkId = "biopsy-bodySite"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.bodySite.coding"
* item[=].item[=].text = "Biopsy bodySite"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #41216001
* item[=].item[=].answer.valueCoding.display = "Prostatic structure (body structure)"

* item[+].linkId = "family-history-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory"
* item[=].item[+].linkId = "family-history-pca"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.condition.code.coding"
* item[=].item[=].text = "Family history of prostate cancer"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #1259388006

* item[=].item[+].linkId = "family-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.status"
* item[=].item[=].text = "Family Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/history-status"
* item[=].item[=].answer.valueCoding.code = #completed

* item[=].item[+].linkId = "family-patient"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.patient"
* item[=].item[=].text = "Family Patient"
* item[=].item[=].answer.valueReference.identifier.value = "urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a"

* item[=].item[+].linkId = "family-relationship"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.relationship.coding"
* item[=].item[=].text = "Family relationship"
* item[=].item[=].answer.valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* item[=].item[=].answer.valueCoding.code = #FTH

* item[+].linkId = "observation-psa-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation"
* item[=].text = "Observation group"
* item[=].item[+].linkId = "psa"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation.value"
* item[=].item[=].text = "Measure of prostate-specific antigen reported in ng/ml"
* item[=].item[=].answer.valueQuantity.value = 1
* item[=].item[=].answer.valueQuantity.system = "http://unitsofmeasure.org"
* item[=].item[=].answer.valueQuantity.unit = "ng/mL"

* item[=].item[+].linkId = "psa-code"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation.code.coding"
* item[=].item[=].text = "PSA code"
* item[=].item[=].answer.valueCoding.system = $loinc
* item[=].item[=].answer.valueCoding.code = #2857-1
* item[=].item[=].answer.valueCoding.display = "Prostate specific Ag"

* item[=].item[+].linkId = "psa-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation.status"
* item[=].item[=].text = "PSA Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].answer.valueCoding.code = #final

* item[=].item[+].linkId = "psa-subject"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation.subject"
* item[=].item[=].text = "PSA subject"
* item[=].item[=].answer.valueReference.identifier.value = "urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a"

* item[+].linkId = "procedure-dre-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure"
* item[=].text = "Procedure DRE group"
* item[=].item[+].linkId = "dre"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.outcome.coding"
* item[=].item[=].text = "Results of digital rectal examination"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #17621005

* item[=].item[+].linkId = "dre-code"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.code.coding"
* item[=].item[=].text = "DRE code"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #410006001
* item[=].item[=].answer.valueCoding.display = "digital rectal examination"

* item[=].item[+].linkId = "dre-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.status"
* item[=].item[=].text = "DRE Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].answer.valueCoding.code = #completed

* item[=].item[+].linkId = "dre-bodySite"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.bodySite.coding"
* item[=].item[=].text = "DRE bodySite"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #41216001
* item[=].item[=].answer.valueCoding.display = "Prostatic structure (body structure)"

* item[=].item[+].linkId = "dre-subject"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.subject"
* item[=].item[=].text = "DRE subject"
* item[=].item[=].answer.valueReference.identifier.value = "urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a"

* item[+].linkId = "observation-prostate-volume-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation"
* item[=].text = "Observation group"
* item[=].item[+].linkId = "prostate-volume"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.value"
* item[=].item[=].text = "Prostate volume in cc"
* item[=].item[=].answer.valueQuantity.value = 30
* item[=].item[=].answer.valueQuantity.system = "http://unitsofmeasure.org"
* item[=].item[=].answer.valueQuantity.unit = "cc"

* item[=].item[+].linkId = "prostate-code"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.code.coding"
* item[=].item[=].text = "Prostate volume code"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #1297142007
* item[=].item[=].answer.valueCoding.display = "Volume of prostate"

* item[=].item[+].linkId = "prostate-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.status"
* item[=].item[=].text = "Prostate volume Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].answer.valueCoding.code = #final

* item[=].item[+].linkId = "prostate-bodySite"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.bodySite.coding"
* item[=].item[=].text = "Prostate volume bodySite"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #41216001
* item[=].item[=].answer.valueCoding.display = "Prostatic structure (body structure)"

* item[=].item[+].linkId = "prostate-subject"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.subject"
* item[=].item[=].text = "Prostate subject"
* item[=].item[=].answer.valueReference.identifier.value = "urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a"

* item[+].linkId = "observation-pirads-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation"
* item[=].text = "Observation group"
* item[=].item[+].linkId = "pirads"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation.value"
* item[=].item[=].text = "PI-RADS score"
* item[=].item[=].answer.valueInteger = 3

* item[=].item[+].linkId = "pirads-code"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation.code.coding"
* item[=].item[=].text = "PI-RADS code"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #719178004
* item[=].item[=].answer.valueCoding.display = "Multiparametric magnetic resonance imaging of prostate"

* item[=].item[+].linkId = "pirads-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation.status"
* item[=].item[=].text = "PI-RADS Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].answer.valueCoding.code = #final

* item[=].item[+].linkId = "pirad-subject"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation.subject"
* item[=].item[=].text = "PI-RADS subject"
* item[=].item[=].answer.valueReference.identifier.value = "urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a"