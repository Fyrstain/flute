Instance: EV-PIRADSVersion
InstanceOf: EvidenceVariable
Description: "Lesions detected in mpMRI/bpMRI have to be reported using the Prostate Imaging-Report and Data System (PI-RADS) in version 2.0 or higher."
Usage: #example
* name = "PIRADSV2OrHigher"
* title = "Recruitment variable: PIRADS Version"
* status = #draft
* date = "2024-04-02T12:00:00.088Z"
* characteristic[+].description = "Lesion reporting using PI-RADS version 2.0 or higher."
* characteristic[=].definitionDataRequirement.type = #Device
* characteristic[=].definitionDataRequirement.profile = Canonical(PIRADSDevice)

