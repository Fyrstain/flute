Instance: Questionnaire-StudyVariable-S2
InstanceOf: QuestionnaireResponse
Description: "The Questionnaire response for the Patient excluded S2."
Usage: #example
//* contained = Questionnaire-StudyVariable
/* * extension.url = "http://hl7.org/fhir/us/davinci-dtr/StructureDefinition/dtr-questionnaireresponse-questionnaire"
* extension.valueReference = Reference(Questionnaire-StudyVariable) */
* questionnaire = Canonical(Questionnaire-StudyVariable)
* status = #in-progress
* subject = Reference(urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a)
* item[+].linkId = "g-proc"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure"

* item[=].item[+].linkId = "type-of-biopsy"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.category.coding"
* item[=].item[=].text = "Type of biopsy"
* item[=].item[=].answer.valueCoding = $sct#884001

* item[=].item[+].linkId = "procedure-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.status"
* item[=].item[=].text = "Status"
* item[=].item[=].answer.valueCoding = $event-status#completed

* item[=].item[+].linkId = "age-at-biopsy-system"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.performedAge.system"
* item[=].item[=].text = "Age at biopsy (system)"
* item[=].item[=].answer.valueUri = "http://unitsofmeasure.org"

* item[=].item[+].linkId = "age-at-biopsy-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.performedAge.code"
* item[=].item[=].text = "Age at biopsy (code)"
* item[=].item[=].answer.valueString = "a"

* item[=].item[+].linkId = "age-at-biopsy"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.performedAge.value"
* item[=].item[=].text = "Age at biopsy (in years)"
* item[=].item[=].answer.valueDecimal = 54

* item[=].item[+].linkId = "biopsy"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.code.coding"
* item[=].item[=].text = "Biopsy"
* item[=].item[=].answer.valueCoding = $sct#86273004  "Biopsy"

* item[=].item[+].linkId = "biopsy-bodySite"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.bodySite.coding"
* item[=].item[=].text = "Biopsy bodySite"
* item[=].item[=].answer.valueCoding = $sct#41216001  "Prostate"

* item[+].linkId = "g-fam-hist"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory"
* item[=].item[+].linkId = "family-history-pca"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.condition.code.coding"
* item[=].item[=].text = "Family history of prostate cancer"
* item[=].item[=].answer.valueCoding = $sct#1259388006

* item[=].item[+].linkId = "family-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.status"
* item[=].item[=].text = "Family Status"
* item[=].item[=].answer.valueCoding = $history-status#completed

* item[=].item[+].linkId = "family-relationship"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.relationship.coding"
* item[=].item[=].text = "Family relationship"
// * item[=].item[=].answer.valueCoding = $v3-RoleCode#FTH
* item[=].item[=].answer.valueCoding = $v3-RoleCode#FAMMEMB // Fixed in the questionnaire

* item[+].linkId = "g-obs-psa"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateSpecificAntigen#Observation"
* item[=].text = "Observation PSA group"
* item[=].item[+].linkId = "psa"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateSpecificAntigen#Observation.value"
* item[=].item[=].text = "Measure of prostate-specific antigen reported in ng/ml"
* item[=].item[=].answer.valueQuantity = 1 'ng/mL'

* item[=].item[+].linkId = "psa-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateSpecificAntigen#Observation.code.coding"
* item[=].item[=].text = "PSA code"
* item[=].item[=].answer.valueCoding = $loinc#2857-1  "Prostate specific Ag [Mass/volume] in Serum or Plasma"

* item[=].item[+].linkId = "psa-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateSpecificAntigen#Observation.status"
* item[=].item[=].text = "PSA Status"
* item[=].item[=].answer.valueCoding = $observation-status#final

* item[+].linkId = "g-proc-dre"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure"
* item[=].text = "Procedure DRE group"
* item[=].item[+].linkId = "dre"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure.outcome.coding"
* item[=].item[=].text = "Results of digital rectal examination"
* item[=].item[=].answer.valueCoding = $sct#17621005

* item[=].item[+].linkId = "dre-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure.code.coding"
* item[=].item[=].text = "DRE code"
* item[=].item[=].answer.valueCoding = $sct#410006001  "DRE - Digital rectal examination"

* item[=].item[+].linkId = "dre-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure.status"
* item[=].item[=].text = "DRE Status"
* item[=].item[=].answer.valueCoding = $event-status#completed

* item[=].item[+].linkId = "dre-bodySite"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure.bodySite.coding"
* item[=].item[=].text = "DRE bodySite"
* item[=].item[=].answer.valueCoding = $sct#41216001  "Prostate"

* item[+].linkId = "g-obs-prost-vol"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation"
* item[=].text = "Observation Prostate Volume group"
* item[=].item[+].linkId = "prostate-volume"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation.value"
* item[=].item[=].text = "Prostate volume in cc"
* item[=].item[=].answer.valueQuantity = 30 'cm3'

* item[=].item[+].linkId = "prostate-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation.code.coding"
* item[=].item[=].text = "Prostate volume code"
* item[=].item[=].answer.valueCoding = $sct#1297142007  "Volume of prostate"

* item[=].item[+].linkId = "prostate-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation.status"
* item[=].item[=].text = "Prostate volume Status"
* item[=].item[=].answer.valueCoding = $observation-status#final

* item[=].item[+].linkId = "prostate-bodySite"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation.bodySite.coding"
* item[=].item[=].text = "Prostate volume bodySite"
* item[=].item[=].answer.valueCoding = $sct#41216001  "Prostate"

* item[+].linkId = "g-obs-pirads"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-PIRADSScore#Observation"
* item[=].text = "Observation PI-RADS group"
* item[=].item[+].linkId = "pirads"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-PIRADSScore#Observation.valueCodeableConcept.coding"
* item[=].item[=].text = "PI-RADS score"
* item[=].item[=].answer.valueCoding = $pi-rads#3 "Intermediate"

* item[=].item[+].linkId = "pirads-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-PIRADSScore#Observation.code.coding"
* item[=].item[=].text = "PI-RADS code"
* item[=].item[=].answer.valueCoding = $sct#719178004  "Multiparametric magnetic resonance imaging of prostate"

* item[=].item[+].linkId = "pirads-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-PIRADSScore#Observation.status"
* item[=].item[=].text = "PI-RADS Status"
* item[=].item[=].answer.valueCoding = $observation-status#final