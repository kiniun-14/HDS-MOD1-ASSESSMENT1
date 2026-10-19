/* 
========================================
Filename:
Purpose:
Author: Kiniun
Notes:
========================================
*/


DROP VIEW IF EXISTS hospital_doctors_list;

CREATE VIEW hospital_doctors_list AS
SELECT doctor_id, name, address
FROM doctors
WHERE hospital_id=39
ORDER BY doctor_id DESC
;
