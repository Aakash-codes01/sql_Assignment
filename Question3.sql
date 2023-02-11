CREATE DATABASE IF NOT EXISTS Company;
USE Company;

CREATE TABLE Exam(
   Candidate_id INT PRIMARY KEY AUTO_INCREMENT,
   Marks INT NOT NULL
);

INSERT INTO Exam(Marks)
VALUES(98),(78),(87),(98),(78);

SELECT * FROM Exam;

SELECT Marks, 
       RANK() OVER(ORDER BY Marks DESC) 'Rank',
       GROUP_CONCAT(Candidate_id) AS Candidate_id 
FROM EXAM
GROUP BY Marks
ORDER BY Marks DESC;
