Alias:   SCT = http://snomed.info/sct

Profile: EchocardioGraphy
Parent: Procedure
Id: gecco-observation-echocardioGraphy
Title: "Echocardio graphy"
Description: "The Echocardio graphy findings that have been observed"
* name 1..*


* communication 0..0
*^status = #draft
* extension contains ProcedureExtension named Procedure 0..*
* basedOn only Reference
* partOf only Reference
* value[x] only CodeableConcept
* valueCodeableConcept from echocardioGraphyValueSet (extensible)


Extension: ProcedureExtension
Id: mcode-proceudre-extension
Title: "Procedure Extension"
Description: "The procedures of echocardiography"


ValueSet: echocardioGraphyValueSet
Id: "Echocardio graphy Value Set"
Title: echocardio-graphy-value-set
Description: "Codes describing various echocardio graphy findings, taken from SNOMED-CT."
* SCT#40701008 "Echocardiography (procedure)"
* SCT#398166005 "Performed (qualifier value)"
* SCT#373067005 "No (qualifier value)" 
* SCT#373068000 "Undetermined (qualifier value)"

Instance: Echo1
InstanceOf: EchocardioGraphy
* name.given = "Echo1"
* extension[ProcedureExtension].valueCodeableConcept =  SCT#398166005 "performed (procedure)"