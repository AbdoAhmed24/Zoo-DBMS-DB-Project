--SalaryRaise 
create procedure SalaryRaise(@Raise int , @ID int )
as
begin
Update Staff
set salary = salary + salary*(@Raise/100)
where Staff.ID = @ID

select Fname,Lname,SSN, ID, Salary as "Updated Salary" from Staff
where ID =@ID 
end;
--SalaryRaise Test
exec SalaryRaise @Raise= 20, @ID = 1


--SalaryDeduction
go
create procedure SalaryDeduction(@Deduction int , @ID int )
as
begin
Update Staff
set salary = salary - salary*(@Deduction/100)
where Staff.ID = @ID
select Fname,Lname,SSN, ID, Salary as "Updated Salary" from Staff
where ID =@ID 
end; 
--SalaryDeduction Test
exec SalaryDeduction @Deduction= 20, @ID = 1

--AddAnimal
go
create procedure AddAnimal(@Animal_Name varchar(50),@Gender varchar(1),@Habitat varchar(50),@General_Name varchar(50),@Genus varchar(50),@Species varchar(50),@Status varchar(50),@Diet_Type varchar(50),@Date_of_Birth Date,@FamilyTree int = NULL,@Exhibit_no int)
as
begin
    insert into Animal (Animal_Name, Gender, Habitat, General_Name, Genus, Species, Status, Diet_Type, Date_of_Birth,Family_Tree, Exhibit_no)
    values (@Animal_Name, @Gender, @Habitat, @General_Name, @Genus, @Species, @Status, @Diet_Type, @Date_of_Birth,@FamilyTree, @Exhibit_no)
    select * from Animal
end;
--AddAnimal Test
exec AddAnimal @Animal_Name = 'Mosaad', @Gender = 'M', @Habitat = 'Savannah', @General_Name = 'Zebra', @Genus = 'Equus', @Species = 'Zebra', @Status = 'Healthy', @Diet_Type = 'Herbivore', @Date_of_Birth = '2019-01-01', @Exhibit_no = 3

--TransferAnimal
go
create procedure TransferAnimal(
    @Animal_ID int,
    @Exhibit_no int)
as
begin
    if (select count(*) from Animal where Exhibit_no = @Exhibit_no) < (select Capacity from Exhibit where Exhibit_no = @Exhibit_no)
    begin
        update Animal
        set Exhibit_no = @Exhibit_no
        where Animal_ID = @Animal_ID;
        select Animal_ID, Exhibit_no from Animal where Animal_ID = @Animal_ID;
    end
    else
    begin
        print 'The exhibit is at full capacity. The animal cannot be transferred.';
    end
end;
--TransferAnimal Test
exec TransferAnimal @Animal_ID = 1, @Exhibit_no = 2

--Check if the input id is a manager
go
CREATE FUNCTION IsManager (@staff_id INT)
RETURNS BIT AS
BEGIN
    IF EXISTS (SELECT ID FROM Staff WHERE ID = @staff_id AND Manager_ID IS NULL)
        RETURN 1;
    
	RETURN 0;
END;

--Find a substitutional ClinicManager
go
CREATE FUNCTION FindClinicManager (@input_id INT)
RETURNS INT AS
BEGIN
    RETURN (SELECT TOP 1 ID FROM Staff WHERE Role = 'Clinic Manager' AND dbo.IsManager(ID) = 1 AND ID <> @input_id);
END;

--Find a substitutional ShopManager
go
CREATE FUNCTION FindShopManager (@input_id INT)
RETURNS INT AS
BEGIN
    RETURN (SELECT TOP 1 ID FROM Staff WHERE Role = 'Shop Manager' AND dbo.IsManager(ID) = 1 AND ID <> @input_id);
END;

--Find a substitutional ExhibitAdvisor
go
CREATE FUNCTION FindExhibitAdvisor (@input_id INT)
RETURNS INT AS
BEGIN
    RETURN (SELECT TOP 1 ID FROM Staff WHERE Role = 'Exhibit Advisor' AND dbo.IsManager(ID) = 1 AND ID <> @input_id);
END;

--Delete an employee
go
CREATE PROCEDURE FireStaff @input_id INT AS
BEGIN
    IF dbo.IsManager(@input_id) = 0
    BEGIN
		DELETE FROM Staff_Phone WHERE Staff_ID = @input_id;
        DELETE FROM Staff WHERE ID = @input_id;
    END
    ELSE
    BEGIN
        DECLARE @role VARCHAR(50), @new_manager_id INT;

        SELECT @role = Role FROM Staff WHERE ID = @input_id;

        IF @role = 'Exhibit Advisor'
            SET @new_manager_id = dbo.FindExhibitAdvisor(@input_id);
        ELSE IF @role = 'Clinic Manager'
            SET @new_manager_id = dbo.FindClinicManager(@input_id);
        ELSE IF @role = 'Shop Manager'
            SET @new_manager_id = dbo.FindShopManager(@input_id);

        IF @new_manager_id IS NULL
        BEGIN
            RAISERROR('Cannot delete the manager because there is no replacement.', 16, 1);
            RETURN;
        END

		UPDATE Staff SET Manager_ID = @new_manager_id WHERE Manager_ID = @input_id;

		IF @role = 'Exhibit Advisor'
            UPDATE Exhibit SET EManager_Id = @new_manager_id WHERE EManager_Id = @input_id;
        ELSE IF @role = 'Clinic Manager'
            UPDATE Clinic SET CManager_Id = @new_manager_id WHERE CManager_Id = @input_id;
        ELSE IF @role = 'Shop Manager'
            UPDATE Shop SET SManager_Id = @new_manager_id WHERE SManager_Id = @input_id;

		DELETE FROM Staff_Phone WHERE Staff_ID = @input_id;
        DELETE FROM Staff WHERE ID = @input_id;
    END
	select * from staff;
END;

--Add Staff
go
CREATE PROCEDURE HireStaff 
    @Manager_ID INT, 
    @Clinic_NO INT, 
    @Exhibit_NO INT, 
    @Shop_NO INT, 
    @SSN VARCHAR(10), 
    @Fname VARCHAR(50), 
    @Mname VARCHAR(50), 
    @Lname VARCHAR(50), 
    @Address VARCHAR(100), 
    @Email VARCHAR(100), 
    @Salary DECIMAL(10, 2), 
    @Gender CHAR(1), 
    @Role VARCHAR(50), 
    @Joining_Date DATE, 
    @Birth_Date DATE, 
    @Working_Hours VARCHAR(50)
AS
BEGIN
    INSERT INTO Staff 
    (Manager_ID, Clinic_NO, Exhibit_NO, Shop_NO, SSN, Fname, Mname, Lname, Address, Email, Salary, Gender, Role, Joining_Date, Birth_Date, Working_Hours)
    VALUES 
    (@Manager_ID, @Clinic_NO, @Exhibit_NO, @Shop_NO, @SSN, @Fname, @Mname, @Lname, @Address, @Email, @Salary, @Gender, @Role, @Joining_Date, @Birth_Date, @Working_Hours);
    SELECT * FROM Staff;
END;

--Promote staff
go
CREATE PROCEDURE PromoteStaff @staff_id INT AS
BEGIN
    DECLARE @current_role VARCHAR(50);
    SELECT @current_role = Role FROM Staff WHERE ID = @staff_id;

    IF @current_role = 'Janitor'
        UPDATE Staff SET Role = 'Security Guard' WHERE ID = @staff_id;
    ELSE IF @current_role = 'Security Guard'
        UPDATE Staff SET Role = 'Exhibit Advisor', Manager_ID = NULL WHERE ID = @staff_id;
    ELSE IF @current_role = 'Shop Attendant'
        UPDATE Staff SET Role = 'Shop Manager', Manager_ID = NULL WHERE ID = @staff_id;
    ELSE IF @current_role = 'Zookeeper'
        UPDATE Staff SET Role = 'Exhibit Advisor', Manager_ID = NULL WHERE ID = @staff_id;
    ELSE IF @current_role = 'Veterinarian'
        UPDATE Staff SET Role = 'Clinic Manager', Manager_ID = NULL WHERE ID = @staff_id;
	ELSE IF @current_role = 'Cafeteria Staff'
        UPDATE Staff SET Role = 'Shop Manager', Manager_ID = NULL WHERE ID = @staff_id;

    SELECT * FROM Staff;
END;

--Get staff role
go
CREATE FUNCTION GetStaffRole (@staff_id INT)
RETURNS VARCHAR(50) AS
BEGIN
    DECLARE @role VARCHAR(50);
    SELECT @role = Role FROM Staff WHERE ID = @staff_id;
    RETURN @role;
END;

--Add clinic
go
CREATE PROCEDURE AddClinic 
    @Location VARCHAR(50), 
    @Capacity INT, 
    @Operating_Hours VARCHAR(30), 
    @CManager_Id INT
AS
BEGIN
    INSERT INTO Clinic (Location, Capacity, Operating_Hours, Event_Type, Event_Date, CManager_Id) 
    VALUES (@Location, @Capacity, @Operating_Hours, @Event_Type, @Event_Date, @CManager_Id);
END;

--Add Shop
go 
CREATE PROCEDURE AddShop
    @Shop_Name varchar(50),
    @Location varchar(50),
    @Product_Category varchar(50),
    @SManager_Id int
AS
begin 
    -- Insert into Shop table
    INSERT INTO Shop (Shop_Name, Location, Product_Category, SManager_Id)
    VALUES (@Shop_Name, @Location, @Product_Category, @SManager_Id)
    Select * from Shop
end
--Add Shop Test
exec AddShop @Shop_Name = 'Toys R Us', @Location = 'Zone A', @Product_Category = 'Gifts & Toys', @SManager_Id = 1





--Add Sponsor
 go 
 CREATE PROCEDURE AddSponsor
    @Sponsor_Name varchar(50),
    @Email varchar(50),
    @Start_Date Date,
    @End_Date Date,
    @Shop_Name varchar(50) = NULL,
    @Location varchar(50) = NULL,
    @Product_Category varchar(50) = NULL,
    @SManager_Id int = NULL,
    @Phone_Number varchar(13)
AS
BEGIN
    DECLARE @shop_no int = NULL

    IF @Shop_Name IS NOT NULL AND @Location IS NOT NULL AND @Product_Category IS NOT NULL AND @SManager_Id IS NOT NULL
    BEGIN
        EXEC AddShop @Shop_Name, @Location, @Product_Category, @SManager_Id

        
        SET @shop_no = (SELECT TOP 1 shop_no FROM Shop WHERE Shop_Name = @Shop_Name AND Location = @Location AND Product_Category = @Product_Category AND SManager_Id = @SManager_Id ORDER BY shop_no DESC)
    END

    INSERT INTO Sponsor (Sponsor_Name, Email, Start_Date, End_Date, shop_no)
    VALUES (@Sponsor_Name, @Email, @Start_Date, @End_Date, @shop_no)

    INSERT INTO Sponsor_Phone (Sponsor_ID, Phone_Number)
    VALUES ((SELECT TOP 1 Sponsor_ID FROM Sponsor WHERE Sponsor_Name = @Sponsor_Name AND Email = @Email AND shop_no = @shop_no ORDER BY Sponsor_ID DESC), @Phone_Number)
END
--Add Sponsor Test
EXEC AddSponsor @Sponsor_Name = 'Simon', @Email = 'simon@email.com', @Start_Date = '2022-01-01', @End_Date = '2022-12-31', @Shop_Name = 'ZooGifts', @Location = 'Zone A', @Product_Category = 'Gifts & Toys', @SManager_Id = 3, @Phone_Number = '555-555-5555'

--Create Exhibit
go
CREATE PROCEDURE CreateExhibit
    @Exhibit_Name varchar(50),
    @Capacity int,
    @Theme varchar(50),
    @Location varchar(50),
    @Size varchar(50),
    @Security_Level varchar(50),
    @EManager_Id int
AS
BEGIN
    INSERT INTO Exhibit (Exhibit_Name, Capacity, Theme, Location, Size, Security_Level, EManager_Id)
    VALUES (@Exhibit_Name, @Capacity, @Theme, @Location, @Size, @Security_Level, @EManager_Id)
    SELECT * FROM Exhibit
END
--Create Exhibit Test
EXEC CreateExhibit @Exhibit_Name = 'Savannah', @Capacity = 10, @Theme = 'African', @Location = 'Zone A', @Size = '100000', @Security_Level = 'High', @EManager_Id = 1

--Order Animal Food
go
CREATE PROCEDURE OrderAnimalFood
    @Company_Name varchar(50),
    @Email varchar(50),
    @Phone_No varchar(13),
    @Food_Type varchar(50),
    @Exhibit_No int = NULL ,
    @Quantity VARCHAR = '100kg'
AS
BEGIN

    INSERT INTO Supplier (Company_Name, Email)
    VALUES (@Company_Name, @Email)

    INSERT INTO Supplier_Phone (Company_Name, Phone_No)
    VALUES (@Company_Name, @Phone_No)

    INSERT INTO Supplies (company_name, exhibit_no, Food_Type, Quantity)
    VALUES (@Company_Name, @Exhibit_No, @Food_Type, @Quantity)
    
    INSERT INTO Food (type)
    VALUES (@Food_Type)

    SELECT * FROM Supplies
END
--Order Animal Food Test
EXEC OrderAnimalFood @Company_Name = 'FoodCo', @Email = 'contact@foodco.com', @Phone_No = '0123456789', @Food_Type = 'Grains', @Exhibit_No = 1, @Quantity = '100kg'

--Order Equipment
go
CREATE PROCEDURE OrderEquipment
    @Company_Name varchar(50),
    @Email varchar(50),
    @Phone_No varchar(13),
    @Clinic_No int = NULL,
    @Quantity int = 1
AS
BEGIN
    INSERT INTO Supplier (Company_Name, Email)
    VALUES (@Company_Name, @Email)

    INSERT INTO Supplier_Phone (Company_Name, Phone_No)
    VALUES (@Company_Name, @Phone_No)

    INSERT INTO Equipment DEFAULT VALUES

    DECLARE @Equipment_No int = @@IDENTITY

    INSERT INTO Provides (company_name, clinic_no, equipment_no, Quantity)
    VALUES (@Company_Name, @Clinic_No, @Equipment_No, @Quantity)

    SELECT * FROM Provides
END
--Order Equipment Test
exec OrderEquipment @Company_Name = 'EquipCo', @Email = 'contact@equipco.com', @Phone_No = '0123456789', @Clinic_No = 1, @Quantity = 1

--Get Visitor's Donations
go
CREATE PROCEDURE GetVisitorDonations
    @Visitor_Ticket int
AS
BEGIN
    SELECT * FROM Donation WHERE Visitor_Ticket = @Visitor_Ticket
END
--Get Visitor's Donations Test
exec GetVisitorDonations @Visitor_Ticket = 1

--Get Exhibit's Animals
go
CREATE PROCEDURE GetExhibitAnimals
    @Exhibit_No int
AS
BEGIN
    SELECT * FROM Animal WHERE Exhibit_no = @Exhibit_No
END
--Get Exhibit's Animals Test
exec GetExhibitAnimals @Exhibit_No = 2



