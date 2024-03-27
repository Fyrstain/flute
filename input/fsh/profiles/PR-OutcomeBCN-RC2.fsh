Profile: PR_OutcomeBCN_RC2
Parent: Observation
Id: PR-OutcomeBCN-RC2
Title: "Observation: Outcome BCN-RC 2"
Description: "This profile represents the outcome for BCN-RC 2 ISUP-GG."
* code = $sct#385377005 "Gleason grade finding for prostatic cancer"
* subject 1.. 
* subject only Reference(Patient)
* valueCodeableConcept 1..1
* valueCodeableConcept from VS_GleasonGrade (required)
* component ..0
