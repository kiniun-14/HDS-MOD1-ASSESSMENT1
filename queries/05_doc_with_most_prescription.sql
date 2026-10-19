/*
===============================================
Filename:
Purpose: creates a list of top 5 doctors with highest number of prescriptions.
Author: Kiniun
Notes: Table limited to 5 rows to allow for multiple doctors with the same number of prescriptions.
Created as a view to allow for easy retrievals
===============================================
*/
DROP VIEW IF EXISTS doctors_with_most_prescriptions;

CREATE VIEW doctors_with_most_prescriptions AS
SELECT
prescriptions.doctor_id,
doctors.name AS doctor_name,
COUNT(prescriptions.prescription_id) AS no_of_prescriptions
FROM prescriptions
INNER JOIN doctors
ON prescriptions.doctor_id=doctors.doctor_id
GROUP BY doctor_id
ORDER BY no_of_prescriptions DESC
LIMIT 5;
