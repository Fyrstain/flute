Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org

Instance: Questionnaire-StudyVariable-null-response
InstanceOf: QuestionnaireResponse
Usage: #example
* contained = Questionnaire-StudyVariable
* extension.url = "http://hl7.org/fhir/us/davinci-dtr/StructureDefinition/dtr-questionnaireresponse-questionnaire"
* extension.valueReference = Reference(Questionnaire-StudyVariable)
* questionnaire = "https://flute.com/fhir/Questionnaire/Questionnaire-StudyVariable"
* status = #in-progress
* subject = Reference(Patient)
* item[+].linkId = "procedure-group"
* item[=].definition = "http://fhir.org#Procedure"
* item[=].item[+].linkId = "patient"
* item[=].item[=].definition = "http://fhir.org#Procedure.subject"
* item[=].item[=].text = "Patient"
* item[=].item[=].answer.valueReference.identifier.value = "1234"

* item[=].item[+].linkId = "category"
* item[=].item[=].definition = "http://fhir.org#Procedure.category.coding"
* item[=].item[=].text = "Patient"
* item[=].item[=].answer.valueCoding.system = $loinc
* item[=].item[=].answer.valueCoding.code = #LP200041-4

* item[=].item[+].linkId = "procedure-status"
* item[=].item[=].definition = "http://fhir.org#Procedure.status"
* item[=].item[=].text = "Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/event-status"
* item[=].item[=].answer.valueCoding.code = #completed

* item[=].item[+].linkId = "age-at-biopsy"
* item[=].item[=].definition = "http://fhir.org#Procedure.performed"
* item[=].item[=].text = "Age at biopsy"
* item[=].item[=].answer.valueQuantity.value = 56
* item[=].item[=].answer.valueQuantity.system = "http://unitsofmeasure.org/"
* item[=].item[=].answer.valueQuantity.code = #a

* item[=].item[+].linkId = "type-of-biopsy"
* item[=].item[=].definition = "http://fhir.org#Procedure.code.coding"
* item[=].item[=].text = "Type of biopsy"
* item[=].item[=].answer.valueCoding.system = $loinc
* item[=].item[=].answer.valueCoding.code = #LP200041-4

* item[+].linkId = "family-history-group"
* item[=].definition = "http://fhir.org#FamilyMemberHistory"
* item[=].item[+].linkId = "family-history-pca"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.condition.code.coding"
* item[=].item[=].text = "Family history of prostate cancer"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #399068003

* item[=].item[+].linkId = "family-status"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.status"
* item[=].item[=].text = "Family Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/history-status"
* item[=].item[=].answer.valueCoding.code = #completed

* item[=].item[+].linkId = "family-patient"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.patient"
* item[=].item[=].text = "Family Patient"
* item[=].item[=].answer.valueReference.identifier.value = "1234"

* item[=].item[+].linkId = "family-relationship"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.relationship.coding"
* item[=].item[=].text = "Family relationship"
* item[=].item[=].answer.valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* item[=].item[=].answer.valueCoding.code = #FAMMEMB

* item[+].linkId = "observation-psa-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].item[+].linkId = "psa"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].text = "Measure of prostate-specific antigen reported in ng/ml"
* item[=].item[=].answer.valueQuantity.value = 10
* item[=].item[=].answer.valueQuantity.system = "http://unitsofmeasure.org/"
* item[=].item[=].answer.valueQuantity.unit = "ng/ml"

* item[=].item[+].linkId = "psa-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code.coding"
* item[=].item[=].text = "PSA code"
* item[=].item[=].answer.valueCoding.system = $loinc
* item[=].item[=].answer.valueCoding.code = #LP18193-0

* item[=].item[+].linkId = "psa-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].text = "PSA Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].answer.valueCoding.code = #registered

* item[+].linkId = "observation-dre-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].item[+].linkId = "dre"
* item[=].item[=].definition = "http://fhir.org#Observation.interpretation.coding"
* item[=].item[=].text = "Results of digital rectal examination"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #17621005

* item[=].item[+].linkId = "dre-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code.coding"
* item[=].item[=].text = "DRE code"
* item[=].item[=].answer.valueCoding.system = $loinc
* item[=].item[=].answer.valueCoding.code = #LL1478-8

* item[=].item[+].linkId = "dre-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].text = "DRE Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].answer.valueCoding.code = #registered

* item[+].linkId = "observation-prostate-volume-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].item[+].linkId = "prostate-volume"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].text = "Prostate volume in cc"
* item[=].item[=].answer.valueQuantity.value = 2
* item[=].item[=].answer.valueQuantity.system = "http://unitsofmeasure.org/"
* item[=].item[=].answer.valueQuantity.unit = "cc"

* item[=].item[+].linkId = "prostate-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code.coding"
* item[=].item[=].text = "Prostate volume code"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #118565006

* item[=].item[+].linkId = "prostate-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].text = "Prostate volume Status"
* item[=].item[=].answer.valueCoding.system = "http://hl7.org/fhir/observation-status"
* item[=].item[=].answer.valueCoding.code = #registered

* item[=].item[+].linkId = "prostate-bodySite"
* item[=].item[=].definition = "http://fhir.org#Observation.bodySite.coding"
* item[=].item[=].text = "Prostate volume bodySite"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #41216001

* item[+].linkId = "observation-pirads-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].item[+].linkId = "pirads"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].text = "PI-RADS score"
* item[=].item[=].answer.valueInteger = 2

* item[=].item[+].linkId = "pirads-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code.coding"
* item[=].item[=].text = "PI-RADS code"
* item[=].item[=].answer.valueCoding.system = $sct
* item[=].item[=].answer.valueCoding.code = #52988006

* item[=].item[+].linkId = "pirads-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].text = "PI-RADS Status"
* item[=].item[=].answer.valueString = "registered"