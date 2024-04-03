Alias: $sct = http://snomed.info/sct

Profile: PIRADSDevice
Parent: Device
Id: PIRADSDevice
Title: "PI-RADS system"
Description: "A Device profile for PI-RADS system."
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Flute Project"
* ^contact[0].name = "Flute Project"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://flute.eu/"
* ^contact[+].name = "Flute Project"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://flute.eu/"
* ^jurisdiction.coding.system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction.coding.code = #150
* ^jurisdiction.coding.display = "Europe"
* identifier.system = "http://flute.eu/devices"
* identifier.value = "PI-RADS"
* version 1..1
* version. 1..1
* version.value obeys rule-1

Invariant: rule-1
Description: "Observation.value[x]:valueQuantity.value must contain at most one decimal"
* severity = #error
* expression = "$this.matches('^[2-9].*')"
