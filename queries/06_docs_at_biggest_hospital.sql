/*
===============================================
Filename:
Purpose: creates a list of doctors at the largest hospital.
Author: Kiniun
Notes: 
===============================================

*/

DROP VIEW IF EXISTS doctors_at_largest_hospital;
CREATE VIEW doctors_at_largest_hospital AS
SELECT doctors.name, doctors.doctor_id
FROM doctors
INNER JOIN hospitals
ON doctors.hospital_id=hospitals.hospital_id
WHERE hospitals.size=
(
SELECT MAX(size) AS largest_hospital
FROM hospitals
);
