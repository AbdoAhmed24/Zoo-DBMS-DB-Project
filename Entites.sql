create database ZooDBMS;
use ZooDBMS;

create table Animal(
    Animal_Id int primary key Identity (1,1),
    Animal_Name varchar(50) not null,
    Gender varchar(1) not null,
    Habitat varchar(50) not null,
    Genus varchar(50) not null,
    Species varchar(50) not null,
    Status varchar(50) not null,
    Diet_Type varchar(50) not null,
    Date_of_Birth Date not null,
    Family_Tree varchar(50),
    Exhibit_no int not null,                                               
);
create table Medical_History(
    Animal_Id int,
    Foreign Key(Animal_id) references Animal(Animal_Id),
    Diagnosis varchar(255) not null,
    Diagnosis_Date Date not null,
    Treatment_Date Date,
    primary key(Animal_Id,Diagnosis,Diagnosis_Date)
);
create table Exhibit(
    Exhibit_No Int primary key Identity (1,1),
    Exhibit_Name varchar(50) not null,
    Capacity int not null,
    Theme varchar(50) not null,
    Location varchar(50) not null,
    Size varchar(50) not null,
    Security_Level varchar(50) not null,
    EManager_Id int not null,                       
)
create table Supplier(
    Company_Name varchar(50) primary key not null,
    Email varchar(50) not null,
)
create table Supplier_Phone(
    Company_Name varchar(50),
    Foreign Key(Company_name) references Supplier(Company_Name),
    Phone_No varchar(13) not null,
    primary key(Company_Name,Phone_No)
)
create table Food(
    type varchar(50) primary key not null,
)
create table Supplies(
    company_name varchar(50),
    exhibit_no int,
    Food_Type varchar(50),
    Foreign Key(company_name) references Supplier(Company_Name),
    Foreign Key(exhibit_no) references Exhibit(Exhibit_No), 
    Foreign Key(Food_Type) references Food(type),
    Quantity varchar(10) not null,
    primary key(company_name,exhibit_no,Food_Type)
)
create table Equipment(
    Equipment_Number int primary key Identity (1,1) 
);
create table Clinic(
    Clinic_No int primary key Identity (1,1),
    Location varchar(50) not null,
    Capacity int not null,
    Operating_Hours varchar(11) not null,
    Event_Type varchar(50) not null CHECK (Event_Type IN ('Check-Up', 'Surgery')),
    Event_Date Date not null,
    CManager_Id int not null                        
);
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
create table Staff(
    Manager_ID int,
    Clinic_NO int,
    Exhibit_NO int,
    SSN char(10) not null,
    ID int primary key Identity (1,1),
    Fname varchar(50) not null,
    Mname varchar(50),
    Lname varchar(50) not null,
    Address varchar(50) not null,
    Email varchar(50) not null,
    Salary int not null,
    Gender varchar(1) not null,
    Role varchar(50) not null CHECK (Role IN ('Shop Manager', 'Veterinarian', 'Zookeeper', 'Security Guard','Shop Attendant','Janitor','Cafeteria Staff', 'Clinic Manager', 'Exhibit Advisor')),
    Joining_Date Date not null,
    Birth_Date Date not null,
    Shop_No int,                                --FK
    Working_Hours varchar(11) not null,
    Foreign Key(Manager_ID) REFERENCES Staff(ID),
    Foreign Key(Clinic_NO) references Clinic(Clinic_No),                
    Foreign Key(Exhibit_NO) references Exhibit(Exhibit_No)                        
)
create table Staff_Phone(
    Staff_ID int,
    Foreign Key(Staff_ID) references Staff(ID),
    Phone_No varchar(13) not null,
    primary key(Staff_ID,Phone_No)
)

ALTER TABLE Animal
ADD CONSTRAINT FK_Exhibit_no 
FOREIGN KEY (Exhibit_no) REFERENCES Exhibit(Exhibit_No);

ALTER TABLE Exhibit
ADD CONSTRAINT FK_EManager_Id
FOREIGN KEY (EManager_Id) REFERENCES Staff(ID);

ALTER TABLE Clinic
ADD CONSTRAINT FK_CManager_Id
FOREIGN KEY (CManager_Id) REFERENCES Staff(ID);

