CREATE OR REPLACE PROCEDURE GetVolunteerCount AS
    total NUMBER;
BEGIN
    SELECT COUNT(*) INTO total FROM Volunteers_;
    DBMS_OUTPUT.PUT_LINE('Total Volunteers: ' || total);
END;
/
