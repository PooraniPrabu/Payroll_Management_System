--- CREATING NEW DATABASE ---
CREATE DATABASE Project

USE Project

GO

--- CREATING A NEW SCHEMA ---
CREATE SCHEMA pay


--- DEPARTMENT TABLE ---
CREATE TABLE pay.Department (
    Department_id INT IDENTITY(1,1) PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL
);

INSERT INTO pay.Department 
(
	Department_Name
)
VALUES
	('HR'),
	('FrontEnd Devloper'),
	('BackEnd Devloper'),
	('Business Analyst'),
	('Tester'),
	('HR'),
	('Data Engineer'),
	('UX Designer'),
	('Finance'),
	('Customer Service')

SELECT * FROM pay.Department


--- EMPLOYEE TABLE ---

CREATE TABLE pay.Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(45) NOT NULL,
    Department_id INT NOT NULL,
	EmailID VARCHAR(40),
	Password VARCHAR(25),
	CONSTRAINT [UK_pay.Employee] UNIQUE (EmailID),
	CONSTRAINT [UK_pay.Employee1] UNIQUE (Password),
    FOREIGN KEY (Department_id) REFERENCES pay.Department(Department_id)
);



INSERT INTO pay.Employee 
(
	FirstName,
	LastName,	
	Department_id,
	EmailID,
	Password
) 
VALUES
	('Aarav','Sharma',1,'aaravsharma23@gmail.com','aaravsh#11'),
	('Diya','Patel',3,'diyapatel112@yahoo.com','diya*87'),
	('Arjun','Singh',2,'arjunsingh887@gmail.com','arjunsingh#3'),
	('Aarthi','Gupta',5,'aanyagupta45@yahoo.com','aanyagupta23'),
	('Vikram','Kumar',4,'vikramkumar56@yahoo.com','vikram&56'),
	('Ishika','Das',7,'ishikadas123@yahoo.com','ishi#24'),
	('Kabir','Choudhary',6,'kabirchoudhary76@gmail.com','kabirchou@22'),
	('Nandhini','Reddy',8,'nandhinireddy45@outlook.com','nandhu76'),
	('Rohan','Mehta',9,'rohanmehta33@yahoo.com','rohan90'),
	('Riya','Mishra',10,'riyamishra990@yahoo.com','riya78'),
	('Samar','Shah',3,'samshah@gmail.com','sam#123'),
	('Zara','Malhotra',10,'zara.malhotra@gmail.com','zara@123'),
	('Aditya','Verma',2,'adityav@gmail.com','aditya@123'),
	('Kavya','Nair',4,'kavyanair@yahoo.com','kavya@123'),
	('Raj','Kapoor',5,'rajkapoor@gmail.com','raj@123'),
	('Anaya','Thakur',7,'anaya.thakur@yahoo.com','anaya@123'),
	('Vihaan','Bansal',9,'vihaan.bansal@gmail.com','vihaan@123'),
	('Ishaan','Deshmukh',8,'ishaan.deshmukh@gmail.com','ishaan@123'),
	('Tanvi','Gandhi',1,'tanvigandhi@yahoo.com','tanvi@123'),
	('Aryan','Sharma',6,'aryansharma@gmail.com','aryan@123'),
	('Advika','Singh',6,'advika.singh@yahoo.com','advika@123'),
	('Kabir','Joshi',2,'kabir.joshi@gmail.com','kabir@123'),
	('Myra','Malik',3,'myra.malik@yahoo.com','myra@123'),
	('Ayaan','Chopra',4,'ayaan.chopra@gmail.com','ayaan@123'),
	('Reyansh','Agarwal',5,'reyansh.agarwal@yahoo.com','reyansh@123'),
	('Anvi','Khan',10,'anvi.khan@gmail.com','anvi@123'),
	('Dhruv','Gupta',7,'dhruvgupta@yahoo.com','dhruv@123'),
	('Aadhya','Shah',8,'aadhya.shah@gmail.com','aadhya@123'),
	('Aahana','Chauhan',1,'aahana.chauhan@yahoo.com','aahana@123'),
	('Shaurya','Dube',9,'shaurya.dube@gmail.com','shaurya@123')
	

SELECT * FROM pay.Employee

--- EMPLOYEEDETAILS TABLE ---

CREATE TABLE pay.EmployeeDetails
(
	DetailsID INT IDENTITY(300,1) PRIMARY KEY,
	EmployeeID INT,
	DOB Date,
	Age SMALLINT,
	Address VARCHAR(40),
	City VARCHAR(25),
	Country VARCHAR(25),
	PhoneNo BIGINT,
	Hire_Date DATE 
	FOREIGN KEY(EmployeeID) REFERENCES pay.Employee(EmployeeID),
	CONSTRAINT [UK_payEmployeeDetails] UNIQUE(PhoneNo)
)

INSERT INTO	pay.EmployeeDetails
(
	EmployeeID,
	DOB,
	Age,
	Address,
	City,
	Country,
	PhoneNo,
	Hire_Date
) 
VALUES
	(1,'1997-03-21',27,'123 Green Park','New Delhi','India',8774967874,'2020-07-11'),
	(2,'1997-06-24',27,'456 Sunshine Avenue','Mumbai','India',9387548575,'2019-08-04'),
	(3,'1998-02-14',26,'789 Rosewood Lane','Bangalore','India',8574692001,'2020-09-11'),
	(4,'1997-01-12',27,'101 River Road','Mumbai','India',8744963785,'2019-08-23'),
	(5,'1998-07-11',26,'122 Mountain View','Chennai','India',8667454871,'2021-10-10'),
	(6,'1998-10-06',26,'44 Orchard Street','Hyderabad','India',7523841108,'2020-07-24'),
	(7,'1997-04-10',27,'890 Lakeview Drive','Pune','India',8774596370,'2019-11-06'),
	(8,'1999-10-05',25,'112 Sunset Boulevard','Ahmedabad','India',9006713689,'2021-10-11'),
	(9,'1998-04-04',26,'673 Spring Valley','Jaipur','India',6387415800,'2020-12-25'),
	(10,'1996-02-11',28,'910 Jasmine Lane','Surat','India',9001435890,'2018-09-09'),
	(11,'1997-08-15',26,'221 Park Avenue','Kolkata','India',9000087745,'2020-05-20'),
	(12,'1996-11-30',27,'333 Maple Street','Chandigarh','India',8774599661,'2019-11-15'),
	(13,'1999-05-25',24,'444 Oak Lane','Jaipur','India',7538241575,'2021-08-08'),
	(14,'1998-09-20',23,'555 Elm Street','Lucknow','India',9666675550,'2020-06-10'),
	(15,'1997-03-12',26,'666 Pine Street','Bhopal','India',8111100552,'2021-01-02'),
	(16,'1996-06-07',25,'777 Cedar Lane','Indore','India',9800047523,'2020-09-15'),
	(17,'1999-01-03',22,'888 Walnut Street','Patna','India',74448666921,'2019-12-20'),
	(18,'1998-04-18',23,'999 Birch Lane','Kanpur','India',8555471230,'2021-03-25'),
	(19,'1997-07-29',24,'111 Acorn Street','Nagpur','India',8666744522,'2020-07-15'),
	(20,'1996-12-24',25,'222 Spruce Lane','Agra','India',9558744632,'2019-10-10'),
	(21,'1999-02-19',22,'333 Cedar Lane','Varanasi','India',8775416692,'2021-05-12'),
	(22,'1998-05-14',23,'444 Maple Street','Pune','India',9658741236,'2020-08-18'),
	(23,'1997-08-09',24,'555 Oak Lane','Ahmedabad','India',8597412203,'2019-11-22'),
	(24,'1996-11-04',25,'666 Elm Street','Nashik','India',9882165785,'2020-06-30'),
	(25,'1999-04-29',22,'777 Pine Street','Thane','India',8874230169,'2021-02-28'),
	(26,'1998-07-24',23,'888 Cedar Lane','Gurgaon','India',6325748158,'2020-09-05'),
	(27,'1997-10-19',24,'999 Walnut Street','Faridabad','India',6871259403,'2019-12-10'),
	(28,'1996-01-14',25,'111 Birch Lane','Kolkata','India',8574963120,'2021-03-15'),
	(29,'1999-06-09',22,'222 Acorn Street','Chandigarh','India',7558996332,'2020-08-20'),
	(30,'1998-09-04',23,'333 Spruce Lane','Jaipur','India',7548120399,'2019-10-25')

SELECT * FROM pay.EmployeeDetails

--- SALARYDETAILS TABLE ---

CREATE TABLE pay.Salarydetails (
    SalarydetailsID INT IDENTITY(1,1),
	EmployeeID INT,
    Basic_Salary DECIMAL(10,2) NOT NULL,
    HRA DECIMAL(10,2) NOT NULL,
    DA DECIMAL(10,2) NOT NULL,
    PF DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES pay.Employee(EmployeeID)
);


INSERT INTO pay.Salarydetails
(
	EmployeeID, 
	Basic_Salary, 
	HRA, 
	DA, 
	PF
) 
VALUES
	(1, 5000, 2000, 1500, 1000),
	(2, 6000, 2500, 1800, 1200),
	(3, 5500, 2300, 1600, 1100),
	(4, 5200, 2100, 1700, 1000),
	(5, 5800, 2400, 1900, 1300),
	(6, 5300, 2200, 1550, 1050),
	(7, 5100, 2050, 1450, 950),
	(8, 5700, 2350, 1750, 1150),
	(9, 5400, 2250, 1650, 1075),
	(10, 5900, 2550, 1850, 1250),
	(11, 5100, 2050, 1450, 950),
	(12, 5800, 2400, 1900, 1300),
	(13, 5500, 2300, 1600, 1100),
	(14, 5300, 2200, 1550, 1050),
	(15, 5200, 2100, 1700, 1000),
	(16, 5900, 2550, 1850, 1250),
	(17, 5700, 2350, 1750, 1150),
	(18, 5400, 2250, 1650, 1075),
	(19, 6000, 2500, 1800, 1200),
	(20, 5600, 2300, 1600, 1100),
	(21, 5700, 2350, 1750, 1150),
	(22, 5500, 2300, 1600, 1100),
	(23, 5200, 2100, 1700, 1000),
	(24, 5900, 2550, 1850, 1250),
	(25, 5600, 2300, 1600, 1100),
	(26, 5300, 2200, 1550, 1050),
	(27, 5100, 2050, 1450, 950),
	(28, 5800, 2400, 1900, 1300),
	(29, 5500, 2300, 1600, 1100),
	(30, 5400, 2250, 1650, 1075)

SELECT * FROM pay.Salarydetails

--- ATTENDANCE TABLE ---

CREATE TABLE pay.Attendance 
(
    AttendanceID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    Schedule DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES pay.Employee(EmployeeID)
);

SELECT * FROM pay.Attendance;


ALTER TABLE pay.Attendance ADD JanuaryLOP MONEY 
ALTER TABLE pay.Attendance ADD FebruaryLOP MONEY 
ALTER TABLE pay.Attendance ADD MarchLOP MONEY 

ALTER TABLE pay.Attendance ADD Status VARCHAR(10)


--- CREATING THE STORED PROCEDURE TO CALCULATE SCHEDULE & STATUS AND ALSO CALCULATING THE LOP FOR EACH MONTH ---
CREATE PROCEDURE CalculateMonth
(
    @EmployeeID INT,
    @Schedule DATE,
    @Status VARCHAR(3)
)
AS
BEGIN
    DECLARE @StartDate DATE;
    DECLARE @EndDate DATE;

    SET NOCOUNT ON;

    SET @StartDate = DATEFROMPARTS(YEAR(@Schedule), 1, 1);
    SET @EndDate = DATEFROMPARTS(YEAR(@Schedule), 3, 31);

    -- Insert record for the specified Schedule
    
	INSERT INTO pay.Attendance (EmployeeID, Schedule, Status) 
    VALUES (@EmployeeID, @Schedule, @Status);

    -- Calculate LOP for January
    
	DECLARE @JanuaryLOP DECIMAL(10, 2);
    SELECT @JanuaryLOP = ISNULL(SUM(CASE WHEN Status = 'AB' THEN 0.5 ELSE 0 END), 0)
    FROM pay.Attendance
    WHERE EmployeeID = @EmployeeID
    AND Schedule BETWEEN @StartDate AND DATEADD(DAY, -1, DATEADD(MONTH, 1, @StartDate));

    -- Calculate LOP for February 
    
	DECLARE @FebruaryLOP DECIMAL(10, 2);
    SELECT @FebruaryLOP = ISNULL(SUM(CASE WHEN Status = 'AB' THEN 0.5 ELSE 0 END), 0)
    FROM pay.Attendance
    WHERE EmployeeID = @EmployeeID
    AND Schedule BETWEEN DATEADD(MONTH, 1, @StartDate) AND DATEADD(DAY, -1, DATEADD(MONTH, 2, @StartDate));

    -- Calculate LOP for March 
    
	DECLARE @MarchLOP DECIMAL(10, 2);
    SELECT @MarchLOP = ISNULL(SUM(CASE WHEN Status = 'AB' THEN 0.5 ELSE 0 END), 0)
    FROM pay.Attendance
    WHERE EmployeeID = @EmployeeID
    AND Schedule BETWEEN DATEADD(MONTH, 2, @StartDate) AND @EndDate;

    -- Update LOP for each month for the employee
   
   UPDATE pay.Attendance
    SET JanuaryLOP = @JanuaryLOP,
        FebruaryLOP = @FebruaryLOP,
        MarchLOP = @MarchLOP
    WHERE EmployeeID = @EmployeeID
    AND Schedule = @Schedule; -- Add condition for specific schedule

    -- Execute the status for each month
    
	UPDATE pay.Attendance
    SET Status = @Status
    WHERE EmployeeID = @EmployeeID
    AND Schedule = @Schedule; -- Add condition for specific schedule
END;

--- EXECUTING THE STORED PROCEDURE FOR EACH EMPLOYEE IS PRESENT OR ABSENT OR WORK FROM HOME ON EACH DATE OF THE MONTH ----
--- P REPRESENT 'PRESENT'---

EXEC CalculateMonth
	@EmployeeID = 1,
	@Schedule = '2024-03-04',
	@Status = 'P'

--- AB REPRESENT 'ABSENT'---

EXEC CalculateMonth
	@EmployeeID = 1,
	@Schedule = '2024-03-05',
	@Status = 'AB'

--- WF REPRESENT 'WORK FROM HOME'---

EXEC CalculateMonth
	@EmployeeID = 1,
	@Schedule = '2024-03-08',
	@Status = 'WFH'

SELECT * FROM pay.Attendance

--- SALARY TABLE ---

CREATE TABLE pay.Salary 
(
    SalaryID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    Salary_Month DATE NOT NULL,
    Total_Salary DECIMAL(10,2) NOT NULL,
    NetPay DECIMAL(10,2) NOT NULL,
    Total_Deduction DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES pay.Employee(EmployeeID)
);


--- CREATING STORED PROCEDURE TO CALCULATE THE NETPAY & TOTAL DEDUCTION USING LOP ---
CREATE PROCEDURE EmployeePayslip 
(
	@EmployeeID INT
)
AS
BEGIN
    DECLARE @Month_Start DATE;
    DECLARE @Month_End DATE;
    DECLARE @Total_Days DECIMAL(10,2);
    DECLARE @Total_Attendance INT;
    DECLARE @Total_Leave INT;
    DECLARE @Total_Salary DECIMAL(10,2);
    DECLARE @Total_Deduction DECIMAL(10,2);
    DECLARE @NetPay DECIMAL(10,2);

	SET NOCOUNT ON;
    -- Iterate over three months
    SET @Month_Start = '2024-01-01';
    WHILE @Month_Start <= '2024-03-31'
    BEGIN
        -- Calculate month end date
        SET @Month_End = DATEADD(MONTH, 1, @Month_Start);
        SET @Month_End = DATEADD(DAY, -1, @Month_End); -- Last day of the month
        
        -- Calculate total days in the month
        SET @Total_Days = DATEDIFF(DAY, @Month_Start, @Month_End) + 1;

        -- Calculate total attendance
        SELECT @Total_Attendance = COUNT(*)
        FROM pay.Attendance
        WHERE EmployeeID = @EmployeeID
        AND Schedule BETWEEN @Month_Start AND @Month_End;

        -- Calculate total leave
        SELECT @Total_Leave = COUNT(*)
        FROM pay.Attendance
        WHERE EmployeeID = @EmployeeID
        AND Schedule BETWEEN @Month_Start AND @Month_End

        -- Calculate total salary components for the month
        SELECT @Total_Salary = (Basic_Salary + HRA + DA - PF)
        FROM pay.Salarydetails
        WHERE EmployeeID = @EmployeeID;

        -- Calculate deductions
        SET @Total_Deduction = 0;
        -- Example deduction calculation, replace with actual logic
        IF @Total_Leave > 1 
            SET @Total_Deduction = @Total_Deduction + (@Total_Leave - 1) * (@Total_Salary / @Total_Days);

        -- Calculate net pay
        SET @NetPay = @Total_Salary - @Total_Deduction;

        -- Insert salary details into the salary table
        INSERT INTO pay.Salary(EmployeeID, Salary_Month ,Total_Salary , NetPay, Total_Deduction)
        VALUES (@EmployeeID, @Month_Start, @Total_Salary, @Total_Deduction, @NetPay);

        -- Move to next month
        SET @Month_Start = DATEADD(MONTH, 1, @Month_Start);
    END
END

--- STORED PROCEDURE FOR NETPAY & TOTAL DEDUCTION FOR EACH EMPLOYEE---

EXEC EmployeePayslip 
	@EmployeeID = 10;

SELECT * FROM pay.Salary


--- VISUALIZE THE EMPLOYEE DETAILS WITH SALARY PAYSLIP ---

SELECT * FROM pay.Employee E 
JOIN pay.Department D
ON E.Department_id = D.Department_id
JOIN pay.EmployeeDetails ED
ON E.EmployeeID =ED.EmployeeID
JOIN pay.Attendance A
ON E.EmployeeID = A.EmployeeID
JOIN pay.Salary S
ON E.EmployeeID = S.EmployeeID








 


