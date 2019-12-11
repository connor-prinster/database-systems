alter table role drop foreign key actorrole;
drop table if exists actor;
drop table if exists role;

CREATE TABLE actor (name VARCHAR(70), id INTEGER, primary key (id, name));
CREATE TABLE role (id INTEGER, type VARCHAR(70), random INTEGER, primary key (id, type, random));
ALTER TABLE role ADD CONSTRAINT actorrole FOREIGN KEY (id) REFERENCES actor (id);

INSERT INTO actor VALUES ('Buck Adams', 0);
INSERT INTO actor VALUES ('Don Adams', 1);
INSERT INTO actor VALUES ('Granville Adams', 2);
INSERT INTO actor VALUES ('J. B. Adams', 3);
INSERT INTO actor VALUES ('Jimmie Adams', 4);
INSERT INTO actor VALUES ('Mason Adams', 5);
INSERT INTO actor VALUES ('Victor Adamson', 6);
INSERT INTO actor VALUES ('Thom Adcox-Hernandez', 7);
INSERT INTO actor VALUES ('Anthony Addabbo', 8);
INSERT INTO actor VALUES ('Wesley Addy', 9);
INSERT INTO actor VALUES ('Debo Adegbile', 10);
INSERT INTO actor VALUES ('Paul Adelstein', 11);
INSERT INTO actor VALUES ('Lawrence Adisal', 12);
INSERT INTO actor VALUES ('Seth Adkins', 13);
INSERT INTO actor VALUES ('Ben Affleck', 14);

INSERT INTO role VALUES (6, 'director', 92);
INSERT INTO role VALUES (4, 'actor', 29);
INSERT INTO role VALUES (4, 'boom', 98);
INSERT INTO role VALUES (5, 'caterer', 91);
INSERT INTO role VALUES (4, 'boom', 90);
INSERT INTO role VALUES (4, 'director', 62);
INSERT INTO role VALUES (10, 'stuntman', 41);
INSERT INTO role VALUES (10, 'boom', 84);
INSERT INTO role VALUES (0, 'caterer', 0);
INSERT INTO role VALUES (4, 'staffer', 40);
INSERT INTO role VALUES (1, 'caterer', 26);
INSERT INTO role VALUES (1, 'producer', 57);
INSERT INTO role VALUES (1, 'staffer', 88);
INSERT INTO role VALUES (9, 'caterer', 38);
INSERT INTO role VALUES (6, 'director', 20);
INSERT INTO role VALUES (3, 'actor', 65);
INSERT INTO role VALUES (3, 'director', 58);
INSERT INTO role VALUES (6, 'caterer', 66);
INSERT INTO role VALUES (2, 'director', 84);
INSERT INTO role VALUES (6, 'staffer', 28);
INSERT INTO role VALUES (8, 'producer', 69);
INSERT INTO role VALUES (2, 'staffer', 27);
INSERT INTO role VALUES (5, 'actor', 36);
INSERT INTO role VALUES (9, 'caterer', 69);
INSERT INTO role VALUES (13, 'caterer', 86);
INSERT INTO role VALUES (10, 'director', 30);
INSERT INTO role VALUES (1, 'stuntman', 30);
INSERT INTO role VALUES (13, 'boom', 83);
INSERT INTO role VALUES (13, 'director', 27);
INSERT INTO role VALUES (9, 'stuntman', 57);
INSERT INTO role VALUES (12, 'producer', 85);
INSERT INTO role VALUES (1, 'actor', 3);
INSERT INTO role VALUES (10, 'director', 38);
INSERT INTO role VALUES (5, 'actor', 93);
INSERT INTO role VALUES (5, 'producer', 86);
INSERT INTO role VALUES (6, 'producer', 15);
INSERT INTO role VALUES (9, 'actor', 41);
INSERT INTO role VALUES (12, 'producer', 76);
INSERT INTO role VALUES (11, 'producer', 86);
INSERT INTO role VALUES (0, 'director', 85);
INSERT INTO role VALUES (3, 'caterer', 42);
INSERT INTO role VALUES (7, 'actor', 64);
INSERT INTO role VALUES (12, 'boom', 36);
INSERT INTO role VALUES (2, 'producer', 4);
INSERT INTO role VALUES (3, 'caterer', 89);
INSERT INTO role VALUES (2, 'actor', 78);
INSERT INTO role VALUES (4, 'director', 95);
INSERT INTO role VALUES (8, 'director', 1);
INSERT INTO role VALUES (13, 'director', 35);
INSERT INTO role VALUES (8, 'boom', 25);
INSERT INTO role VALUES (1, 'staffer', 28);
INSERT INTO role VALUES (11, 'director', 89);
INSERT INTO role VALUES (5, 'stuntman', 43);
INSERT INTO role VALUES (1, 'stuntman', 53);
INSERT INTO role VALUES (2, 'stuntman', 64);
INSERT INTO role VALUES (10, 'director', 98);
INSERT INTO role VALUES (9, 'stuntman', 47);
INSERT INTO role VALUES (7, 'actor', 11);
INSERT INTO role VALUES (1, 'director', 99);
INSERT INTO role VALUES (0, 'actor', 55);
INSERT INTO role VALUES (14, 'stuntman', 83);
INSERT INTO role VALUES (13, 'caterer', 49);
INSERT INTO role VALUES (4, 'actor', 22);
INSERT INTO role VALUES (4, 'staffer', 16);
INSERT INTO role VALUES (0, 'caterer', 12);
INSERT INTO role VALUES (0, 'actor', 0);
INSERT INTO role VALUES (3, 'staffer', 13);
INSERT INTO role VALUES (9, 'director', 62);
INSERT INTO role VALUES (0, 'stuntman', 69);
INSERT INTO role VALUES (10, 'stuntman', 32);
INSERT INTO role VALUES (1, 'boom', 67);
INSERT INTO role VALUES (10, 'staffer', 33);
INSERT INTO role VALUES (9, 'stuntman', 83);
INSERT INTO role VALUES (10, 'boom', 57);
INSERT INTO role VALUES (11, 'producer', 64);
INSERT INTO role VALUES (7, 'stuntman', 21);
INSERT INTO role VALUES (5, 'stuntman', 72);
INSERT INTO role VALUES (12, 'actor', 40);
INSERT INTO role VALUES (7, 'producer', 14);
INSERT INTO role VALUES (7, 'boom', 47);
INSERT INTO role VALUES (14, 'producer', 9);
INSERT INTO role VALUES (14, 'boom', 30);
INSERT INTO role VALUES (4, 'staffer', 15);
INSERT INTO role VALUES (3, 'actor', 3);
INSERT INTO role VALUES (6, 'director', 41);
INSERT INTO role VALUES (14, 'stuntman', 96);
INSERT INTO role VALUES (0, 'staffer', 24);
INSERT INTO role VALUES (13, 'staffer', 79);
INSERT INTO role VALUES (5, 'actor', 55);
INSERT INTO role VALUES (8, 'boom', 9);
INSERT INTO role VALUES (9, 'boom', 31);
INSERT INTO role VALUES (7, 'caterer', 42);
INSERT INTO role VALUES (2, 'producer', 84);
INSERT INTO role VALUES (7, 'stuntman', 22);
INSERT INTO role VALUES (4, 'producer', 53);
INSERT INTO role VALUES (10, 'actor', 50);
INSERT INTO role VALUES (11, 'director', 19);
INSERT INTO role VALUES (2, 'boom', 2);
INSERT INTO role VALUES (4, 'caterer', 59);
INSERT INTO role VALUES (14, 'director', 61);

select * from actor;

-- QUESTION 14 --
select name
from actor, role
where actor.id = role.id;

-- QUESTION 15 --
SELECT id
FROM role
WHERE id NOT IN (
SELECT id
FROM actor)