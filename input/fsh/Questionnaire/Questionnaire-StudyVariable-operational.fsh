Instance: Questionnaire-StudyVariable-operational
InstanceOf: sdc-questionnaire-extr-defn
Usage: #definition
* url = Canonical(Questionnaire-StudyVariable-operational)
* version = "2.1.0"
* name = "StudyVariableExtractionOperational"
* title = "Study variable Extraction 2.1.0 operational"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2026-02-10"
* description = "Study variable extractable questionnaire operational"

* item[+].linkId = "g-proc"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure"
* item[=].text = "Procedure Biopsy group"
* item[=].type = #group
* item[=].required = false

* item[=].item[+].linkId = "type-of-biopsy"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.category.coding"
* item[=].item[=].text = "Type of biopsy"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = Canonical(VS_BiopsyType)

* item[=].item[+].linkId = "procedure-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.status"
* item[=].item[=].text = "Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].code = $sct#86273004
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $event-status#completed
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "age-at-biopsy-system"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.performedAge.system"
* item[=].item[=].text = "Age at biopsy (system)"
* item[=].item[=].type = #url
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueUri = "http://unitsofmeasure.org"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true

* item[=].item[+].linkId = "age-at-biopsy-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.performedAge.code"
* item[=].item[=].text = "Age at biopsy (code)"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueString = "a"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true

* item[=].item[+].linkId = "age-at-biopsy"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.performedAge.value"
* item[=].item[=].code = $sct#86273004
* item[=].item[=].text = "Age at biopsy (in years)"
* item[=].item[=].type = #decimal
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "biopsy"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.code.coding"
* item[=].item[=].text = "Biopsy"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $sct#86273004 "Biopsy"
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "biopsy-bodySite"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.bodySite.coding"
* item[=].item[=].code = $sct#86273004
* item[=].item[=].text = "Biopsy bodySite"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption.valueCoding = $sct#41216001 "Prostatic structure (body structure)"
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "biopsy-outcome"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-Biopsy#Procedure.outcome.coding"
* item[=].item[=].code = $sct#365855009
* item[=].item[=].text = "Biopsy outcome"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = Canonical(VS-BiopsyOutcome)

* item[+].linkId = "g-fam-hist"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory"
* item[=].text = "Family history group"
* item[=].type = #group
* item[=].required = false
* item[=].code = $sct#399068003

* item[=].item[+].linkId = "family-history-pca"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.condition.code.coding"
* item[=].item[=].text = "Family history of prostate cancer"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = Canonical(VS-PCa)

* item[=].item[+].linkId = "family-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.status"
* item[=].item[=].text = "Family Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $history-status#completed
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "family-relationship"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.relationship.coding"
* item[=].item[=].text = "Family relationship"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $v3-RoleCode#FAMMEMB
* item[=].item[=].answerOption.initialSelected = true

* item[+].linkId = "g-obs-psa"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateSpecificAntigen#Observation"
* item[=].type = #group
* item[=].text = "Observation PSA group"
* item[=].required = false

* item[=].item[+].linkId = "psa"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateSpecificAntigen#Observation.value"
* item[=].item[=].text = "Measure of prostate-specific antigen reported in ng/ml" 
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#2857-1

* item[=].item[+].linkId = "psa-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateSpecificAntigen#Observation.code.coding"
* item[=].item[=].text = "PSA code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "psa-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateSpecificAntigen#Observation.status"
* item[=].item[=].text = "PSA Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#2857-1
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = http://hl7.org/fhir/observation-status#final
* item[=].item[=].answerOption.initialSelected = true

* item[+].linkId = "g-proc-dre"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure"
* item[=].type = #group
* item[=].text = "Procedure DRE group"
* item[=].required = false

* item[=].item[+].linkId = "dre"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure.outcome.coding"
* item[=].item[=].text = "Results of digital rectal examination"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#410006001
* item[=].item[=].answerValueSet = Canonical (VS_DREOutcomeCode)

* item[=].item[+].linkId = "dre-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure.code.coding"
* item[=].item[=].text = "DRE code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $sct#410006001 "DRE - Digital rectal examination"
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "dre-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure.status"
* item[=].item[=].text = "DRE Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#410006001
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $event-status#completed
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "dre-bodySite"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-DigitalRectalExamination#Procedure.bodySite.coding"
* item[=].item[=].text = "DRE bodySite"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $sct#41216001 "Prostate"
* item[=].item[=].answerOption.initialSelected = true

* item[+].linkId = "g-obs-prost-vol"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation"
* item[=].type = #group
* item[=].text = "Observation Prostate Volume group"
* item[=].required = false

* item[=].item[+].linkId = "prostate-volume"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation.value"
* item[=].item[=].text = "Prostate volume in cc"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#41216001

* item[=].item[+].linkId = "prostate-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation.code.coding"
* item[=].item[=].text = "Prostate volume code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $sct#1297142007 "Volume of prostate"
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "prostate-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation.status"
* item[=].item[=].text = "Prostate volume Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#1297142007
* item[=].item[=].code = $sct#41216001
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = http://hl7.org/fhir/observation-status#final
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "prostate-bodySite"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-ProstateVolume#Observation.bodySite.coding"
* item[=].item[=].text = "Prostate volume bodySite" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $sct#41216001 "Prostate"
* item[=].item[=].answerOption.initialSelected = true

* item[+].linkId = "g-obs-pirads"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-PIRADSScore#Observation"
* item[=].type = #group
* item[=].text = "Observation PI-RADS group"
* item[=].required = false

* item[=].item[+].linkId = "pirads"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-PIRADSScore#Observation.valueCodeableConcept.coding"
* item[=].item[=].text = "PI-RADS score"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#719178004
* item[=].item[=].answerOption[+].valueCoding = $pi-rads#1 "Very low"
* item[=].item[=].answerOption[+].valueCoding = $pi-rads#2 "Low"
* item[=].item[=].answerOption[+].valueCoding = $pi-rads#3 "Intermediate"
* item[=].item[=].answerOption[+].valueCoding = $pi-rads#4 "High"
* item[=].item[=].answerOption[+].valueCoding = $pi-rads#5 "Very high"


* item[=].item[+].linkId = "pirads-code"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-PIRADSScore#Observation.code.coding"
* item[=].item[=].text = "PI-RADS code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate"
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "pirads-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/PR-PIRADSScore#Observation.status"
* item[=].item[=].text = "PI-RADS Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#719178004
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = http://hl7.org/fhir/observation-status#final
* item[=].item[=].answerOption.initialSelected = true


* item[+].linkId = "g-imag"
* item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy"
* item[=].text = "Imaging Study group"
* item[=].type = #group
* item[=].required = false

* item[=].item[+].linkId = "study-id-system"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.identifier.system"
* item[=].item[=].text = "Study ID System"
* item[=].item[=].type = #url
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "study-id-value"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.identifier.value"
* item[=].item[=].text = "Study ID value"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "imagingstudy-status"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.status"
* item[=].item[=].text = "Study Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption.valueCoding = http://hl7.org/fhir/imagingstudy-status#available
* item[=].item[=].answerOption.initialSelected = true

* item[=].item[+].linkId = "imagingstudy-started"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.started"
* item[=].item[=].text = "Study Started DateTime"
* item[=].item[=].type = #dateTime
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "imagingstudy-endpoint"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.endpoint.display"
* item[=].item[=].text = "Study DICOM URL Endpoint"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "g-imaging-series"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.series"
* item[=].item[=].text = "Imaging Study Series group"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "imagingstudy-series-uid"
* item[=].item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.series[+].uid"
* item[=].item[=].item[=].text = "Study Series UID"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false

* item[=].item[=].item[+].linkId = "imagingstudy-series-modality"
* item[=].item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.series[=].modality"
* item[=].item[=].item[=].text = "Study Series Modality"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = "http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html"

* item[=].item[+].linkId = "imagingstudy-note"
* item[=].item[=].definition = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute#ImagingStudy.note.text"
* item[=].item[=].text = "Any metadata relevant to filter the dataset before ML training"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].repeats = false