DROP VIEW IF EXISTS patient_with_most_prescriptions;

CREATE VIEW patient_with_most_prescriptions AS
SELECT
prescriptions.patient_id,
patients.name AS patient_name,
COUNT(prescriptions.prescription_id) AS no_of_prescriptions
FROM prescriptions
INNER JOIN patients
ON prescriptions.patient_id=patients.patient_id
GROUP BY patient_id
ORDER BY no_of_prescriptions DESC
LIMIT 10;
