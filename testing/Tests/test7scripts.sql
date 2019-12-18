# Can only service providers make a diagnosis(es)?

#run add_data before running this

# Query 1: Nurse making a diagnosis
# Entering a NurseID into the SVC Provider ID
INSERT INTO C4707F19U137.Diagnosis VALUES ('Appendix', 'ICM-CODE3', 101, 2500, 3);
# result: throws a foreign key contraint error (as expected)
# works properly

# Query 2: Entering unknown SVCPID
INSERT INTO C4707F19U137.Diagnosis VALUES ('Appendix', 'ICM-CODE4', 101, 2500, 100);
# result: throws a foreign key contraint error (as expected)
# works properly

# Query 3: What if a Nurse ID == SVCPID
INSERT INTO C4707F19U137.Employee VALUES (10, 12345234,	'Smith', 'Lowry', 'Connor', 'Salary',	49551,	3);
INSERT INTO C4707F19U137.Nurse VALUES (10);
INSERT INTO C4707F19U137.Diagnosis VALUES ('Appendix', 'ICM-CODE5', 101, 2500, 10);
SELECT * FROM C4707F19U137.Diagnosis;

# result: adds to the list since SVCPID 10 and is pointing to the service provider with ID 10 (not the nurse)
# works properly

