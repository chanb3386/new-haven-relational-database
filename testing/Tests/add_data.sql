INSERT INTO C4707F19U137.Department VALUES (1, 'Surgery');
INSERT INTO C4707F19U137.Department VALUES (2, 'Medicine');
INSERT INTO C4707F19U137.Department VALUES (3, 'Nurses');
INSERT INTO C4707F19U137.Department VALUES (4, 'Intake');
INSERT INTO C4707F19U137.Department VALUES (5, 'Other Staff');

INSERT INTO C4707F19U137.Employee VALUES (1, 123456789,	'Davis', 'Mike', 'Chris', 'Salary',	49561,	2);
INSERT INTO C4707F19U137.Employee VALUES (2, 123456788,	'Anderson', 'David', 'Alex', 'Salary',	49562,	1);
INSERT INTO C4707F19U137.Employee VALUES (3, 123456787,	'Jones', 'Chris', 'Sam', 'Salary',	49559,	3);
INSERT INTO C4707F19U137.Employee VALUES (4, 123456789,	'Smith', 'Kyle', 'Jack', 'Salary',	49558,	5);

INSERT INTO C4707F19U137.Nurse VALUES (3);

INSERT INTO C4707F19U137.ServiceProvider VALUES (10, 'Med Doctor', 3, 1);
INSERT INTO C4707F19U137.ServiceProvider VALUES (11, 'Surgeon', 3, 2);

INSERT INTO C4707F19U137.IntakeClerk VALUES (4);

INSERT INTO C4707F19U137.Guardian VALUES ('Old', 'Guy', 20);

INSERT INTO C4707F19U137.Patient VALUES (20, 'Patient', 'M', 'Jones', 12/19/1999, "6122555131", 'Dad', '6123245235', '821', 'Oak St', 'Minneapolis', 'MN', '55414');

INSERT INTO C4707F19U137.Bill VALUES (2000, 123);

INSERT INTO C4707F19U137.PaymentMethod VALUES (100, 4, 20);

INSERT INTO C4707F19U137.Insurance VALUES (60, 100, 11/10/2019, 11/10/2021);

INSERT INTO C4707F19U137.Payment VALUES (123, 2000, 100);

INSERT INTO C4707F19U137.Visit VALUES ('8AM', '12PM', 101, 20, 123);

INSERT INTO C4707F19U137.InitAssessment VALUES (123, 'Critical', 500, 'Tylenol', 3);

INSERT INTO C4707F19U137.Diagnosis VALUES ('Cold', 'ICM-CODE', 101, 2000, 10);

INSERT INTO C4707F19U137.Approval VALUES ('signatory1');

INSERT INTO C4707F19U137.Treatment VALUES ('medicine', 'ICM-CODE', 2000, 'signatory1', 10);

INSERT INTO C4707F19U137.TreatmentGiven VALUES ('medicine', 'ICM-CODE', 2000, '9AM', '12PM', 101);