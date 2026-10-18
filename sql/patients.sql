/*
================================
filename:
purpose: Create a patients table and populate with data from csv file
author: Ari Ajibade
note
================================
*/

DROP TABLE IF EXISTS 'patients';

CREATE TABLE patients
(
patient_id INT unsigned NOT NULL AUTO_INCREMENT,
name VARCHAR(150) NOT NULL,
date_of_birth DATE NOT NULL,
address VARCHAR(255) NOT NULL,
role VARCHAR(150) NOT NULL,
doctor_id INT NOT NULL,
PRIMARY KEY (patient_id)
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206z/assessment1/hds-mod1-assess1/data/patients.csv' 
INTO TABLE patients
FIELDS TERMINATED BY ','
IGNORE 1 LINES (patient_id, name, date_of_birth, address, role, doctor_id)
;
