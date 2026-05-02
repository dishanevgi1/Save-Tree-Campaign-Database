-- 1. Show all campaigns
SELECT * FROM Campaign_1;

-- 2. List volunteers for a campaign
SELECT Name, Role 
FROM Volunteers_ 
WHERE CampaignId = 'C0001';

-- 3. Count number of trees
SELECT COUNT(*) AS Total_Trees 
FROM Trees_;

-- 4. Show events with campaign name (FIXED column name)
SELECT E.EventName, C.Name AS Campaign_Name
FROM Events_ E
JOIN Campaign_1 C 
ON E.CampaignID = C.CampaignId;

-- 5. Find trees older than 20 years
SELECT * 
FROM Trees_ 
WHERE Age > 20;

-- 6. Show NGO details
SELECT NGO_name, NGO_email 
FROM Environmental_NGO_;

-- 7. Count volunteers
SELECT COUNT(*) AS Total_Volunteers 
FROM Volunteers_;

-- 8. Show suppliers
SELECT Supplier_name 
FROM Supplier_;

-- 9. Show sponsors sorted by name
SELECT * 
FROM Sponsor_ 
ORDER BY Sponsor_name ASC;

-- 10. Show social media posts with >30000 likes
SELECT * 
FROM Social_Media_Post_ 
WHERE Like_count > 30000;

-- 11. Call the Function
SELECT GetTreeCount() AS Total_Trees;

-- 12. Call the Procedure
CALL GetVolunteerCount();

-- 13. Test the Trigger
INSERT INTO Trees_ VALUES ('T999','Test Location',-5,'Test','Healthy');
