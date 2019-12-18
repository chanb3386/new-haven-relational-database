CREATE TABLE Department (
  DeptID integer,
  DeptName varchar(16),
  PRIMARY KEY (DeptID)
);

CREATE TABLE Employee (
   EmpID integer,
   SSN integer,
   LName varchar(16),
   MName varchar(16),
   FName varchar(16),
   SalaryOrHourly varchar(16),
   Phone varchar(16),
   DID integer,
   PRIMARY KEY(EmpID),
   FOREIGN KEY(DID) REFERENCES Department(DeptID)
);

CREATE TABLE Nurse (
  NurseID integer,
  PRIMARY KEY(NurseID),
  FOREIGN KEY(NurseID) REFERENCES Employee(EmpID)
);


CREATE TABLE ServiceProvider(
   SvcPID integer,
   Title varchar(16),
   AssistNurseID integer,
   EmpID integer,
   PRIMARY KEY(SvcPID),
   FOREIGN KEY(AssistNurseID) REFERENCES Nurse(NurseID),
   FOREIGN KEY(EmpID) REFERENCES Employee(EmpID)
);

CREATE TABLE OtherStaff (
  EmpID integer,
  PRIMARY KEY(EmpID),
  FOREIGN KEY(EmpID) REFERENCES Employee(EmpID)
);

CREATE TABLE IntakeClerk (
  ClerkID integer,
  PRIMARY KEY(ClerkID),
  FOREIGN KEY(ClerkID) REFERENCES Employee(EmpID)
);


CREATE TABLE Guardian (
    Fname varchar(16),
    Lname varchar(16),
    PatID integer,
    PRIMARY KEY (PatID)
);

CREATE TABLE Patient (
    PID integer,
    Fname varchar(16),
    Lname varchar(16),
    Mname varchar(16),
    DOB date,
    Phone varchar(16),
    EConName varchar(16),
    EConNum varchar(16),
    AddrNumber varchar(16),
    AddrStreet varchar(16),
    AddrCity varchar(16),
    AddrState varchar(16),
    AddrZip varchar(16),
    PRIMARY KEY (PID),
    FOREIGN KEY(PID) REFERENCES Guardian(PatID)
);

CREATE TABLE Bill (
    amount double,
    BillNo integer,
    PRIMARY KEY (BillNo)
);

CREATE TABLE PaymentMethod (
    id integer,
    ClerkID integer,
    PID integer,
    PRIMARY KEY (id),
    FOREIGN KEY (PID) REFERENCES Patient(PID),
    FOREIGN KEY (ClerkID) REFERENCES IntakeClerk(ClerkID)
);

CREATE TABLE Insurance (
    InsNumber integer,
    id integer,
    StartDate date,
    EndDate date,
    PRIMARY KEY (InsNumber),
    FOREIGN KEY (id) REFERENCES PaymentMethod(id)
);

CREATE TABLE SelfPay (
    id integer,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES PaymentMethod(id)
);

CREATE TABLE Payment (
    BillNo integer,
    amount double,
    id integer,
    PRIMARY KEY (id, BillNo),
    FOREIGN KEY (BillNo) REFERENCES Bill(BillNo),
    FOREIGN KEY (id) REFERENCES PaymentMethod(id)
);


CREATE TABLE Visit (
    StartTime varchar(16),
    EndTime varchar(16),
    VisitID integer,
    PatientID integer,
    BillNo integer,
    PRIMARY KEY (VisitID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PID),
    FOREIGN KEY (BillNo) REFERENCES Bill(BillNo)
);

CREATE TABLE InitAssessment (
  Symptoms integer,
  Vitals varchar(16),
  AssessmentID integer,
  Medication varchar(16),
  NurseID integer,
  PRIMARY KEY (AssessmentID),
  FOREIGN KEY (NurseID) REFERENCES Nurse(NurseID)
);

CREATE TABLE Diagnosis(
   DiagName varchar(16),
   ICM10CM varchar(16),
   DiagnosisID integer,
   Cost double,
   SvcProviderID integer,
   PRIMARY KEY(ICM10CM),
   FOREIGN KEY(DiagnosisID) REFERENCES Visit (VisitID),
   FOREIGN KEY(SvcProviderID) REFERENCES ServiceProvider(SvcPID)
 );

CREATE TABLE Approval (
  Signatory varchar(16),
  PRIMARY KEY(Signatory)
);

CREATE TABLE Treatment (
  Name varchar(16),
  ICD10PCS varchar(16),
  Cost double,
  Signatory varchar(16),
  SID integer,
  PRIMARY KEY (ICD10PCS),
  FOREIGN KEY(Signatory) REFERENCES Approval(Signatory),
  FOREIGN KEY(SID) REFERENCES ServiceProvider(SvcPID)
);

CREATE TABLE TreatmentGiven (
  Name varchar(16),
  ICD10PCS varchar(16),
  Cost double,
  StartTime varchar(16),
  EndTime varchar(16),
  VisitID integer,
  PRIMARY KEY(ICD10PCS, VisitID),
  FOREIGN KEY(ICD10PCS) REFERENCES Treatment(ICD10PCS),
  FOREIGN KEY(VisitID) REFERENCES Visit(VisitID)
);
