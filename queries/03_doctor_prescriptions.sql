/*
==================================
Filename:
Purpose:
Author:
Notes:
==================================
*/

DROP VIEW IF EXISTS doctor_prescritions;

CREATE VIEW doctor_prescriptions AS
SELECT*
FROM prescriptions
WHERE doctor_id = 19
ORDER BY medication ASC, prescription_date DESC 
;
