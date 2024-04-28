create database ZooDBMS;
use ZooDBMS;

create table Animal(
    Animal_Id int primary key Identity (1,1),
    Animal_Name varchar(50) not null,
    Gender varchar(1) not null,
    Habitat varchar(50),
    General_Name varchar(50) not null,
    Genus varchar(50),
    Species varchar(50),
    Status varchar(50) not null,
    Diet_Type varchar(50),
    Date_of_Birth Date,
    Family_Tree varchar(50),
    Exhibit_no int not null
);

	INSERT INTO Animal (Animal_Name, Gender, Habitat, General_Name, Genus, Species, Status, Diet_Type, Date_of_Birth, Exhibit_no)
    VALUES 
    ('Teddy', 'M', 'Savannah', 'Lion', 'Panthera', 'Leo', 'Healthy', 'Carnivore', '2015-07-15', 1),
    ('Belle', 'F', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2016-09-20', 2),
    ('Lotso', 'M', 'Grassland', 'Elephant', 'Loxodonta', 'Africana', 'Wounded', 'Herbivore', '2014-12-10', 3);

create table Medical_History(
    Animal_Id int not null,
    Foreign Key(Animal_id) references Animal(Animal_Id),
    Diagnosis varchar(255),
    Diagnosis_Date Date,
    Treatment_Date Date,
    primary key(Animal_Id,Diagnosis,Diagnosis_Date)
);

    INSERT INTO Medical_History (Animal_Id, Diagnosis, Diagnosis_Date, Treatment_Date)
    VALUES 
    (1, 'Minor Wound', '2023-05-10', '2023-05-11'),
    (2, 'Respiratory Infection', '2023-06-20', '2023-06-21'),
    (3, 'Leg Injury', '2023-07-15', NULL);

create table Exhibit(
    Exhibit_No Int primary key Identity (1,1),
    Exhibit_Name varchar(50) not null,
    Capacity int not null,
    Theme varchar(50),
    Location varchar(50) CHECK( Location In ('Zone A', 'Zone B', 'Zone C', 'Zone D', 'Zone E')),
    Size varchar(50) not null,
    Security_Level varchar(50),
    EManager_Id int not null,
);

    INSERT INTO Exhibit (Exhibit_Name, Capacity, Theme, Location, Size, Security_Level, EManager_Id)
    VALUES 
    ('Savannah', 20, 'African Safari', 'Zone A', 'Large', 'High', 5),
    ('Jungle', 15, 'Tropical Rainforest', 'Zone B', 'Medium', 'Medium', 6),
    ('Grassland', 10, 'Safari Adventure', 'Zone C', 'Small', 'Low', 7);

create table Supplier(
    Company_Name varchar(50) primary key ,
    Email varchar(50)
);

    INSERT INTO Supplier (Company_Name, Email)
    VALUES 
    ('Fresh Food Co.', 'info@freshfoodco.com'),
    ('ZooSupply Inc.', 'info@zoosupplyinc.com'),
	('Medical Supplies Ltd.', 'info@medical.com');

create table Supplier_Phone(
    Company_Name varchar(50),
    Foreign Key(Company_name) references Supplier(Company_Name),
    Phone_No varchar(13) not null,
    primary key(Company_Name,Phone_No)
);

	INSERT INTO Supplier_Phone (Company_Name, Phone_No)
    VALUES 
    ('Fresh Food Co.', '0106403760'),
    ('ZooSupply Inc.', '01172914838');

create table Food(
    type varchar(50) primary key not null
);

	INSERT INTO Food (type)
    VALUES 
    ('Meat'),
    ('Fruit');

create table Supplies(
    company_name varchar(50),
    exhibit_no int,
    Food_Type varchar(50),
    Foreign Key(company_name) references Supplier(Company_Name),
    Foreign Key(exhibit_no) references Exhibit(Exhibit_No), 
    Foreign Key(Food_Type) references Food(type),
    Quantity varchar(10) not null,
    primary key(company_name,exhibit_no,Food_Type)
);

	INSERT INTO Supplies (company_name, exhibit_no, Food_Type, Quantity)
    VALUES 
    ('Fresh Food Co.', 1, 'Meat', '100 kg'),
    ('ZooSupply Inc.', 2, 'Fruit', '50 kg');

create table Equipment(
    Equipment_Number int primary key Identity (1,1) 
);

	INSERT INTO Equipment DEFAULT VALUES;
	INSERT INTO Equipment DEFAULT VALUES;

create table Clinic(
    Clinic_No int primary key Identity (1,1),
    Location varchar(50),
    Capacity int,
    Operating_Hours varchar(30),
    Event_Type varchar(50) not null CHECK (Event_Type IN ('Check-Up', 'Surgery')),
    Event_Date Date,
    CManager_Id int not null,
);

	INSERT INTO Clinic (Location, Capacity, Operating_Hours, Event_Type, Event_Date, CManager_Id)
    VALUES 
    ('Veterinary Clinic', 20, '9:00 AM - 5:00 PM', 'Check-Up', '2024-04-27', 1),
    ('Surgical Clinic', 15, '8:00 AM - 4:00 PM', 'Surgery', '2024-04-27', 2);

create table Provides(
    company_name varchar(50),
    clinic_no int,
    equipment_no int,
    Foreign Key(company_name) references Supplier(Company_Name),
    Foreign Key(clinic_No) references Clinic(Clinic_No),
    Foreign Key(equipment_No) references Equipment(Equipment_Number),
    Quantity varchar(10) not null,
    primary key(company_name,clinic_no,equipment_no)
);

	INSERT INTO Provides (company_name, clinic_no, equipment_no, Quantity)
    VALUES 
    ('Medical Supplies Ltd.', 1, 1, '10'),
    ('Medical Supplies Ltd.', 1, 2, '5');

create table Staff(
    Manager_ID int ,
    Clinic_NO int,
    Exhibit_NO int,
    Shop_NO int,  
    SSN char(10) not null,
    ID int primary key Identity (1,1),
    Fname varchar(50) not null,
    Mname varchar(50),
    Lname varchar(50) not null,
    Address varchar(50) ,
    Email varchar(50) ,
    Salary int not null,
    Gender varchar(1) not null,
    Role varchar(50) not null CHECK (Role IN ('Shop Manager', 'Veterinarian', 'Zookeeper', 'Security Guard','Shop Attendant','Janitor','Cafeteria Staff', 'Clinic Manager', 'Exhibit Advisor')),
    Joining_Date Date,
    Birth_Date Date not null,                          
    Working_Hours varchar(30),
    Foreign Key(Manager_ID) REFERENCES Staff(ID),
    Foreign Key(Clinic_NO) references Clinic(Clinic_No),                
    Foreign Key(Exhibit_NO) references Exhibit(Exhibit_No)
);

	INSERT INTO Staff (Manager_ID, Clinic_NO, Exhibit_NO, Shop_NO, SSN, Fname, Mname, Lname, Address, Email, Salary, Gender, Role, Joining_Date, Birth_Date, Working_Hours)
    VALUES 
    (NULL, 1, NULL, NULL, '1234567890', 'John', NULL, 'Doe', '123 Main St', 'john@example.com', 50000, 'M', 'Clinic Manager', '2020-01-15', '1985-05-10', '9:00 AM - 5:00 PM'),
    (NULL, 2, NULL, NULL, '9876543210', 'Jane', NULL, 'Smith', '456 Elm St', 'jane@example.com', 45000, 'F', 'Clinic Manager', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
	(NULL, NULL, Null, 1, '1478523698', 'Youssef', NULL, 'Mohammed', '456 Elm St', 'yousef@example.com', 83655, 'M', 'Shop Manager', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
    (NULL, Null, Null, 2, '3437684591', 'John', NULL, 'Doe', '123 Main St', 'john@example.com', 50000, 'M', 'Shop Manager', '2020-01-15', '1985-05-10', '9:00 AM - 5:00 PM'),
    (NULL, Null, 1, Null, '3681569136', 'Jane', NULL, 'Smith', '456 Elm St', 'jane@example.com', 45000, 'F', 'Exhibit Advisor', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
	(NULL, NULL, 2, Null, '8449733147', 'Youssef', NULL, 'Mohammed', '456 Elm St', 'yousef@example.com', 83655, 'M', 'Exhibit Advisor', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM'),
    (NULL, NULL, 3, Null, '6234433129', 'Youssef', NULL, 'Mohammed', '456 Elm St', 'yousef@example.com', 83655, 'M', 'Exhibit Advisor', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM');

create table Staff_Phone(
    Staff_ID int,
    Foreign Key(Staff_ID) references Staff(ID),
    Phone_No varchar(13) not null,
    primary key(Staff_ID,Phone_No)
);

    INSERT INTO Staff_Phone (Staff_ID, Phone_No)
    VALUES 
    (1, '555-555-5555'),
    (2, '444-444-4444');

create table Shop(
    Shop_Name varchar(50) not null,
    Shop_No int primary key Identity (1,1),
    Location varchar(50) CHECK (Location IN ('Zone A', 'Zone B', 'Zone C', 'Zone D', 'Zone E')),
    Product_Category varchar(50) not null CHECK (Product_Category IN ('Food', 'Gifts & Toys', 'Clothing', 'Accessories')),
    SManager_Id int not null,
);

    INSERT INTO Shop (Shop_Name, Location, Product_Category, SManager_Id)
    VALUES 
    ('ZooGifts', 'Zone A', 'Gifts & Toys', 3),
    ('Safari Supplies', 'Zone C', 'Food', 4);

create table Sponsor(
    Sponsor_Name varchar(50) not null,
    Sponsor_ID int primary key Identity (1,1),
    Email varchar(50) ,
    Start_Date Date ,
    End_Date Date,
    shop_no int not null,                               
    Foreign Key(shop_no) references Shop(Shop_No)
);

	INSERT INTO Sponsor (Sponsor_Name, Email, Start_Date, End_Date, shop_no)
    VALUES 
    ('ZooHealth Inc.', 'info@zoohealth.com', '2024-01-01', '2024-12-31', 1),
    ('Wildlife Supplies Ltd.', 'info@wildlifesupplies.com', '2024-02-15', '2024-12-31', 2);

create table Sponsor_Phone(
    Sponsor_ID int,
    Foreign Key(Sponsor_ID) references Sponsor(Sponsor_ID),
    Phone_Number varchar(13) not null,
    primary key(Sponsor_ID,Phone_Number)
);

	INSERT INTO Sponsor_Phone (Sponsor_ID, Phone_Number)
    VALUES 
    (1, '111-111-1111'),
    (2, '222-222-2222');

create table Visitor(
    Ticket_Number int primary key Identity (1,1),
    Ticket_Type varchar(50) not null CHECK (Ticket_Type IN ('Basic', 'Premium', 'VIP', 'Student', 'Senior Citizen', 'Family', 'Child')),
    Gender varchar(1) not null,
    Age int not null,
    Phone_Number varchar(13),
    Visit_Date Date 
);

	INSERT INTO Visitor (Ticket_Type, Gender, Age, Phone_Number, Visit_Date)
    VALUES 
    ('Basic', 'M', 30, '123-456-7890', '2024-04-01'),
    ('VIP', 'F', 45, '987-654-3210', '2024-04-15');

create table Donation(
    Visitor_Ticket int,
    Foreign Key(Visitor_Ticket) references Visitor(Ticket_Number),
    Location varchar(50) not null,
    Date Date,
    Amount int not null,
    primary key(Visitor_Ticket,Location)
);

INSERT INTO Donation (Visitor_Ticket, Location, Date, Amount)
    VALUES 
    (1, 'Primate Forest', '2024-04-01', 100),
    (2, 'Arctic Circle', '2024-04-15', 500);

create table transacts(
    ticket_no int,
    shop_no int,
    Foreign Key(ticket_no) references Visitor(Ticket_Number),
    Foreign Key(shop_no) references Shop(Shop_No),
    Transaction_No int ,
    Transaction_Value int ,
    primary key(ticket_No, shop_no, Transaction_No)
);

INSERT INTO transacts (ticket_no, shop_no, Transaction_No, Transaction_Value)
    VALUES 
    (1, 1, 1, 50),
    (2, 2, 1, 200);

create table Sponsor_Area_Acquired(
    Area_Acquired varchar(50) CHECK (Area_Acquired IN ('Zone A', 'Zone B', 'Zone C', 'Zone D', 'Zone E')),
    sponsor_id int,
    Foreign Key(sponsor_id) references Sponsor(Sponsor_ID),
    primary key (Area_Acquired,sponsor_id)
);

INSERT INTO Sponsor_Area_Acquired (Area_Acquired, sponsor_id)
    VALUES 
    ('Zone A', 1),
    ('Zone C', 2);


ALTER TABLE Animal
ADD CONSTRAINT FK_Exhibit_no 
FOREIGN KEY (Exhibit_no) REFERENCES Exhibit(Exhibit_No);

ALTER TABLE Exhibit
ADD CONSTRAINT FK_EManager_Id
FOREIGN KEY (EManager_Id) REFERENCES Staff(ID);

ALTER TABLE Clinic
ADD CONSTRAINT FK_CManager_Id
FOREIGN KEY (CManager_Id) REFERENCES Staff(ID);

Alter Table Shop
Add Constraint FK_SManager_Id
Foreign Key (SManager_Id) References Staff(ID);

ALTER TABLE Staff
ADD CONSTRAINT FK_Shop_NO
FOREIGN KEY (Shop_NO) REFERENCES Shop(Shop_No);