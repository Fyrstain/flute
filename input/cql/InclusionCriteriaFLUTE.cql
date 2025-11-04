library InclusionCriteriaFLUTE version '1.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers

codesystem "LOINC": 'http://loinc.org'

codesystem "SNOMED": 'http://snomed.info/sct'

code "psa": '2857-1' from "LOINC" display 'Prostate specific antigen, Blood'
code "dre": '410006001' from "SNOMED" display 'Digital examination of rectum'
code "susceptible": '131196009' from "SNOMED" display 'susceptible'
code "biopsy": '86273004' from "SNOMED" display 'Biopsy'

context Patient 

define "hasElevatedPsa":
    exists([Observation:"psa"] O where O.status = 'final' and O.value >= 3 'ng/mL')


define "isAbnormalDre":
    exists([Procedure: "dre"] P where P.status = 'completed' and P.outcome ~ susceptible)

define "biopsyDate":
    [Procedure: "biopsy"] P where P.status = 'completed'
    return FHIRHelpers.ToDateTime(P.performed as FHIR.dateTime)

define "hasMriWithinOneYearBeforeBiopsy":
    exists([ImagingStudy] IS
        where IS.status = 'available'
          and (IS.started.value > biopsyDate[0] - 1 year)
    )

define "isIncluded": 
    (isAbnormalDre or hasElevatedPsa) and hasMriWithinOneYearBeforeBiopsy