CREATE TABLE fleets (
fleet-id INTEGER PRIMARY KEY,
fleet-name VARCHAR(50)
);
CREATE TABLE ships (
ship-id INTEGER PRIMARY KEY,
ship-name VARCHAR(50),
date-built DATE
);
CREATE TABLE duties (
duty-id INTEGER PRIMARY KEY,
duty-name VARCHAR(50),
ship-id INTEGER,
rank INTEGER,
start-date DATE,
end-date DATE
);
CREATE TABLE sailors (
sailor-id INTEGER PRIMARY KEY,
sailor-name VARCHAR(50),
dob DATE,
duty-id INTEGER
);
CREATE TABLE sailorsduties (
sailor-id INTEGER,
duty-id INTEGER
);
INSERT INTO fleets (fleet-name)
VALUES ('Fleet1');
INSERT INTO ships (ship-name, date-built)
VALUES ('Jackdaw');
INSERT INTO ships (ship-name, date-built)
VALUES ('Normandy');
INSERT INTO duties (duty-name, ship-id, rank, start-date, end-date)
VALUES ('Jackdaw-Captain',
  SELECT ship-id FROM ships WHERE ship-name = 'Jackdaw',
  1,
  '2018-01-01',
  '2018-01-15'
);
INSERT INTO duties (duty-name, ship-id, rank, start-date, end-date)
VALUES ('Normandy-Captain',
  SELECT ship-id FROM ships WHERE ship-name = 'Normandy',
  1,
  '2018-01-01',
  '2018-01-15'
);
INSERT INTO duties (duty-name, ship-id, rank, start-date, end-date)
VALUES ('Jackdaw-AssistantCaptain',
  SELECT ship-id FROM ships WHERE ship-name = 'Jackdaw',
  2,
  '2018-01-16',
  '2018-01-31'
);
INSERT INTO duties (duty-name, ship-id, rank, start-date, end-date)
VALUES ('Normandy-AssistantCaptain',
  SELECT ship-id FROM ships WHERE ship-name = 'Normandy',
  2,
  '2018-01-16',
  '2018-01-31'
);
INSERT INTO sailors (sailor-name, dob, duty-id)
VALUES ('Edward Kenway',
  '1693-03-10',
  SELECT duty-id FROM duties WHERE duty-name = 'Jackdaw-Captain'
);
INSERT INTO sailors (sailor-name, dob, duty-id)
VALUES ('Shepard',
  '2154-04-11',
  SELECT duty-id FROM duties WHERE duty-name = 'Normandy-Captain'
);
INSERT INTO sailors (sailor-name, dob, duty-id)
VALUES ('John Smith',
  '1693-02-10',
  SELECT duty-id FROM duties WHERE duty-name = 'Jackdaw-AssistantCaptain'
);
INSERT INTO sailors (sailor-name, dob, duty-id)
VALUES ('Jeff Moreau',
  '2155-01-01',
  SELECT duty-id FROM duties WHERE duty-name = 'Normandy-AssistantCaptain'
);
INSERT INTO sailorsduties (sailor-id, duty-id)
VALUES (SELECT sailor-id FROM sailors WHERE sailor-name = 'Edward Kenway',
SELECT duty-id FROM duties WHERE duty-name = 'Jackdaw Captain'
);
INSERT INTO sailorsduties (sailor-id, duty-id)
VALUES (SELECT sailor-id FROM sailors WHERE sailor-name = 'Shepard',
SELECT duty-id FROM duties WHERE duty-name = 'Normandy Captain'
);
INSERT INTO sailorsduties (sailor-id, duty-id)
VALUES (SELECT sailor-id FROM sailors WHERE sailor-name = 'John Smith',
SELECT duty-id FROM duties WHERE duty-name = 'Jackdaw AssistantCaptain'
);
INSERT INTO sailorsduties (sailor-id, duty-id)
VALUES (SELECT sailor-id FROM sailors WHERE sailor-name = 'Jeff Moreau',
SELECT duty-id FROM duties WHERE duty-name = 'Normandy AssistantCaptain'
);
