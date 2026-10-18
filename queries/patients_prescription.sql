/*

===========================================
filename:
Purpose:
Author:
Notes:
===========================================
*/

SELECT prescription_id, medication, patient_id
FROM prescriptions
WHERE patient_id = 44
ORDERBY prescription_date
;
