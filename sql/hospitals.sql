/*
======================================================
Filename: 
Purpose: Create hospitals table in hospital database and populate with data from csv file
Author: Ari Ajibade
Note:
======================================================
*/


DROP TABLE IF EXISTS 'hospitals';

CREATE TABLE hospitals
(
hospital_id INT unsigned NOT NULL AUTO_INCREMENT,
name VARCHAR(150) NOT NULL,
address VARCHAR(255) NOT NULL,
size INT unsigned NOT NULL,
type VARCHAR(150) NOT NULL,
accreditation_status VARCHAR(150) NOT NULL,
PRIMARY KEY (hospital_id)
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206z/assessment1/hds-mod1-assess1/data/hospitals.csv' 
INTO TABLE prescriptions
FIELDS TERMINATED BY ','
IGNORE 1 LINES (hospital_id, name, address, size, type, accreditation_status)
;
