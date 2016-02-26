DROP DATABASE IF EXISTS hogwarts_mills_mcilroy;
CREATE DATABASE hogwarts_mills_mcilroy;

\connect hogwarts_mills_mcilroy;

DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS parents;
DROP TABLE IF EXISTS students_parents;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS students_classes;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS houses;


CREATE TABLE students (
  id serial primary key,
  name varchar(70),
  year int,
  house_id int
);

CREATE TABLE parents (
  id serial primary key,
  name varchar(70)
);

CREATE TABLE students_parents (
  student_id int,
  parent_id int
);

CREATE TABLE classes (
  id serial primary key,
  name varchar(70),
  teacher_id int,
  subject_id int
);

CREATE TABLE students_classes (
  student_id int,
  class_id int
);

CREATE TABLE subjects (
  id serial primary key,
  name varchar(70)
);

CREATE TABLE teachers (
  id serial primary key,
  name varchar(70),
  subject_id int
);

CREATE TABLE houses (
  id serial primary key,
  name varchar(70),
  head_teacher_id int
);

