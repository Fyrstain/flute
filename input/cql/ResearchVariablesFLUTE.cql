library ResearchVariablesFLUTE version '1.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers

codesystem "LOINC": 'http://loinc.org' 

codesystem "SNOMED": 'http://snomed.info/sct'

code "psA": '2857-1' from "LOINC" display 'Prostate specific Ag [Mass/volume] in Serum or Plasma'
code "drE": '410006001' from "SNOMED" display 'Digital examination of rectum'
code "susceptible": '131196009' from "SNOMED" display 'susceptible'
code "biopsy": '86273004' from "SNOMED" display 'Biopsy'
code "volumeOfProstate": '1297142007' from "SNOMED" display 'Volume of prostate'
code "mri": '719178004' from "SNOMED" display 'Multiparametric magnetic resonance imaging of prostate'
code "repeated": '27582007' from "SNOMED" display 'Repeated'

code "RMNP": '1098981000119101' from "SNOMED" display 'Recurrent malignant neoplasm of prostate'
code "MIDCP": '1264500002' from "SNOMED" display 'Metastatic infiltrating duct carcinoma to prostate'
code "PSCNPr": '1259710009' from "SNOMED" display 'Primary small cell neuroendocrine carcinoma of prostate'
code "PECP": '1259674002' from "SNOMED" display 'Primary endometrioid carcinoma of prostate'
code "PACP": '1259672003' from "SNOMED" display 'Primary adenocarcinoma of prostate'
code "PIDCP": '1259669005' from "SNOMED" display 'Primary infiltrating duct carcinoma of prostate'
code "PACCProst": '1259666003' from "SNOMED" display 'Primary acinar cell cystadenocarcinoma of prostate'
code "PCP": '1259388006' from "SNOMED" display 'Primary carcinoma of prostate'
code "MACP": '1251485006' from "SNOMED" display 'Metastatic adenocarcinoma to prostate'
code "MSCNPr": '1240359008' from "SNOMED" display 'Metastatic small cell neuroendocrine carcinoma to prostate'
code "MSCP": '1240353009' from "SNOMED" display 'Metastatic squamous cell carcinoma to prostate'
code "MCP": '1237422007' from "SNOMED" display 'Metastatic carcinoma to prostate'
code "SCNP": '1208457007' from "SNOMED" display 'Small cell neuroendocrine carcinoma of prostate'
code "IDCPr": '823017009' from "SNOMED" display 'Infiltrating duct carcinoma of prostate'
code "ACCCPr": '822970008' from "SNOMED" display 'Acinar cell cystadenocarcinoma of prostate'
code "HSPC": '722103009' from "SNOMED" display 'Hormone sensitive prostate cancer'
code "FPC": '715412008' from "SNOMED" display 'Familial prostate cancer'
code "NHLPr": '449318001' from "SNOMED" display 'Non-Hodgkin’s lymphoma of prostate'
code "FNHLPr": '448217003' from "SNOMED" display 'Follicular non-Hodgkin’s lymphoma of prostate'
code "DNHLPr": '448213004' from "SNOMED" display 'Diffuse non-Hodgkin’s lymphoma of prostate'
code "HRPC": '427492003' from "SNOMED" display 'Hormone refractory prostate cancer'
code "SCCPr": '399590005' from "SNOMED" display 'Squamous cell carcinoma of prostate'
code "ADCPr": '399490008' from "SNOMED" display 'Adenocarcinoma of prostate'
code "MTPr": '399068003' from "SNOMED" display 'Malignant tumor of prostate'
code "MTPBExt": '369485004' from "SNOMED" display 'Malignant tumor involving prostate by direct extension from bladder'
code "LRMPr": '314969001' from "SNOMED" display 'Local recurrence of malignant tumour of prostate'
code "ECP": '278060005' from "SNOMED" display 'Endometrioid carcinoma of prostate'
code "CaPr": '254900004' from "SNOMED" display 'Carcinoma of prostate'
code "MMNPr": '94503003' from "SNOMED" display 'Metastatic malignant neoplasm to prostate'
code "PMNPr": '93974005' from "SNOMED" display 'Primary malignant neoplasm of prostate'

concept "pca": {RMNP, MIDCP, PSCNPr, PECP, PACP, PIDCP, PACCProst, PCP, MACP, MSCNPr, MSCP, MCP, SCNP, IDCPr, ACCCPr, HSPC, FPC, NHLPr, FNHLPr, DNHLPr, HRPC, SCCPr, ADCPr, MTPr, MTPBExt, LRMPr, ECP, CaPr, MMNPr, PMNPr} display 'Prostate malignant neoplasms'

context Patient

define "ageAtBiopsy":
    [Procedure: "biopsy"] P where P.status = 'completed'
    return AgeInYearsAt(FHIRHelpers.ToDateTime(P.performed as FHIR.dateTime))

define "pcaFamilyHistory":
    if exists([FamilyMemberHistory] F where F.status = 'completed' and F.condition[0].code ~ "pca") then 1
    else 0

define "typeOfBiopsy":
    if exists([Procedure: "biopsy"] P where P.status = 'completed' and P.category ~ "repeated") then 2
    else 0

define "psa": 
    [Observation:"psA"] O where O.status = 'final'
    return O.value

define "dre":
    if exists([Procedure: "drE"] P  where P.status = 'completed' and  P.outcome ~ "susceptible") then 1
    else 0

define "prostateVolume":
    [Observation:"volumeOfProstate"] O where O.status = 'final'
    return O.value

define "pirads":
    [Observation:"mri"] O where O.status = 'final'
    return O.value