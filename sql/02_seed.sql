-- 02_seed.sql
-- Seed ข้อมูลตัวอย่าง

INSERT INTO dbo.Employee (EmpName, Department)
VALUES ('John', 'QMS'),
       ('Mary', 'IT'),
       ('Tom',  'QMS');

-- 1.2 Insert Employee name “Earth” และใส่สิทธิ์ 2 รายการ
INSERT INTO dbo.Employee (EmpName, Department)
VALUES ('Earth', 'IT');

DECLARE @EarthEmpID INT = SCOPE_IDENTITY();

INSERT INTO dbo.UserRight (EmpID, UserRight)
VALUES (@EarthEmpID, 'Maintain program'),
       (@EarthEmpID, 'Delete program');
