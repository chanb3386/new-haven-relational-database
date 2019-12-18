# Does the system allow more than one initial assessment to be in the system at a time?

# Query 1: add another init assessment for a visit
INSERT C4707F19U137.InitAssessment VALUES (124, 'healthy', 501, 'none', 3);
SELECT * FROM C4707F19U137.InitAssessment;

# Result: there is more than 1 init assessment now
# this is an incorrect result : expects to only have 1 init assessment per visit
# this is a design issue: init assessment should have an FK to VisitID to ensure a 1-1 relationship