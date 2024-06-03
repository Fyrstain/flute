Instance: EXP-S2-ExcludedPatient
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2014-08-18T01:43:30Z"
* type = #transaction
* entry[+].resource = EXP-S2-Procedure-Biopsy
* entry[=].request.method = #DELETE
* entry[=].request.url = "Procedure/{{ProBiopsyId}}"
* entry[+].resource = EXP-S2-FamilyMemberHistory-PCa
* entry[=].request.method = #DELETE
* entry[=].request.url = "FamilyMemberHistory/{{FamPCId}}"
* entry[+].resource = EXP-S2-Observation-PSA
* entry[=].request.method = #DELETE
* entry[=].request.url = "Observation/{{ObsPSAId}}"
* entry[+].resource = EXP-S2-Procedure-DRE
* entry[=].request.method = #DELETE
* entry[=].request.url = "Procedure/{{ProDREId}}"
* entry[+].resource = EXP-S2-Observation-PV
* entry[=].request.method = #DELETE
* entry[=].request.url = "Observation/{{ObsPVId}}"
* entry[+].resource = EXP-S2-Observation-PIRADS
* entry[=].request.method = #DELETE
* entry[=].request.url = "Observation/{{ObsPIRADSId}}"
* entry[+].resource = EXP-S2-Patient
* entry[=].request.method = #DELETE
* entry[=].request.url = "Patient/{{PatientId}}"