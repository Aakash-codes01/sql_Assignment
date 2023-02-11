CREATE DATABASE IF NOT EXISTS UNIVERSITY;
USE UNIVERSITY;

CREATE TABLE records(
   Candidate_id INT PRIMARY KEY,
   Email VARCHAR(70)
);

INSERT INTO records(Candidate_id, Email)
VALUES(45,'abc@gmail.com'),
      (23,'def@gmail.com'),
      (34,'abc@gmail.com'),
      (21,'bcf@gmail.com'),
      (94,'def@gmail.com');
      
SELECT * FROM records
;

create view Temp_info as SELECT MIN(Candidate_id) AS Candidate_ID
FROM records
GROUP BY Email
ORDER BY Candidate_ID DESC ;

DELETE from records where candidate_id not in
(select candidate_id from Temp_info);

SELECT * FROM records
;
