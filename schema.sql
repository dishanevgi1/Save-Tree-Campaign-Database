-- ========================
-- CAMPAIGN TABLE
-- ========================
CREATE TABLE Campaign_1 (
    CampaignId VARCHAR2(5) PRIMARY KEY,
    Name CHAR(30),
    StartDate DATE,
    Description VARCHAR2(100),
    EndDate DATE
);

INSERT INTO Campaign_1 VALUES ('C0001','Save Tree Campaign',
TO_DATE('25-JUN-2019','DD-MON-YYYY'),
'Transitioning to sustainable and green energy sources',
TO_DATE('29-JUN-2019','DD-MON-YYYY'));

-- ========================
-- ORGANIZATIONS
-- ========================
CREATE TABLE Organizations_ (
    OrgID VARCHAR2(5) PRIMARY KEY,
    OrganizationName CHAR(30),
    Description CHAR(100),
    ContactPerson NUMBER(10),
    ContactEmail VARCHAR2(30)
);

INSERT INTO Organizations_ VALUES
('O0001','Cultural Society','Promoting cultural enrichment',2536154867,'culturalsocietyorg@gmail.com');

-- ========================
-- VOLUNTEERS
-- ========================
CREATE TABLE Volunteers_ (
    VolunteersId VARCHAR2(5) PRIMARY KEY,
    CampaignId VARCHAR2(5) REFERENCES Campaign_1(CampaignId),
    Name CHAR(30),
    Role VARCHAR2(15),
    PhoneNo NUMBER(10)
);

INSERT INTO Volunteers_ VALUES ('V0001','C0001','Riya Gode','Team Leader',9998887777);
INSERT INTO Volunteers_ VALUES ('V0002','C0001','Arpita Patil','Volunteer',3334445555);
INSERT INTO Volunteers_ VALUES ('V0003','C0001','Sara Patil','Volunteer',2221110000);
INSERT INTO Volunteers_ VALUES ('V0004','C0001','Advika Rajesh','Volunteer',7776665555);
INSERT INTO Volunteers_ VALUES ('V0005','C0001','Anushka Raut','Volunteer',4447778888);

-- ========================
-- TREES
-- ========================
CREATE TABLE Trees_ (
    TreeID VARCHAR2(5) PRIMARY KEY,
    Location VARCHAR2(20),
    Age NUMBER(3),
    Species VARCHAR2(20),
    Status CHAR(15)
);

INSERT INTO Trees_ VALUES ('T0001','Forest Preserve',30,'Pine','Healthy');
INSERT INTO Trees_ VALUES ('T0002','National Park',50,'Redwood','Healthy');
INSERT INTO Trees_ VALUES ('T0003','Street Corner',8,'Magnolia','Healthy');
INSERT INTO Trees_ VALUES ('T0004','Beachfront',18,'Palm','Healthy');
INSERT INTO Trees_ VALUES ('T0005','Community Garden',12,'Cherry','Healthy');

-- ========================
-- EVENTS
-- ========================
CREATE TABLE Events_ (
    EventID VARCHAR2(5) PRIMARY KEY,
    CampaignID VARCHAR2(10) REFERENCES Campaign_1(CampaignID),
    EventName CHAR(30),
    EventDate DATE,
    Location VARCHAR2(20),
    Description CHAR(100)
);

INSERT INTO Events_ VALUES ('E0001','C0001','Plant Trees',
TO_DATE('25-JUN-2019','DD-MON-YYYY'),'National Park','Plant more Plant Life');

INSERT INTO Events_ VALUES ('E0002','C0001','Learn Trees',
TO_DATE('26-JUN-2019','DD-MON-YYYY'),'National Park','Learn importance of trees');

INSERT INTO Events_ VALUES ('E0003','C0001','Save Trees',
TO_DATE('27-JUN-2019','DD-MON-YYYY'),'National Park','Save Tree Save Life');

INSERT INTO Events_ VALUES ('E0004','C0001','Awareness',
TO_DATE('28-JUN-2019','DD-MON-YYYY'),'National Park','Spread awareness');

INSERT INTO Events_ VALUES ('E0005','C0001','Fun with greens',
TO_DATE('29-JUN-2019','DD-MON-YYYY'),'National Park','Fun activities');

-- ========================
-- GOVERNMENT AGENCY
-- ========================
CREATE TABLE Government_Agency_ (
    Agency_id VARCHAR2(5) PRIMARY KEY,
    Agency_name CHAR(20),
    Contact_phoneNo NUMBER(10),
    Contact_mail VARCHAR2(30),
    Contact_person_name CHAR(30)
);

INSERT INTO Government_Agency_ VALUES ('A0001','Earth Nurturers',9892324565,'earthnurturers@gmail.com','Harry Johnson');
INSERT INTO Government_Agency_ VALUES ('A0002','Evergreens',7895329465,'evergreens@gmail.com','Ivy Davis');
INSERT INTO Government_Agency_ VALUES ('A0003','Eco Harmony',5852569565,'ecoharmony@gmail.com','Jack Wilson');
INSERT INTO Government_Agency_ VALUES ('A0004','Earth Therapy',2123134561,'earththerapy@gmail.com','Grace Taylor');
INSERT INTO Government_Agency_ VALUES ('A0005','Earth Troop',1232328987,'earthtroop@gmail.com','Frank Brown');

-- ========================
-- ENVIRONMENTAL NGO
-- ========================
CREATE TABLE Environmental_NGO_ (
    NGO_id VARCHAR2(5) PRIMARY KEY,
    NGO_name CHAR(30),
    NGO_phone NUMBER(10),
    NGO_email VARCHAR2(30)
);

INSERT INTO Environmental_NGO_ VALUES ('N0001','Green Yatra',5551234567,'greenyatra@gmail.com');
INSERT INTO Environmental_NGO_ VALUES ('N0002','Project Green Hands',8885559999,'greenhands@gmail.com');
INSERT INTO Environmental_NGO_ VALUES ('N0003','Sankalp Taru',7778881234,'sankalptaru@gmail.com');
INSERT INTO Environmental_NGO_ VALUES ('N0004','Say Trees',9993337777,'saytrees@gmail.com');
INSERT INTO Environmental_NGO_ VALUES ('N0005','Siruthuli',6265987895,'siruthuli@gmail.com');

-- ========================
-- SUPPLIER
-- ========================
CREATE TABLE Supplier_ (
    Supplier_id VARCHAR2(5) PRIMARY KEY,
    Supplier_name CHAR(30),
    Supplier_phone NUMBER(10),
    Supplier_email VARCHAR2(30)
);

INSERT INTO Supplier_ VALUES ('S0001','Global Imports',4567891011,'globalimports@gmail.com');
INSERT INTO Supplier_ VALUES ('S0002','Prime Distributors',1234569878,'primedistributors@gmail.com');
INSERT INTO Supplier_ VALUES ('S0003','Green Solutions',7891231013,'greensolutions@gmail.com');
INSERT INTO Supplier_ VALUES ('S0004','Quick Supplies',4567891213,'quicksupplies@gmail.com');
INSERT INTO Supplier_ VALUES ('S0005','Tree Components',4562521415,'treecomponents@gmail.com');

-- ========================
-- TREE PLANTING SITES
-- ========================
CREATE TABLE Tree_Planting_Sites_ (
    Site_id VARCHAR2(5) PRIMARY KEY,
    Site_name CHAR(20),
    Location VARCHAR2(20)
);

INSERT INTO Tree_Planting_Sites_ VALUES ('TS001','Garden','National Park');
INSERT INTO Tree_Planting_Sites_ VALUES ('TS002','Ground','National Park');
INSERT INTO Tree_Planting_Sites_ VALUES ('TS003','Surrounding','National Park');
INSERT INTO Tree_Planting_Sites_ VALUES ('TS004','Footpath','National Park');
INSERT INTO Tree_Planting_Sites_ VALUES ('TS005','Road','National Park');

-- ========================
-- SPONSOR
-- ========================
CREATE TABLE Sponsor_ (
    Sponsor_id VARCHAR2(5) PRIMARY KEY,
    Sponsor_name CHAR(30),
    Sponsor_phone NUMBER(10),
    Sponsor_email VARCHAR2(30)
);

INSERT INTO Sponsor_ VALUES ('SP001','Community Bank',9993337777,'communitybank@gmail.com');
INSERT INTO Sponsor_ VALUES ('SP002','Swift Services',5555555555,'swiftservices@gmail.com');
INSERT INTO Sponsor_ VALUES ('SP003','Harmony Foundation',2224446666,'harmonyfoundation@gmail.com');
INSERT INTO Sponsor_ VALUES ('SP004','Tech Innovations',1239876543,'techinnovations@gmail.com');
INSERT INTO Sponsor_ VALUES ('SP005','Hope Charity',7772228888,'hopecharity@gmail.com');

-- ========================
-- SOCIAL MEDIA POST
-- ========================
CREATE TABLE Social_Media_Post_ (
    Post_id VARCHAR2(5) PRIMARY KEY,
    Like_count NUMBER(10),
    Content CHAR(100),
    Posted_date DATE
);

INSERT INTO Social_Media_Post_ VALUES ('SM001',20000,'Our planet needs help',TO_DATE('25-MAY-2023','DD-MON-YYYY'));
INSERT INTO Social_Media_Post_ VALUES ('SM002',35000,'One tree can change world',TO_DATE('26-MAY-2023','DD-MON-YYYY'));
INSERT INTO Social_Media_Post_ VALUES ('SM003',40000,'Beauty of trees',TO_DATE('27-MAY-2023','DD-MON-YYYY'));
INSERT INTO Social_Media_Post_ VALUES ('SM004',55000,'Join mission',TO_DATE('28-MAY-2023','DD-MON-YYYY'));
INSERT INTO Social_Media_Post_ VALUES ('SM005',60000,'Decorate surroundings',TO_DATE('29-MAY-2023','DD-MON-YYYY'));

-- ========================
-- DONOR
-- ========================
CREATE TABLE Donar_ (
    Donar_id VARCHAR2(5) PRIMARY KEY,
    Donar_name CHAR(30),
    Donar_phone NUMBER(10),
    Donar_email VARCHAR2(30)
);
