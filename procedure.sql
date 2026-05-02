DELIMITER $$

CREATE PROCEDURE GetVolunteerCount()
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total FROM Volunteers_;

    SELECT CONCAT('Total Volunteers: ', total) AS Result;
END$$

DELIMITER ;
