/*

===========================================
filename:
Purpose:
Author:
Notes:
===========================================
*/


DROP VIEW IF EXISTS patient_medications_list;

CREATE VIEW patient_medications_list AS

SELECT patient_id, prescription_id, medication, doctor_id
FROM prescriptions
WHERE patient_id=602
ORDER BY prescription_date DESC, doctor_id ASC
;
