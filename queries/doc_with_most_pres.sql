SELECT doctor_id, COUNT (doctor_id)
AS no_of_presc
FROM prescription
GROUP BY (doctor_id)
ORDER BY no_of_presc DESC
;

