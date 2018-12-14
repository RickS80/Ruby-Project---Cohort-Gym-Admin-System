DROP TABLE bookedclasses;
DROP TABLE members;
DROP TABLE gymclasses;

CREATE TABLE members (
  id SERIAL8 primary key,
  name VARCHAR(255),
  age INT2,
  gender VARCHAR(255),
  membership_category VARCHAR(255)
);

CREATE TABLE gymclasses(
  id SERIAL8 primary key,
  gymclass_name VARCHAR(255),
  instructor VARCHAR(255),
  capacity INT8,
  start_time TIMESTAMP,
  end_time TIMESTAMP
);

CREATE TABLE bookedclasses(
  id SERIAL8 primary key,
  member_id INT8 REFERENCES members(id) ON DELETE CASCADE,
  gymclass_id INT8 REFERENCES gymclasses(id) ON DELETE CASCADE
);
