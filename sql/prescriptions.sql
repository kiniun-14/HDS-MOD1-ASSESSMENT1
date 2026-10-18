/*
==========================================================================
filename:database/sql/prescriptions.sql
purpose:  Create prescription table and populate with data from .csv file
author: Ari Ajibade
note
==========================================================================
*/

DROP TABLE IF EXISTS prescriptions;

CREATE TABLE prescriptions
(
prescription_id INT unsigned NOT NULL AUTO_INCREMENT,
patient_Id INT NOT NULL,
doctor_id INT NOT NULL,
medication VARCHAR(150) NOT NULL,
prescription_date DATE,
PRIMARY KEY (prescription_id)
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/hds-mod1-assess1/data/prescriptions.csv'
INTO TABLE prescriptions
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES (prescription_id, patient_id, doctor_id, medication, prescription_date)
;
