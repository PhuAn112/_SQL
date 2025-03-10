--CREATE TABLE
CREATE TABLE job_applied (
        job_id INT,
        application_sent_date Date,
        custom_resume Boolean,
        resume_file_name varchar(225),
        cover_letter_sent Boolean,
        cover_letter_file_name varchar(225),
        status varchar(50)
);

SELECT*
FROm job_applied;


--INSERT INTO (add date into the table)
INSERT INTO job_applied
            (job_id,
             application_sent_date,
             custom_resume,
             resume_file_name,
             cover_letter_sent,
             cover_letter_file_name,
             status)
VALUES      (6,
             '2024-02-06',
             true,
             'resume_06.pdf',
             true,
             'cover_letter_06.pdf',
             'interview scheduled'),
            (7,
             '2024-02-07',
             false,
             'resume_07.pdf',
             false,
             NULL,
             'submitted'),
            (8,
             '2024-02-08',
             true,
             'resume_08.pdf',
             true,
             'cover_letter_08.pdf',
             'rejected'),
            (9,
             '2024-02-09',
             true,
             'resume_09.pdf',
             false,
             NULL,
             'ghosted'),
            (10,
             '2024-02-10',
             false,
             'resume_10.pdf',
             true,
             'cover_letter_10.pdf',
             'interview scheduled'),
            (11,
             '2024-02-11',
             true,
             'resume_11.pdf',
             true,
             'cover_letter_11.pdf',
             'submitted'),
            (12,
             '2024-02-12',
             false,
             'resume_12.pdf',
             false,
             NULL,
             'rejected'),
            (13,
             '2024-02-13',
             true,
             'resume_13.pdf',
             true,
             'cover_letter_13.pdf',
             'ghosted'),
            (14,
             '2024-02-14',
             true,
             'resume_14.pdf',
             false,
             NULL,
             'interview scheduled'),
            (15,
             '2024-02-15',
             false,
             'resume_15.pdf',
             true,
             'cover_letter_15.pdf',
             'submitted'),
            (16,
             '2024-02-16',
             true,
             'resume_16.pdf',
             true,
             'cover_letter_16.pdf',
             'rejected'),
            (17,
             '2024-02-17',
             false,
             'resume_17.pdf',
             false,
             NULL,
             'ghosted'),
            (18,
             '2024-02-18',
             true,
             'resume_18.pdf',
             true,
             'cover_letter_18.pdf',
             'interview scheduled'),
            (19,
             '2024-02-19',
             true,
             'resume_19.pdf',
             false,
             NULL,
             'submitted'),
            (20,
             '2024-02-20',
             false,
             'resume_20.pdf',
             true,
             'cover_letter_20.pdf',
             'rejected'),
            (21,
             '2024-02-21',
             true,
             'resume_21.pdf',
             true,
             'cover_letter_21.pdf',
             'ghosted'),
            (22,
             '2024-02-22',
             false,
             'resume_22.pdf',
             false,
             NULL,
             'interview scheduled'),
            (23,
             '2024-02-23',
             true,
             'resume_23.pdf',
             true,
             'cover_letter_23.pdf',
             'submitted'),
            (24,
             '2024-02-24',
             true,
             'resume_24.pdf',
             false,
             NULL,
             'rejected'),
            (25,
             '2024-02-25',
             false,
             'resume_25.pdf',
             true,
             'cover_letter_25.pdf',
             'ghosted'),
            (26,
             '2024-02-26',
             true,
             'resume_26.pdf',
             true,
             'cover_letter_26.pdf',
             'interview scheduled'),
            (27,
             '2024-02-27',
             false,
             'resume_27.pdf',
             false,
             NULL,
             'submitted'),
            (28,
             '2024-02-28',
             true,
             'resume_28.pdf',
             true,
             'cover_letter_28.pdf',
             'rejected'),
            (29,
             '2024-02-29',
             true,
             'resume_29.pdf',
             false,
             NULL,
             'ghosted'),
            (30,
             '2024-03-01',
             false,
             'resume_30.pdf',
             true,
             'cover_letter_30.pdf',
             'interview scheduled'),
            (31,
             '2024-03-02',
             true,
             'resume_31.pdf',
             true,
             'cover_letter_31.pdf',
             'submitted'),
            (32,
             '2024-03-03',
             false,
             'resume_32.pdf',
             false,
             NULL,
             'rejected'),
            (33,
             '2024-03-04',
             true,
             'resume_33.pdf',
             true,
             'cover_letter_33.pdf',
             'ghosted'),
            (34,
             '2024-03-05',
             true,
             'resume_34.pdf',
             false,
             NULL,
             'interview scheduled'),
            (35,
             '2024-03-06',
             false,
             'resume_35.pdf',
             true,
             'cover_letter_35.pdf',
             'submitted'),
            (36,
             '2024-03-07',
             true,
             'resume_36.pdf',
             true,
             'cover_letter_36.pdf',
             'rejected'),
            (37,
             '2024-03-08',
             false,
             'resume_37.pdf',
             false,
             NULL,
             'ghosted'),
            (38,
             '2024-03-09',
             true,
             'resume_38.pdf',
             true,
             'cover_letter_38.pdf',
             'interview scheduled'),
            (39,
             '2024-03-10',
             true,
             'resume_39.pdf',
             false,
             NULL,
             'submitted'),
            (40,
             '2024-03-11',
             false,
             'resume_40.pdf',
             true,
             'cover_letter_40.pdf',
             'rejected'),
            (41,
             '2024-03-12',
             true,
             'resume_41.pdf',
             true,
             'cover_letter_41.pdf',
             'ghosted'),
            (42,
             '2024-03-13',
             false,
             'resume_42.pdf',
             false,
             NULL,
             'interview scheduled'),
            (43,
             '2024-03-14',
             true,
             'resume_43.pdf',
             true,
             'cover_letter_43.pdf',
             'submitted'),
            (44,
             '2024-03-15',
             true,
             'resume_44.pdf',
             false,
             NULL,
             'rejected'),
            (45,
             '2024-03-16',
             false,
             'resume_45.pdf',
             true,
             'cover_letter_45.pdf',
             'ghosted'),
            (46,
             '2024-03-17',
             true,
             'resume_46.pdf',
             true,
             'cover_letter_46.pdf',
             'interview scheduled'),
            (47,
             '2024-03-18',
             false,
             'resume_47.pdf',
             false,
             NULL,
             'submitted'),
            (48,
             '2024-03-19',
             true,
             'resume_48.pdf',
             true,
             'cover_letter_48.pdf',
             'rejected'),
            (49,
             '2024-03-20',
             true,
             'resume_49.pdf',
             false,
             NULL,
             'ghosted'),
            (50,
             '2024-03-21',
             false,
             'resume_50.pdf',
             true,
             'cover_letter_50.pdf',
             'interview scheduled'),
            (51,
             '2024-03-22',
             true,
             'resume_51.pdf',
             true,
             'cover_letter_51.pdf',
             'submitted'),
            (52,
             '2024-03-23',
             false,
             'resume_52.pdf',
             false,
             NULL,
             'rejected'),
            (53,
             '2024-03-24',
             true,
             'resume_53.pdf',
             true,
             'cover_letter_53.pdf',
             'ghosted'),
            (54,
             '2024-03-25',
             true,
             'resume_54.pdf',
             false,
             NULL,
             'interview scheduled'),
            (55,
             '2024-03-26',
             false,
             'resume_55.pdf',
             true,
             'cover_letter_55.pdf',
             'submitted'),
            (56,
             '2024-03-27',
             true,
             'resume_56.pdf',
             true,
             'cover_letter_56.pdf',
             'rejected'),
            (57,
             '2024-03-28',
             false,
             'resume_57.pdf',
             false,
             NULL,
             'ghosted'),
            (58,
             '2024-03-29',
             true,
             'resume_58.pdf',
             true,
             'cover_letter_58.pdf',
             'interview scheduled'),
            (59,
             '2024-03-30',
             true,
             'resume_59.pdf',
             false,
             NULL,
             'submitted'),
            (60,
             '2024-03-31',
             false,
             'resume_60.pdf',
             true,
             'cover_letter_60.pdf',
             'rejected');       

SELECT *
FROM job_applied;             


--ALTER TABLE (create table)
ALTER TABLE job_applied
ADD contact varchar(50);


--UPDATE (modify exist data)
UPDATE job_applied
SET    contact = 'Richard Hendricks'
WHERE  job_id = 6;
UPDATE job_applied
SET    contact = 'Monica Hall'
WHERE  job_id = 7;
UPDATE job_applied
SET    contact = 'Laurie Bream'
WHERE  job_id = 8;
UPDATE job_applied
SET    contact = 'Gavin Belson'
WHERE  job_id = 9;
UPDATE job_applied
SET    contact = 'Jared Dunn'
WHERE  job_id = 10;
UPDATE job_applied
SET    contact = 'Peter Gregory'
WHERE  job_id = 11;
UPDATE job_applied
SET    contact = 'Russ Hanneman'
WHERE  job_id = 12;
UPDATE job_applied
SET    contact = 'Jack Barker'
WHERE  job_id = 13;
UPDATE job_applied
SET    contact = 'Ron LaFlamme'
WHERE  job_id = 14;
UPDATE job_applied
SET    contact = 'Carla Walton'
WHERE  job_id = 15;
UPDATE job_applied
SET    contact = 'Denpok'
WHERE  job_id = 16;
UPDATE job_applied
SET    contact = 'Action Jack'
WHERE  job_id = 17;
UPDATE job_applied
SET    contact = 'Ed Chen'
WHERE  job_id = 18;
UPDATE job_applied
SET    contact = 'Hoover'
WHERE  job_id = 19;
UPDATE job_applied
SET    contact = 'Matt Ross'
WHERE  job_id = 20;
UPDATE job_applied
SET    contact = 'Dana'
WHERE  job_id = 21;
UPDATE job_applied
SET    contact = 'David Huffman'
WHERE  job_id = 22;
UPDATE job_applied
SET    contact = 'Tara'
WHERE  job_id = 23;
UPDATE job_applied
SET    contact = 'Sean Parker'
WHERE  job_id = 24;
UPDATE job_applied
SET    contact = 'Keenan Feldspar'
WHERE  job_id = 25;
UPDATE job_applied
SET    contact = 'Patrice'
WHERE  job_id = 26;
UPDATE job_applied
SET    contact = 'Doug'
WHERE  job_id = 27;
UPDATE job_applied
SET    contact = 'Dr. Crawford'
WHERE  job_id = 28;
UPDATE job_applied
SET    contact = 'Jeff Holden'
WHERE  job_id = 29;
UPDATE job_applied
SET    contact = 'Colin'
WHERE  job_id = 30;
UPDATE job_applied
SET    contact = 'Marcus'
WHERE  job_id = 31;
UPDATE job_applied
SET    contact = 'Carl'
WHERE  job_id = 32;
UPDATE job_applied
SET    contact = 'Dan Melcher'
WHERE  job_id = 33;
UPDATE job_applied
SET    contact = 'Aaron Anderson'
WHERE  job_id = 34;
UPDATE job_applied
SET    contact = 'Evan'
WHERE  job_id = 35;
UPDATE job_applied
SET    contact = 'Ariel Eklow'
WHERE  job_id = 36;
UPDATE job_applied
SET    contact = 'Emily Chang'
WHERE  job_id = 37;
UPDATE job_applied
SET    contact = 'Clay Collins'
WHERE  job_id = 38;
UPDATE job_applied
SET    contact = 'Sarah Lane'
WHERE  job_id = 39;
UPDATE job_applied
SET    contact = 'Jason Barone'
WHERE  job_id = 40;
UPDATE job_applied
SET    contact = 'Keith McLennan'
WHERE  job_id = 41;
UPDATE job_applied
SET    contact = 'Rachel Walters'
WHERE  job_id = 42;
UPDATE job_applied
SET    contact = 'Kevin Lin'
WHERE  job_id = 43;
UPDATE job_applied
SET    contact = 'Priyanka Singh'
WHERE  job_id = 44;
UPDATE job_applied
SET    contact = 'Ben Thompson'
WHERE  job_id = 45;
UPDATE job_applied
SET    contact = 'Olivia Chen'
WHERE  job_id = 46;
UPDATE job_applied
SET    contact = 'Michael Zhang'
WHERE  job_id = 47;
UPDATE job_applied
SET    contact = 'Alicia Gomez'
WHERE  job_id = 48;
UPDATE job_applied
SET    contact = 'David Kim'
WHERE  job_id = 49;
UPDATE job_applied
SET    contact = 'Lisa Patel'
WHERE  job_id = 50;
UPDATE job_applied
SET    contact = 'Mark Johnson'
WHERE  job_id = 51;
UPDATE job_applied
SET    contact = 'Tracy Wilson'
WHERE  job_id = 52;
UPDATE job_applied
SET    contact = 'Robert Chen'
WHERE  job_id = 53;
UPDATE job_applied
SET    contact = 'Jennifer Lee'
WHERE  job_id = 54;
UPDATE job_applied
SET    contact = 'Chris Murphy'
WHERE  job_id = 55;

SELECT *
FROM job_applied;

ALTER TABLE job_applied
RENAME COLUMN contact to contact_name;

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE job_applied
DROP COLUMN contact_name;                 

DROP TABLE job_applied;