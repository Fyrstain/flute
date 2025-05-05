Instance: EV-BiopsyTiming
InstanceOf: EvidenceVariable
Description: "A prostate biopsy is performed within one year following an mpMRI/bpMRI."
Usage: #example
* name = "ProstateBiopsyTimingAfterMRI"
* title = "Recruitment variable: Timing biopsy"
* status = #draft
* date = "2024-04-02T12:00:00.088Z"
* characteristic[+].description = "Prostate biopsy performed within one year after mpMRI/bpMRI."
* characteristic[=].definitionExpression.description = "mpMRI/bpMRI (SNOMED code: 75691003) is performed within one year prior to  Prostate biopsy(SNOMED code: 65575008)."
* characteristic[=].definitionExpression.language = #text/cql
* characteristic[=].definitionExpression.expression = "exists([Procedure: code in \"75691003|SNOMED\"] P with [Procedure: code in \"65575008|SNOMED\"] E such that P.performedDateTime + 1 year after R.performedDateTime)"
* characteristic[+].description = "Exclusion for mpMRI/bpMRI not prior to biopsy or older than one year"
* characteristic[=].exclude = true
* characteristic[=].definitionExpression.description = "Excludes participants if mpMRI/bpMRI(SNOMED code: 75691003) is not performed before the biopsy(SNOMED code: 65575008) or if it is performed more than one year before the biopsy date."
* characteristic[=].definitionExpression.language = #text/cql
* characteristic[=].definitionExpression.expression = "exists([Procedure: code in \"75691003|SNOMED\"] P with [Procedure: code in \"65575008|SNOMED\"] E such that P.performedDateTime + 1 year before R.performedDateTime) or not exists([Procedure: code in \"75691003|SNOMED\"])"
