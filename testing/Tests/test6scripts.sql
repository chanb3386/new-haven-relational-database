# Can a patient have more than one diagnosis per visit?  Assume all patients must be given a diagnosis.

# run add_data before running

# Query 1: Add another diagnosis to the patient
INSERT INTO C4707F19U137.InitAssessment VALUES (124, 'mild', 501, 'surgery', 3);
INSERT INTO C4707F19U137.Diagnosis VALUES ('Appendix', 'ICM-CODE2', 101, 2500, 11);
INSERT INTO C4707F19U137.Approval VALUES ('signatory2');
INSERT INTO C4707F19U137.Treatment VALUES ('surgery', 'ICM-CODE2', 2500, 'signatory2', 11);
INSERT INTO C4707F19U137.TreatmentGiven VALUES ('surgery', 'ICM-CODE2', 2500, '9AM', '8PM', 101);

SELECT * FROM C4707F19U137.InitAssessment;
SELECT * FROM C4707F19U137.Diagnosis;
SELECT * FROM C4707F19U137.Approval;
SELECT * FROM C4707F19U137.Treatment;
SELECT * FROM C4707F19U137.TreatmentGiven;

# Result: 2 InitAssessments with the same Nurse and different AssessmentID (PK)
# 2 Unique Diagnosis, different service providers, 2 different approvals, 2 diff treatments and treatment given
# a patient can have more than 1 Diagnosis in a visit

# Query 2: Seeing if patient can have multiple diagnosis from same service provider
INSERT INTO C4707F19U137.InitAssessment VALUES (125, 'severe', 502, 'surgery', 3);
INSERT INTO C4707F19U137.Diagnosis VALUES ('stomach', 'ICM-CODE3', 101, 2500, 11);
INSERT INTO C4707F19U137.Approval VALUES ('signatory3');
INSERT INTO C4707F19U137.Treatment VALUES ('surgery', 'ICM-CODE3', 2500, 'signatory3', 11);
INSERT INTO C4707F19U137.TreatmentGiven VALUES ('surgery', 'ICM-CODE3', 2500, '9AM', '8PM', 101);

SELECT * FROM C4707F19U137.InitAssessment;
SELECT * FROM C4707F19U137.Diagnosis;
SELECT * FROM C4707F19U137.Approval;
SELECT * FROM C4707F19U137.Treatment;
SELECT * FROM C4707F19U137.TreatmentGiven;

# Result: Updated properly, can have multiple diagnosis from different or the same service providers in one visit
# Because it is one visit, there is only one bill as well





