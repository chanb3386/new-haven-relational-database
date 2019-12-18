# Does the system document what intake clerk collected the insurance information and the copay?

# Query 1: Adding another intake clerk and checking data
SELECT CLERKID FROM C4707F19U137.PaymentMethod;
# works correctly for one intake clerk (from add_data)

# Query 2: adding another
INSERT C4707F19U137.Employee VALUES (5, 187251951, 'Chan', 'Michael', 'Brandon', 'Salary', '6185582454', 4);
INSERT C4707F19U137.IntakeClerk VALUES (5);
INSERT C4707F19U137.Bill VALUES (50, 124);
INSERT C4707F19U137.PaymentMethod VALUES (101, 5, 20);

SELECT CLERKID FROM C4707F19U137.PaymentMethod;

# result: new clerk ID added to payment method
# this indicates that the clerk recording this data is being documented