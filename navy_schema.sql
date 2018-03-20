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
rank VARCHAR(50),
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
