DROP TABLE fleets;
DROP TABLE ships;
DROP TABLE duties;
DROP TABLE sailors;
DROP TABLE sailorsduties;
CREATE TABLE fleets (
fleet_id INTEGER PRIMARY KEY AUTOINCREMENT,
fleet_name CHAR(50)
);
CREATE TABLE ships (
ship_id INTEGER PRIMARY KEY AUTOINCREMENT,
ship_name CHAR(50),
date_built DATE,
fleet_id INTEGER
);
CREATE TABLE duties (
duty_id INTEGER PRIMARY KEY AUTOINCREMENT,
duty_name CHAR(50),
ship_id INTEGER,
rank INTEGER,
start_date DATE,
end_date DATE
);
CREATE TABLE sailors (
sailor_id INTEGER PRIMARY KEY AUTOINCREMENT,
sailor_name CHAR(50),
dob DATE,
duty_id INTEGER
);
CREATE TABLE sailorsduties (
sailor_id INTEGER,
duty_id INTEGER
);
INSERT INTO fleets (fleet_name)
VALUES ('Fleet1');
INSERT INTO ships (ship_name, date_built, fleet_id)
VALUES ('Jackdaw', '1600-01-01', 1);
INSERT INTO ships (ship_name, date_built, fleet_id)
VALUES ('Normandy', '2100-01-01', 1);
INSERT INTO duties (duty_name, ship_id, rank, start_date, end_date)
VALUES ('Jackdaw_Captain', 1, 1, '2018_01_01', '2018_01_15');
INSERT INTO duties (duty_name, ship_id, rank, start_date, end_date)
VALUES ('Normandy_Captain', 2, 1, '2018_01_01', '2018_01_15');
INSERT INTO duties (duty_name, ship_id, rank, start_date, end_date)
VALUES ('Jackdaw_AssistantCaptain', 1, 2, '2018_01_16', '2018_01_31');
INSERT INTO duties (duty_name, ship_id, rank, start_date, end_date)
VALUES ('Normandy_AssistantCaptain', 2, 2, '2018_01_16', '2018_01_31');
INSERT INTO sailors (sailor_name, dob, duty_id)
VALUES ('Edward Kenway', '1693_03_10', 1);
INSERT INTO sailors (sailor_name, dob, duty_id)
VALUES ('Shepard', '2154_04_11', 2);
INSERT INTO sailors (sailor_name, dob, duty_id)
VALUES ('John Smith', '1693_02_10', 3);
INSERT INTO sailors (sailor_name, dob, duty_id)
VALUES ('Jeff Moreau', '2155_01_01', 4);
INSERT INTO sailorsduties (sailor_id, duty_id)
VALUES (1, 1);
INSERT INTO sailorsduties (sailor_id, duty_id)
VALUES (2, 2);
INSERT INTO sailorsduties (sailor_id, duty_id)
VALUES (3, 3);
INSERT INTO sailorsduties (sailor_id, duty_id)
VALUES (4, 4);
