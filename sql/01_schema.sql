-- 01_schema.sql
-- Schema สำหรับตัวอย่างตามโจทย์ (Employee / UserRight)

IF OBJECT_ID('dbo.UserRight', 'U') IS NOT NULL DROP TABLE dbo.UserRight;
IF OBJECT_ID('dbo.Employee', 'U') IS NOT NULL DROP TABLE dbo.Employee;

CREATE TABLE dbo.Employee (
    EmpID INT IDENTITY(1,1) PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NULL
);

CREATE TABLE dbo.UserRight (
    RightID INT IDENTITY(1,1) PRIMARY KEY,
    EmpID INT NOT NULL,
    UserRight VARCHAR(100) NOT NULL,
    CONSTRAINT FK_UserRight_Employee FOREIGN KEY (EmpID) REFERENCES dbo.Employee(EmpID)
);
