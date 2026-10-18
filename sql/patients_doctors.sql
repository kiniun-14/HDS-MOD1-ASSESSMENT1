/*
==
filename:
purpose: Creates a table showing the doctors assigned to each patients. The data is extracted from the patients and doctors table using a left join. This join allows us to see all patients including those who have not been allocated to a doctor.
author: Ari Ajibade
note:
==
*/

DROP TABLE IF EXISTS patients_doctors;

CREATE TABLE patients_doctors AS
SELECT  patients.patient_id, patients.name, patients.date_of_birth, patients.address, doctors.name, doctors.doctor_id
FROM patients 
LEFT JOIN  doctors
ON patients.doctor_id = doctors.doctor_id
;
