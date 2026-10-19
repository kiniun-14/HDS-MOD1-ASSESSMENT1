# **HOSPITAL DATABASE ASSESSMENT**
This repository contains planning documents, data, codes for a hospital database.
Contents of the repository has been grouped into folders.

## HOW TO USE
See the database design plan image in documents sesion.

---
## CONTENTS
1. Data
2. Database
3. Documents
4. Queries
5. sql
   

## DATA 
1. doctors.csv
2. hospitals.csv
3. patients.csv
4. prescription.csv
   

## DATABASE 
- Contains a copy of the database
  

## DOCUMENTS
This folder contains:
1. Hospital database ERD - this document shows the tables in the database and the relationship between the tables.

![Hospital Database Entity Relationship Diagram](/Users/Ari_Apple/Downloads/hosp_db.jpg)

3. Hospital database design plan - shows the order that the database was built/designed



## QUERIES
This folder contains 6 queries required by the assignment brief. these have been named to reflect the question number on the brief
- 01_hospital_docs.sql: a list of all doctors in hospital 39. This query has been created as a view and can be viewed as a table in the database.
- 02_patient_prescriptions.sql: a list of all prescriptions written for patient 602. The list is sorted by prescription date in descending order and then by doctor. This query is created as a view and can be viewed as a table
- 03_doctor_prescriptions.sql: a list of prescriptions written by Doctor 19. List is sorted by prescription name then by prescription date. Also created as a view.
- 04_add_new_patient.sql: This query adds a new patient to the database and allocates them to a doctor. The patient_id is omitted from this code to allow the system to auto-generate the value.
- 05_doc_with_most_prescription.sql: this query returns a count of prescription ids grouped by doctors, sorted in descending order. There is a limit of 5 records to show where there are multiple doctors with the same number of prescritions. To return the first item only, the limit can be changed to 1 however, this will leave out other doctors with the same value.
- 06_docs_at_biggest_hospital.sql: This list identifies the largest hospital by number of beds and then retrieves all doctors at the hospital.



## SQL
This folder contains the codes for creating the database, creating the tables within the database and populating the tables with data held in the data folder. 
1. database.sql - creates the database hospital-database
2. doctors.sql: creates doctors table and populates with data from doctors.csv in the data folder
3. hospitals.sql: creates hospitals table and populates with data from hospitals.csv in the data folder
4. patients.sql: creates patients table and populates with data from patients.csv in the data folder
5. patients_doctors.sql: creates patients_doctors table. This table is then auto-populated from the doctors and patients tables.
6. prescriptions.sql: creates prescriptions table and populates with data from prescriptions.csv in the data folder
