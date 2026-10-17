DROP TABLE IF EXSISTS doctors
CREATE TABLE doctors
(
PersonID INT unsigned NOT NULL AUTO_INCREMENT,
Name VARCHAR(150) NOT NULL,
Date_of_birth DATE NOT NULL,
Address VARCHAR(255) NOT NULL,
Role VARCHAR(150) NOT NULL,
HospitalID INT unsigned NOT NULL,
PRIMARY KEY (PersonID)
);

LOAD DATA LOCAL INFILE '~/assessments/hpdm206z/assessment1/ ' 
INTO TABLE doctors
FIELDS TERMINATED BY ','
IGNORE 1 LINES (personID, Name, DateOfBirth, Address, Role, HospitalID)
;
