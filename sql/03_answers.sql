-- 03_answers.sql
-- รวมคำตอบ SQL ตามข้อในเอกสาร

/* 1.3 Combine 2 rows into 1 row (EmpID เดียวกัน รวม UserRight เป็นบรรทัดเดียว)
*/
SELECT
    EmpID,
    STRING_AGG(UserRight, ', ') AS UserRights
FROM dbo.UserRight
GROUP BY EmpID;

/* 1.4 Fetch how many persons in “QMS” Department */
SELECT COUNT(*) AS TotalPersonInQMS
FROM dbo.Employee
WHERE Department = 'QMS';

/* 1.5 Fetch records having matching data in some fields of Work table, Bonus Table, Title Table*/
 SELECT *
 FROM Work w
 INNER JOIN Bonus b ON w.EmpID = b.EmpID
 INNER JOIN Title t ON w.TitleID = t.TitleID;
