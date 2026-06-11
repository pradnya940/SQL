CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50)
);

INSERT INTO Employee VALUES
(101,'Amit','HR'),
(102,'Priya','IT'),
(103,'Rahul','Finance'),
(104,'Sneha','Marketing'),
(105,'Karan','IT'),
(106,'Neha','HR'),
(107,'Rohit','Sales'),
(108,'Anjali','Finance'),
(109,'Vikas','Marketing'),
(110,'Pooja','Sales');
CREATE TABLE Salary (
    EmployeeID INT PRIMARY KEY,
    TotalSalary INT,
    FinancialYear VARCHAR(10)
);

INSERT INTO Salary VALUES
(101,500000,'2026-27'),
(102,850000,'2026-27'),
(103,700000,'2026-27'),
(104,600000,'2026-27'),
(105,950000,'2026-27'),
(106,550000,'2026-27'),
(107,750000,'2026-27'),
(108,650000,'2026-27'),
(109,800000,'2026-27'),
(110,900000,'2026-27');

CREATE TABLE Performance (
    EmployeeID INT PRIMARY KEY,
    Ratings INT,
    Tags VARCHAR(20)
);

INSERT INTO Performance VALUES
(101,3,'Average'),
(102,5,'Excellent'),
(103,4,'Good'),
(104,2,'Average'),
(105,5,'Excellent'),
(106,4,'Good'),
(107,3,'Average'),
(108,5,'Excellent'),
(109,4,'Good'),
(110,5,'Excellent');

SELECT e.EmployeeID,
       e.Name,
       e.Department,
       s.TotalSalary,
       s.FinancialYear,
       p.Ratings,
       p.Tags
FROM Employee e
JOIN Salary s
ON e.EmployeeID = s.EmployeeID
JOIN Performance p
ON e.EmployeeID = p.EmployeeID;

SELECT e.EmployeeID,
       e.Name,
       e.Department,
       s.TotalSalary
FROM Employee e
JOIN Salary s
ON e.EmployeeID = s.EmployeeID
ORDER BY s.TotalSalary DESC
LIMIT 5;

SELECT e.EmployeeID,
       e.Name,
       e.Department,
       p.Ratings,
       p.Tags
FROM Employee e
JOIN Performance p
ON e.EmployeeID = p.EmployeeID
WHERE p.Tags IN ('Good','Excellent');

SELECT e.EmployeeID,
       e.Name,
       e.Department,
       s.TotalSalary,
       p.Ratings,
       p.Tags
FROM Employee e
JOIN Salary s
ON e.EmployeeID = s.EmployeeID
JOIN Performance p
ON e.EmployeeID = p.EmployeeID
WHERE p.Tags IN ('Good','Excellent')
ORDER BY s.TotalSalary DESC
LIMIT 5;

INSERT INTO Performance (EmployeeID, Ratings, Tags)
VALUES (105,5,'Excellent')
ON DUPLICATE KEY UPDATE
Ratings = 5,
Tags = 'Excellent';

SELECT * FROM Performance;