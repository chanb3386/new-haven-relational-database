# Does the system properly document followup tests/procedures with proper coding?

# run add_data before this.

# Query 1: adding a follow up visit for the same patient
INSERT INTO C4707F19U137.InitAssessment VALUES (125, 'healthy', 501, 'none', 3);
INSERT INTO C4707F19U137.Visit VALUES ('9AM', '12PM', 102, 20, 123);

# result: updates the same patient with a new visit and assessment - passes

# Query 2: adding a follow up visit with new payment method (self pay instead of insurance)
INSERT INTO C4707F19U137.Bill VALUES (2500, 124);
INSERT INTO C4707F19U137.Visit VALUES ('9AM', '12PM', 103, 20, 124);
INSERT INTO C4707F19U137.PaymentMethod VALUES (101, 4, 20);
INSERT INTO C4707F19U137.SelfPay VALUES (101);
INSERT INTO C4707F19U137.Payment VALUES (124, 2500, 101);

# result: properly added a new visit, bill, payment method for a new visit for the same patient

SELECT * FROM C4707F19U137.Bill;
SELECT * FROM C4707F19U137.Visit;
SELECT * FROM C4707F19U137.PaymentMethod;
SELECT * FROM C4707F19U137.SelfPay;
SELECT * FROM C4707F19U137.Payment;
SELECT * FROM C4707F19U137.InitAssessment;