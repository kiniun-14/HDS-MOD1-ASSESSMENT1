/*
======================================================
Filename: 
Purpose: Create hospitals table in hospital database and populate with data from csv file
Author: Kiniun
Note:
======================================================
*/


DROP TABLE IF EXISTS hospitals;

CREATE TABLE hospitals
(
hospital_id INT unsigned NOT NULL,
name VARCHAR(255) NOT NULL,
address VARCHAR(500) NOT NULL,
size INT NOT NULL,
type VARCHAR(150) NOT NULL,
accreditation_status VARCHAR(150) NOT NULL,
PRIMARY KEY (hospital_id)
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/hds-mod1-assess1/data/hospitals.csv' 
INTO TABLE hospitals
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES (hospital_id, name, address, size, type, accreditation_status)
;
