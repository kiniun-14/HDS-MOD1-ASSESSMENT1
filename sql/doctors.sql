/* 
=======================
Filename:
Purpose: Create doctors table and populate with data from csv file
Author: Ari Ajibade
Note:

=======================
*/

DROP TABLE IF EXISTS doctors;

CREATE TABLE doctors
(
doctor_id INT unsigned NOT NULL AUTO_INCREMENT,
name VARCHAR(150) NOT NULL,
date_of_birth DATE NOT NULL,
address VARCHAR(255) NOT NULL,
role VARCHAR(150) NOT NULL,
hospital_id INT unsigned NOT NULL,
PRIMARY KEY (doctor_id)
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/hds-mod1-assess1/data/doctors.csv'
INTO TABLE doctors
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES (doctor_id, name, date_of_birth, address, role, hospital_id)
;
