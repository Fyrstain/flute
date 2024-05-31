Alias: $launchContext = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: Questionnaire-StudyVariable
InstanceOf: sdc-questionnaire-extr-defn
Usage: #definition
* url = "https://flute.com/fhir/Questionnaire/Questionnaire-StudyVariable"
* version = "1.0.0"
* name = "StudyVariableExtraction"
* title = "Study variable Extraction"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2024-03-26"
* description = "Study variable extractable questionnaire"
* jurisdiction = $m49.htm#001 "World"

* item[+].linkId = "procedure-group"
* item[=].definition = "http://fhir.org#Procedure"
* item[=].type = #group
* item[=].required = false

* item[=].item[+].linkId = "patient"
* item[=].item[=].definition = "http://fhir.org#Procedure.subject"
* item[=].item[=].text = "Patient"
* item[=].item[=].type = #reference
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "category"
* item[=].item[=].definition = "http://fhir.org#Procedure.category.coding"
* item[=].item[=].text = "Category"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LP200041-4

* item[=].item[+].linkId = "procedure-status"
* item[=].item[=].definition = "http://fhir.org#Procedure.status"
* item[=].item[=].text = "Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LP200041-4
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/event-status"

* item[=].item[+].linkId = "age-at-biopsy"
* item[=].item[=].definition = "http://fhir.org#Procedure.performed"
* item[=].item[=].text = "Age at biopsy"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LP200041-4

* item[=].item[+].linkId = "type-of-biopsy"
* item[=].item[=].definition = "http://fhir.org#Procedure.code"
* item[=].item[=].text = "Type of biopsy"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LP200041-4
* item[=].item[=].answerValueSet = "https://flute.com/fhir/ValueSet/VS-BiopsyType"

* item[+].linkId = "family-history-group"
* item[=].definition = "http://fhir.org#FamilyMemberHistory"
* item[=].type = #group
* item[=].required = false

* item[=].item[+].linkId = "family-history-pca"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.condition.code"
* item[=].item[=].text = "Family history of prostate cancer"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#399068003

* item[=].item[+].linkId = "family-status"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.status"
* item[=].item[=].text = "Family Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#399068003
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/history-status"

* item[=].item[+].linkId = "family-patient"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.patient"
* item[=].item[=].text = "Family Patient"
* item[=].item[=].type = #reference
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#399068003

* item[+].linkId = "observation-psa-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].type = #group
* item[=].text = "Observation group"
* item[=].required = false

* item[=].item[+].linkId = "psa"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].text = "Measure of prostate-specific antigen reported in ng/ml" 
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LP18193-0

* item[=].item[+].linkId = "psa-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code"
* item[=].item[=].text = "PSA code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LP18193-0

* item[=].item[+].linkId = "psa-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].text = "PSA Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LP18193-0
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/observation-status"

* item[+].linkId = "observation-dre-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].type = #group
* item[=].text = "Observation group"
* item[=].required = false

* item[=].item[+].linkId = "dre"
* item[=].item[=].definition = "http://fhir.org#Observation.interpretation"
* item[=].item[=].text = "Results of digital rectal examination"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LL1478-8
* item[=].item[=].answerValueSet = "https://flute.com/fhir/ValueSet/VS-DREOutcomeCode"

* item[=].item[+].linkId = "dre-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code"
* item[=].item[=].text = "DRE code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LL1478-8

* item[=].item[+].linkId = "dre-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].text = "DRE Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#LL1478-8
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/observation-status"

* item[+].linkId = "observation-prostate-volume-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].type = #group
* item[=].text = "Observation group"
* item[=].required = false

* item[=].item[+].linkId = "prostate-volume"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].text = "Prostate volume in cc"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#118565006
* item[=].item[=].code = $sct#41216001

* item[=].item[+].linkId = "prostate-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code"
* item[=].item[=].text = "Prostate volume code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#118565006

* item[=].item[+].linkId = "prostate-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].text = "Prostate volume Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#118565006
* item[=].item[=].code = $sct#41216001
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/observation-status"

* item[=].item[+].linkId = "prostate-bodySite"
* item[=].item[=].definition = "http://fhir.org#Observation.bodySite"
* item[=].item[=].text = "Prostate volume bodySite" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#41216001

* item[+].linkId = "observation-pirads-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].type = #group
* item[=].text = "Observation group"
* item[=].required = false

* item[=].item[+].linkId = "pirads"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].text = "PI-RADS score"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#52988006
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5

* item[=].item[+].linkId = "pirads-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code"
* item[=].item[=].text = "PI-RADS code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#52988006

* item[=].item[+].linkId = "pirads-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].text = "PI-RADS Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#52988006
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/observation-status"