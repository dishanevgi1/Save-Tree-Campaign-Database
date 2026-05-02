-- =====================================
-- CREATE DATABASE
-- =====================================
CREATE DATABASE SaveTreeCampaign;
USE SaveTreeCampaign;

-- =====================================
-- CAMPAIGN
-- =====================================
CREATE TABLE Campaign_1 (
    CampaignId VARCHAR(5) PRIMARY KEY,
    Name VARCHAR(30),
    StartDate DATE,
    Description VARCHAR(100),
    EndDate DATE
);

INSERT INTO Campaign_1 VALUES 
('C0001','Save Tree Campaign','2019-06-25',
'Transitioning to sustainable and green energy sources','2019-06-29');

-- =====================================
-- ORGANIZATIONS
-- =====================================
CREATE TABLE Organizations_ (
    OrgID VARCHAR(5) PRIMARY KEY,
    OrganizationName VARCHAR(30),
    Description VARCHAR(100),
    ContactPerson BIGINT,
    ContactEmail VARCHAR(50)
);

INSERT INTO Organizations_ VALUES
('O0001','Cultural Society','Promoting cultural enrichment',2536154867,'culturalsocietyorg@gmail.com');

-- =====================================
-- VOLUNTEERS
-- =====================================
CREATE TABLE Volunteers_ (
    VolunteersId VARCHAR(5) PRIMARY KEY,
    CampaignId VARCHAR(5),
    Name VARCHAR(30),
    Role VARCHAR(20),
    PhoneNo BIGINT,
    FOREIGN KEY (CampaignId) REFERENCES Campaign_1(CampaignId)
);

INSERT INTO Volunteers_ VALUES
('V0001','C0001','Riya Gode','Team Leader',9998887777),
('V0002','C0001','Arpita Patil','Volunteer',3334445555),
('V0003','C0001','Sara Patil','Volunteer',2221110000),
('V0004','C0001','Advika Rajesh','Volunteer',7776665555),
('V0005','C0001','Anushka Raut','Volunteer',4447778888);

-- =====================================
-- TREES
-- =====================================
CREATE TABLE Trees_ (
    TreeID VARCHAR(5) PRIMARY KEY,
    Location VARCHAR(50),
    Age INT,
    Species VARCHAR(30),
    Status VARCHAR(20)
);

INSERT INTO Trees_ VALUES
('T0001','Forest Preserve',30,'Pine','Healthy'),
('T0002','National Park',50,'Redwood','Healthy'),
('T0003','Street Corner',8,'Magnolia','Healthy'),
('T0004','Beachfront',18,'Palm','Healthy'),
('T0005','Community Garden',12,'Cherry','Healthy');

-- =====================================
-- EVENTS
-- =====================================
CREATE TABLE Events_ (
    EventID VARCHAR(5) PRIMARY KEY,
    CampaignID VARCHAR(5),
    EventName VARCHAR(30),
    EventDate DATE,
    Location VARCHAR(50),
    Description VARCHAR(100),
    FOREIGN KEY (CampaignID) REFERENCES Campaign_1(CampaignId)
);

INSERT INTO Events_ VALUES
('E0001','C0001','Plant Trees','2019-06-25','National Park','Plant more Plant Life'),
('E0002','C0001','Learn Trees','2019-06-26','National Park','Learn importance of trees'),
('E0003','C0001','Save Trees','2019-06-27','National Park','Save Tree Save Life'),
('E0004','C0001','Awareness','2019-06-28','National Park','Spread awareness'),
('E0005','C0001','Fun with greens','2019-06-29','National Park','Fun activities');

-- =====================================
-- GOVERNMENT AGENCY
-- =====================================
CREATE TABLE Government_Agency_ (
    Agency_id VARCHAR(5) PRIMARY KEY,
    Agency_name VARCHAR(30),
    Contact_phoneNo BIGINT,
    Contact_mail VARCHAR(50),
    Contact_person_name VARCHAR(30)
);

INSERT INTO Government_Agency_ VALUES
('A0001','Earth Nurturers',9892324565,'earthnurturers@gmail.com','Harry Johnson'),
('A0002','Evergreens',7895329465,'evergreens@gmail.com','Ivy Davis'),
('A0003','Eco Harmony',5852569565,'ecoharmony@gmail.com','Jack Wilson'),
('A0004','Earth Therapy',2123134561,'earththerapy@gmail.com','Grace Taylor'),
('A0005','Earth Troop',1232328987,'earthtroop@gmail.com','Frank Brown');

-- =====================================
-- ENVIRONMENTAL NGO
-- =====================================
CREATE TABLE Environmental_NGO_ (
    NGO_id VARCHAR(5) PRIMARY KEY,
    NGO_name VARCHAR(30),
    NGO_phone BIGINT,
    NGO_email VARCHAR(50)
);

INSERT INTO Environmental_NGO_ VALUES
('N0001','Green Yatra',5551234567,'greenyatra@gmail.com'),
('N0002','Project Green Hands',8885559999,'greenhands@gmail.com'),
('N0003','Sankalp Taru',7778881234,'sankalptaru@gmail.com'),
('N0004','Say Trees',9993337777,'saytrees@gmail.com'),
('N0005','Siruthuli',6265987895,'siruthuli@gmail.com');

-- =====================================
-- SUPPLIER
-- =====================================
CREATE TABLE Supplier_ (
    Supplier_id VARCHAR(5) PRIMARY KEY,
    Supplier_name VARCHAR(30),
    Supplier_phone BIGINT,
    Supplier_email VARCHAR(50)
);

INSERT INTO Supplier_ VALUES
('S0001','Global Imports',4567891011,'globalimports@gmail.com'),
('S0002','Prime Distributors',1234569878,'primedistributors@gmail.com'),
('S0003','Green Solutions',7891231013,'greensolutions@gmail.com'),
('S0004','Quick Supplies',4567891213,'quicksupplies@gmail.com'),
('S0005','Tree Components',4562521415,'treecomponents@gmail.com');

-- =====================================
-- TREE PLANTING SITES
-- =====================================
CREATE TABLE Tree_Planting_Sites_ (
    Site_id VARCHAR(5) PRIMARY KEY,
    Site_name VARCHAR(30),
    Location VARCHAR(50)
);

INSERT INTO Tree_Planting_Sites_ VALUES
('TS001','Garden','National Park'),
('TS002','Ground','National Park'),
('TS003','Surrounding','National Park'),
('TS004','Footpath','National Park'),
('TS005','Road','National Park');

-- =====================================
-- SPONSOR
-- =====================================
CREATE TABLE Sponsor_ (
    Sponsor_id VARCHAR(5) PRIMARY KEY,
    Sponsor_name VARCHAR(30),
    Sponsor_phone BIGINT,
    Sponsor_email VARCHAR(50)
);

INSERT INTO Sponsor_ VALUES
('SP001','Community Bank',9993337777,'communitybank@gmail.com'),
('SP002','Swift Services',5555555555,'swiftservices@gmail.com'),
('SP003','Harmony Foundation',2224446666,'harmonyfoundation@gmail.com'),
('SP004','Tech Innovations',1239876543,'techinnovations@gmail.com'),
('SP005','Hope Charity',7772228888,'hopecharity@gmail.com');

-- =====================================
-- SOCIAL MEDIA POST
-- =====================================
CREATE TABLE Social_Media_Post_ (
    Post_id VARCHAR(5) PRIMARY KEY,
    Like_count INT,
    Content VARCHAR(100),
    Posted_date DATE
);

INSERT INTO Social_Media_Post_ VALUES
('SM001',20000,'Our planet needs help','2023-05-25'),
('SM002',35000,'One tree can change world','2023-05-26'),
('SM003',40000,'Beauty of trees','2023-05-27'),
('SM004',55000,'Join mission','2023-05-28'),
('SM005',60000,'Decorate surroundings','2023-05-29');

-- =====================================
-- DONOR
-- =====================================
CREATE TABLE Donar_ (
    Donar_id VARCHAR(5) PRIMARY KEY,
    Donar_name VARCHAR(30),
    Donar_phone BIGINT,
    Donar_email VARCHAR(50)
);

-- =====================================
-- INSERT INTO DONOR
-- =====================================
INSERT INTO Donar_ VALUES
('D0001','Rahul Sharma',9876543210,'rahul@gmail.com'),
('D0002','Priya Mehta',8765432109,'priya@gmail.com'),
('D0003','Amit Verma',7654321098,'amit@gmail.com'),
('D0004','Sneha Patil',6543210987,'sneha@gmail.com'),
('D0005','Karan Singh',5432109876,'karan@gmail.com');
