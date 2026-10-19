/*
===============================================
Filename:
Purpose: creates a virtual table to view of doctor with highest number of prescriptions.
Author: Kiniun
Notes:
===============================================
*/

DROP VIEW IF EXISTS doctor_highest_presc;

CREATE VIEW doctor_highest_presc
AS
SELECT doctor_id, COUNT(prescription_id) AS no_of_presc
FROM prescriptions
GROUP BY doctor_id
HAVING COUNT(prescription_id)=
(SELECT MAX(prescription_id) AS highest_count
FROM prescriptions)
;
