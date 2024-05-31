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
* item[=].item[=].answer.valueQuantity.system = "%ucum"
* item[=].item[=].answer.valueQuantity.code = #a

* item[=].item[+].linkId = "type-of-biopsy"
* item[=].item[=].definition = "http://fhir.org#Procedure.code.coding"
* item[=].item[=].text = "Type of biopsy"
* item[=].item[=].answer.valueCoding.system = $loinc
* item[=].item[=].answer.valueCoding.code = #LP200041-4

* item[+].linkId = "observation-psa-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].item.linkId = "psa"
* item[=].item.definition = "http://fhir.org#Observation.value"
* item[=].item.text = "Measure of prostate-specific antigen reported in ng/ml"

* item[+].linkId = "observation-dre-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].item.linkId = "dre"
* item[=].item.definition = "http://fhir.org#Observation.interpretation"
* item[=].item.text = "Results of digital rectal examination"

* item[+].linkId = "observation-prostate-volume-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].item.linkId = "prostate-volume"
* item[=].item.definition = "http://fhir.org#Observation.valueQuantity"
* item[=].item.text = "Prostate volume in cc"

* item[+].linkId = "observation-pirads-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"