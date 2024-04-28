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
    Family_Tree int,
    Exhibit_no int not null
);

	INSERT INTO Animal (Animal_Name, Gender, Habitat, General_Name, Genus, Species, Status, Diet_Type, Date_of_Birth,Family_Tree,Exhibit_no)
    VALUES 
    ('Teddy', 'M', 'Savannah', 'Lion', 'Panthera', 'Leo', 'Healthy', 'Carnivore', '2015-07-15',Null, 1), --1
    ('Belle', 'F', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2016-09-20',2, 2), --2
    ('Lotso', 'M', 'Grassland', 'Elephant', 'Loxodonta', 'Africana', 'Injured', 'Herbivore', '2014-12-10',3, 3),--3
    ('Simba', 'M', 'Savannah', 'Lion', 'Panthera', 'Leo', 'Healthy', 'Carnivore', '2019-03-12', 1, 1), --4
    ('Nala', 'F', 'Savannah', 'Lioness', 'Panthera', 'Leo', 'Healthy', 'Carnivore', '2020-06-25', 1, 1), --5
    ('Mufasa', 'M', 'Savannah', 'Lion', 'Panthera', 'Leo', 'Sick', 'Carnivore', '2014-05-03', 1, 1), --6
    ('Rajah', 'M', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2018-11-04', 2, 2), --7
    ('Shere Khan', 'M', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2017-08-17', Null, 2), --8
    ('Bagheera', 'M', 'Jungle', 'Black Panther', 'Panthera', 'Pardus', 'Healthy', 'Carnivore', '2019-03-27', Null, 6), --9
    ('King Louie', 'M', 'Jungle', 'Orangutan', 'Pongo', 'Abelii', 'Healthy', 'Omnivore', '2018-08-14', Null, 4), --10
    ('Kaa', 'F', 'Jungle', 'Python', 'Python', 'Molurus', 'Healthy', 'Carnivore', '2015-11-22', Null, 5), --11
    ('Hathi', 'M', 'Grassland', 'Elephant', 'Elephas', 'Maximus', 'Healthy', 'Herbivore', '2017-04-30', 3, 3), --12
    ('Rani', 'F', 'Grassland', 'Elephant', 'Elephas', 'Maximus', 'Pregnant', 'Herbivore', '2016-09-05', 3, 3), --13
    ('Hathi Jr.', 'M', 'Grassland', 'Elephant', 'Elephas', 'Maximus', 'Healthy', 'Herbivore', '2018-11-11', 3, 3), --14
    ('Yogi', 'M', 'Forest', 'Bear', 'Ursus', 'Arctos', 'Healthy', 'Omnivore', '2017-07-19', 4, 7), --15
    ('Boo Boo', 'M', 'Forest', 'Bear', 'Ursus', 'Arctos', 'Healthy', 'Omnivore', '2019-04-26', 4, 7), --16
    ('Kerchak', 'M', 'Forest', 'Gorilla', 'Gorilla', 'Gorilla', 'Healthy', 'Herbivore', '2016-10-02', 5, 8), --17
    ('Araujo', 'M', 'Forest', 'Gorilla', 'Gorilla', 'Gorilla', 'Healthy', 'Herbivore', '2018-04-07', 5, 8), --18
    ('Kala', 'F', 'Forest', 'Gorilla', 'Gorilla', 'Gorilla', 'Healthy', 'Herbivore', '2017-12-15', 5, 8), --19
    ('Raksha', 'F', 'Forest', 'Wolf', 'Canis', 'Lupus', 'Healthy', 'Carnivore', '2018-03-08', 6, 9), --20
    ('Akela', 'M', 'Forest', 'Wolf', 'Canis', 'Lupus', 'Healthy', 'Carnivore', '2015-09-21', 6, 9), --21
    ('Marlin', 'M', 'Ocean', 'Fish', 'Paracanthurus', 'Hepatus', 'Healthy', 'Omnivore', '2017-10-03', Null, 10), --22
    ('Nemo', 'M', 'Ocean', 'Clownfish', 'Amphiprion', 'Ocellaris', 'Healthy', 'Omnivore', '2018-12-01', Null, 10), --23
    ('Dory', 'F', 'Ocean', 'Fish', 'Paracanthurus', 'Hepatus', 'Healthy', 'Omnivore', '2018-02-17', Null, 10), --24
    ('Ziggy', 'M', 'Grassland', 'Zebra', 'Equus', 'Zebra', 'Healthy', 'Herbivore', '2017-08-10', 7, 11), --25
    ('Zara', 'F', 'Grassland', 'Zebra', 'Equus', 'Zebra', 'Healthy', 'Herbivore', '2019-05-21', 7, 11), --26
    ('Gerald', 'M', 'Savannah', 'Giraffe', 'Giraffa', 'Camelopardalis', 'Healthy', 'Herbivore', '2016-12-05', 8, 12), --27
    ('Gina', 'F', 'Savannah', 'Giraffe', 'Giraffa', 'Camelopardalis', 'Healthy', 'Herbivore', '2018-10-18', 8, 12), --28
    ('Randy', 'M', 'Grassland', 'Rhino', 'Rhinoceros', 'Unicornis', 'Healthy', 'Herbivore', '2015-09-07', 9, 13), --29
    ('Rhonda', 'F', 'Grassland', 'Rhino', 'Rhinoceros', 'Unicornis', 'Healthy', 'Herbivore', '2017-04-14', 9, 13), --30
    ('Rocky', 'M', 'Mountain', 'Mountain Goat', 'Oreamnos', 'Americanus', 'Healthy', 'Herbivore', '2017-10-15', NULL, 14), --31
    ('Ruby', 'F', 'Mountain', 'Mountain Goat', 'Oreamnos', 'Americanus', 'Healthy', 'Herbivore', '2019-02-28', NULL, 14), --32
    ('Messi','M', 'Mountain', 'Mountain Goat','Oreamnos', 'Americanus', 'Healthy', 'Herbivore', '2020-06-24', NULL, 14), --33
    ('Spike', 'M', 'Desert', 'Camel', 'Camelus', 'Dromedarius', 'Healthy', 'Herbivore', '2016-06-09',10, 15), --34
    ('Sandy', 'F', 'Desert', 'Camel', 'Camelus', 'Dromedarius', 'Sick', 'Herbivore', '2018-08-22', 10, 15), --35
    ('Toby', 'M', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2020-01-04', 2, 2), --36
    ('Tina', 'F', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Injured', 'Carnivore', '2019-07-17', 2, 2), --37
    ('Buddy', 'M', 'Swamp', 'Alligator', 'Alligator', 'Mississippiensis', 'Healthy', 'Carnivore', '2018-11-29', NULL, 16), --38
    ('Betty', 'F', 'Swamp', 'Alligator', 'Alligator', 'Mississippiensis', 'Healthy', 'Carnivore', '2017-05-12', NULL, 16), --39
    ('Max', 'M', 'Tundra', 'Polar Bear', 'Ursus', 'Maritimus', 'Healthy', 'Carnivore', '2015-12-08', 11, 17), --40
    ('Mia', 'F', 'Tundra', 'Polar Bear', 'Ursus', 'Maritimus', 'Pregnant', 'Carnivore', '2016-08-25', 11, 17), --41
    ('Adam', 'M', 'Savannah', 'Ostrich', 'Struthio', 'Camelus', 'Healthy', 'Herbivore', '2017-12-05', Null, 11), --42
    ('Eve', 'F', 'Savannah', 'Ostrich', 'Struthio', 'Camelus', 'Healthy', 'Herbivore', '2019-02-14', Null, 11), --43
    ('Gaza', 'M', 'Savannah', 'Gazelle', 'Gazella', 'Dorcas', 'Healthy', 'Herbivore', '2018-11-07', Null, 11), --44
    ('Aisha', 'F', 'Savannah', 'Gazelle', 'Gazella', 'Dorcas', 'Healthy', 'Herbivore', '2019-09-02', Null, 11); --45

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
    (3, 'Gunshot Wound', '2023-04-15','2023-05-12' ), -- Lotso (Wounded)
    (3, 'Fractured Leg', '2023-07-03', NULL), -- Lotso (Wounded) - Additional Medical History
    (6, 'Influenza', '2023-05-20', '2023-05-21'), -- Mufasa (Sick)
    (6, 'Fever', '2023-06-10', Null), -- Mufasa (Sick) - Additional Medical History
    (11, 'Snake Bite', '2023-09-10', '2023-09-11'), -- Kaa (Healthy)
    (15, 'Minor Infection', '2023-08-01', '2023-08-02'), -- Yogi (Healthy)
    (15, 'Scratched Paw', '2023-09-05', '2023-09-18'), -- Yogi (Healthy) - Additional Medical History
    (16, 'Minor Infection', '2023-09-05', '2023-09-06'), -- Boo Boo (Healthy)
    (17, 'Respiratory Infection', '2023-06-01', '2023-06-02'), -- Kerchak (Healthy)
    (18, 'Injury', '2023-04-05', '2023-04-06'), -- Kala (Healthy)
    (20, 'Sprained Ankle', '2023-07-15', '2023-07-16'), -- Raksha (Healthy)
    (21, 'Fever', '2023-08-10', '2023-08-23'), -- Akela (Healthy)
    (21, 'Minor Cut', '2023-08-30','2023-09-23' ), -- Akela (Healthy) - Additional Medical History
    (22, 'Scratched Fin', '2023-09-20', '2023-09-21'), -- Marlin (Healthy)
    (23, 'Swim Bladder Disorder', '2023-10-05', '2023-10-15'), -- Nemo (Healthy)
    (23, 'Food Allergy', '2023-11-01', '2023-11-14'), -- Nemo (Healthy) - Additional Medical History
    (24, 'Food Poisoning', '2023-08-25', '2023-08-26'), -- Dory (Healthy)
    (28, 'Eye Infection', '2023-06-15', '2023-06-16'), -- Ziggy (Healthy)
    (29, 'Muscle Strain', '2023-07-01', '2023-07-02'), -- Zara (Healthy)
    (30, 'Hypertension', '2023-05-10', '2023-05-11'), -- Gerald (Healthy)
    (32, 'Skin Allergy', '2023-07-25', '2023-08-03'), -- Rocky (Healthy)
    (32, 'Minor Cut', '2023-08-23', '2023-09-13'), -- Rocky (Healthy) - Additional Medical History
    (34, 'Respiratory Infection', '2023-09-01', '2023-09-02'), -- Toby (Healthy)
    (35, 'Minor Injury', '2023-08-15', Null), -- Tina (Injured)
    (36, 'Eye Infection', '2023-04-10', '2023-04-11'), -- Buddy (Healthy)
    (37, 'Minor Infection', '2023-03-25', '2023-03-26'), -- Betty (Healthy)
    (39, 'Frostbite', '2023-11-10', '2023-11-11'); -- Mia (Pregnant)


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

    -- Calculate and insert the size of each exhibit
    INSERT INTO Exhibit (Exhibit_Name, Capacity, Theme, Location, Size, Security_Level, EManager_Id)
    VALUES 
    ('Savannah Lions', 10, 'African Savannah', 'Zone A', '2500', 'High', 1), -- Exhibit 1
    ('Jungle Tigers', 8, 'Tropical Rainforest', 'Zone A', '1600', 'Medium', 1), -- Exhibit 2
    ('Grassland Elephants', 6, 'Grassland', 'Zone C', '2000', 'High', 1), -- Exhibit 3
    ('Orangutan Rainforest', 4, 'Tropical Rainforest', 'Zone B', '1200', 'Medium', 1), -- Exhibit 4
    ('Python Rainforest ', 12, 'Tropical Rainforest', 'Zone B', '2400', 'Medium', 1), -- Exhibit 5
    ('Panther Forest', 6, 'Temperate Forest', 'Zone D', '1000', 'Low', 1), -- Exhibit 6
    ('Forest Bears', 6, 'Temperate Forest', 'Zone D', '500', 'Medium', 4), -- Exhibit 7
    ('Gorilla Forest', 10, 'Tropical Rainforest', 'Zone E', '10000', 'High', 5), -- Exhibit 8
    ('Wolf Woods', 10, 'Forest Habitat', 'Zone C', '2400', 'Low', 6), -- Exhibit 9
    ('Oceanic World', 15, 'Marine Life', 'Zone E', '800', 'High', 10), -- Exhibit 10
    ('Savannah Plains', 30, 'African Wildlife', 'Zone A', '1200', 'High', 1), -- Exhibit 11
    ('Giraffe Lands', 8, 'African Wildlife', 'Zone A', '1200', 'High', 1), -- Exhibit 12
    ('Grassland Rhinos', 6, 'African Savannah', 'Zone A', '2000', 'High', 1), -- Exhibit 13
    ('Mountain Goats', 10, 'Mountain Wildlife', 'Zone E', '2000', 'Medium', 1), -- Exhibit 14
    ('Dusty Dunes', 15, 'Desert Wildlife', 'Zone D', '1000', 'Medium', 1), -- Exhibit 15
    ('Swamp Alligators', 8, 'Swamp Wildlife', 'Zone C', '1500', 'Medium', 1), -- Exhibit 16
    ('Tundra Polar Bears', 6, 'Arctic Wildlife', 'Zone E', '2000', 'High', 1); -- Exhibit 17



create table Supplier(
    Company_Name varchar(50) primary key ,
    Email varchar(50)
);
INSERT INTO Supplier (Company_Name, Email)
VALUES 
('Beef & More Suppliers', 'info@meatandmore.com'), -- Supplies Beef and Chicken
('Green Fields Farms', 'info@greenfields.com'), -- Supplies Hay and Grass
('SeaFresh Seafoods', 'info@seafresh.com'), -- Supplies Fish and Fish Food
('Fruitful Delights', 'info@fruitfuldelights.com'), -- Supplies Fruits
('Natures Bounty', 'info@naturesbounty.com'), -- Supplies Insects and Fruits
('MediServe', 'info@mediserve.com'), -- Supplies Medical Equipment
('MedTech Solutions', 'info@medtechsolutions.com'); -- Supplies Medical Equipment

create table Supplier_Phone(
    Company_Name varchar(50),
    Foreign Key(Company_name) references Supplier(Company_Name),
    Phone_No varchar(13) not null,
    primary key(Company_Name,Phone_No)
);
INSERT INTO Supplier_Phone (Company_Name, Phone_No)
VALUES 
('Beef & More Suppliers', '0123456789'),
('Beef & More Suppliers', '0198765432'),
('Green Fields Farms', '0987654321'),
('SeaFresh Seafoods', '0123456789'),
('Fruitful Delights', '0987654321'),
('Natures Bounty', '0123456789'),
('MediServe', '0987654321'),
('MedTech Solutions', '0123456789');


create table Food(
    type varchar(50) primary key not null
);
	INSERT INTO Food (type) 
    VALUES 
    ('Insects'), ('Chicken'), ('Beef'), 
    ('Hay'), ('Grass'), ('Fruits'), 
    ('Fish'),('Insects/Rodents'),('Fish Food');


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
('Beef & More Suppliers', 1, 'Beef', '300 kg'), -- Savannah Lions
('Beef & More Suppliers', 1, 'Chicken', '300 kg'), -- Savannah Lions
('Beef & More Suppliers', 2, 'Beef', '200 kg'), -- Jungle Tigers
('Beef & More Suppliers', 2, 'Chicken', '200 kg'), -- Jungle Tigers
('Fruitful Delights', 3, 'Fruit', '250 kg'), -- Grassland Elephants
('Green Fields Farms', 3, 'Grass', '400 kg'), -- Grassland Elephants
('Green Fields Farms', 3, 'Hay', '400 kg'), -- Grassland Elephants
('Fruitful Delights', 4, 'Insects/Rodents', '300 kg'), -- Orangutan Rainforest
('Natures Bounty', 5, 'Insects/Rodents', '250 kg'), -- Python Rainforest
('Beef & More Suppliers', 6, 'Beef', '200 kg'), -- Panther Forest
('SeaFresh Seafoods', 7, 'Fish', '150 kg'), -- Forest Bears
('Fruitful Delights', 7, 'Fruit', '250 kg'), -- Forest Bears
('Beef & More Suppliers', 8, 'Beef', '300 kg'), -- Gorilla Forest
('Fruitful Delights', 8, 'Fruit', '250 kg'), -- Gorilla Forest
('Green Fields Farms', 8, 'Hay', '300 kg'), -- Gorilla Forest
('Beef & More Suppliers',9, 'Beef', '300 kg'), -- Wolf Woods
('SeaFresh Seafoods', 10, 'Fish', '100kg'), -- Oceanic World
('SeaFresh Seafoods', 10, 'Fish Food', '50kg'), -- Oceanic World
('Green Fields Farms', 11, 'Hay', '500 kg'), -- Savannah Plains
('Green Fields Farms', 11, 'Grass', '500 kg'), -- Savannah Plains
('Fruitful Delights', 11, 'Fruits', '500 kg'), -- Savannah Plains
('Fruitful Delights', 12, 'Fruits', '300 kg'), -- Giraffe Lands
('Green Fields Farms', 12, 'Hay', '500 kg'), --Giraffe Lands
('Green Fields Farms', 13, 'Grass', '500 kg'), -- Grassland Rhinos
('Green Fields Farms', 13, 'Hay', '500 kg'), --GrassLands Rhinos
('Green Fields Farms', 14, 'Grass', '500 kg'), -- Mountain Goats
('Fruitful Delights', 15, 'Fruits', '300 kg'), -- Dusty Dunes
('Green Fields Farms', 15, 'Hay', '500 kg'), --Dusty Dunes
('Beef & More Suppliers', 16, 'Beef', '300 kg'), -- Swamp Alligators
('SeaFresh Seafoods', 17, 'Fish', '400kg'), -- Tundra Polar Bears
('Beef & More Suppliers', 17, 'Beef', '300 kg'); -- Tundra Polar Bears

create table Equipment(
    Equipment_Number int primary key Identity (1,1) 
);

	INSERT INTO Equipment DEFAULT VALUES -- 1
	INSERT INTO Equipment DEFAULT VALUES -- 2
    INSERT INTO Equipment DEFAULT VALUES -- 3
    INSERT INTO Equipment DEFAULT VALUES -- 4
    INSERT INTO Equipment DEFAULT VALUES -- 5
    INSERT INTO Equipment DEFAULT VALUES -- 6
    INSERT INTO Equipment DEFAULT VALUES -- 7
    INSERT INTO Equipment DEFAULT VALUES -- 8

create table Clinic(
    Clinic_No int primary key Identity (1,1),
    Location varchar(50),
    Capacity int,
    Operating_Hours varchar(30),
    CManager_Id int not null,
);

	INSERT INTO Clinic (Location, Capacity, Operating_Hours, CManager_Id)
    VALUES 
    ('Veterinary Clinic', 20, '9:00 AM - 5:00 PM', 1),
    ('Surgical Clinic', 15, '8:00 AM - 4:00 PM',2),
    ('Hospital A', 100, '8:00 AM - 5:00 PM', 1),
    ('Health Center B', 80, '9:00 AM - 6:00 PM', 2),
    ('Medical Clinic C', 70, '7:30 AM - 4:30 PM', 3),
    ('Urgent Care D', 60, '10:00 AM - 7:00 PM', 4),
    ('Wellness Center E', 90, '8:30 AM - 5:30 PM', 5),
    ('Community Clinic F', 85, '9:30 AM - 6:30 PM', 6),
    ('Family Practice G', 75, '7:00 AM - 4:00 PM', 7),
    ('Pediatric Clinic H', 65, '11:00 AM - 8:00 PM', 8),
    ('Rehabilitation Center I', 80, '8:00 AM - 5:00 PM', 9),
    ('Specialty Clinic J', 70, '9:00 AM - 6:00 PM', 10);

create table Goes_To(
    animal_id int,
    clinic_no int,
    Event_Type varchar(50) not null CHECK (Event_Type IN ('Checkup', 'Surgery', 'Vaccination','Treatment')),
    Event_Date Date,
    Foreign Key(animal_id) references Animal(Animal_Id),
    Foreign Key(clinic_no) references Clinic(Clinic_No),
    primary key(animal_id,clinic_no,Event_Date)
)
    INSERT INTO Goes_To (animal_id, clinic_no, Event_Type, Event_Date)
    VALUES 
    (3, 1, 'Surgery', '2023-04-15'), -- Lotso (Wounded) - Surgery
    (3, 1, 'Treatment', '2023-07-03'), -- Lotso (Wounded) - Additional Treatment
    (6, 1, 'Vaccination', '2023-05-20'), -- Mufasa (Sick) - Vaccination
    (6, 1, 'Checkup', '2023-06-10'), -- Mufasa (Sick) - Checkup
    (11, 1, 'Treatment', '2023-09-10'), -- Kaa (Healthy) - Treatment
    (15, 1, 'Checkup', '2023-08-01'), -- Yogi (Healthy) - Checkup
    (15, 1, 'Treatment', '2023-09-05'), -- Yogi (Healthy) - Treatment
    (16, 1, 'Treatment', '2023-09-05'), -- Boo Boo (Healthy) - Treatment
    (17, 1, 'Checkup', '2023-06-01'), -- Kerchak (Healthy) - Checkup
    (18, 1, 'Treatment', '2023-04-05'), -- Kala (Healthy) - Treatment
    (20, 1, 'Checkup', '2023-07-15'), -- Raksha (Healthy) - Checkup
    (21, 1, 'Checkup', '2023-08-10'), -- Akela (Healthy) - Checkup
    (21, 1, 'Treatment', '2023-08-30'), -- Akela (Healthy) - Treatment
    (22, 1, 'Treatment', '2023-09-20'), -- Marlin (Healthy) - Treatment
    (23, 1, 'Treatment', '2023-10-05'), -- Nemo (Healthy) - Treatment
    (23, 1, 'Treatment', '2023-11-01'), -- Nemo (Healthy) - Additional Treatment
    (24, 1, 'Treatment', '2023-08-25'), -- Dory (Healthy) - Treatment
    (28, 1, 'Treatment', '2023-06-15'), -- Ziggy (Healthy) - Treatment
    (29, 1, 'Treatment', '2023-07-01'), -- Zara (Healthy) - Treatment
    (30, 1, 'Checkup', '2023-05-10'), -- Gerald (Healthy) - Checkup
    (32, 1, 'Checkup', '2023-07-25'), -- Rocky (Healthy) - Checkup
    (34, 1, 'Checkup', '2023-09-01'), -- Toby (Healthy) - Checkup
    (35, 1, 'Treatment', '2023-08-15'), -- Tina (Injured) - Treatment
    (36, 1, 'Treatment', '2023-04-10'), -- Buddy (Healthy) - Treatment
    (37, 1, 'Treatment', '2023-03-25'), -- Betty (Healthy) - Treatment
    (39, 1, 'Treatment', '2023-11-10'); -- Mia (Pregnant) - Treatment

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
    ('MediServe', 5, 3, '10'), -- Medical Supplies Ltd. providing 10 units of equipment 3 to Medical Clinic C
    ('MediServe', 6, 4, '12'), -- Medical Supplies Ltd. providing 12 units of equipment 4 to Urgent Care D
    ('MedTech Solutions', 7, 5, '8'), -- Medical Supplies Ltd. providing 8 units of equipment 5 to Wellness Center E
    ('MedTech Solutions', 8, 6, '14'), -- Medical Supplies Ltd. providing 14 units of equipment 6 to Community Clinic F
    ('MedTech Solutions', 9, 7, '18'), -- Medical Supplies Ltd. providing 18 units of equipment 7 to Family Practice G
    ('MediServe', 10, 8, '20'), -- Medical Supplies Ltd. providing 20 units of equipment 8 to Pediatric Clinic H
    ('MediServe', 11, 1, '15'), -- Medical Supplies Ltd. providing 15 units of equipment 1 to Rehabilitation Center I
    ('MedTech Solutions', 12, 2, '10'); -- Medical Supplies Ltd. providing 10 units of equipment 2 to Specialty Clinic J

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
    ('Safari Supplies', 'Zone C', 'Food', 4),
    ('SuperMart', 'Zone A', 'Food', 20),
    ('FashionTrends', 'Zone B', 'Clothing', 21),
    ('ToyWorld', 'Zone C', 'Gifts & Toys', 22),
    ('HealthyBites', 'Zone D', 'Food', 23),
    ('GadgetZone', 'Zone E', 'Accessories', 24),
    ('BookNook', 'Zone A', 'Gifts & Toys', 25),
    ('SportsEmporium', 'Zone B', 'Accessories', 26),
    ('CosmeticGlam', 'Zone C', 'Accessories', 27),
    ('HomeDecor', 'Zone D', 'Gifts & Toys', 28),
    ('ElectroMart', 'Zone E', 'Accessories', 29),
    ('FancyFurniture', 'Zone A', 'Clothing', 20), -- Same manager as SuperMart
    ('PetParadise', 'Zone B', 'Accessories', 21), -- Same manager as FashionTrends
    ('TechTrends', 'Zone C', 'Accessories', 22), -- Same manager as ToyWorld
    ('UrbanWear', 'Zone D', 'Clothing', 23), -- Same manager as HealthyBites
    ('ArtisticExpressions', 'Zone E', 'Gifts & Toys', 24), -- Same manager as GadgetZone
    ('FoodFiesta', 'Zone A', 'Food', 25), -- Same manager as BookNook
    ('FashionHub', 'Zone B', 'Clothing', 26), -- Same manager as SportsEmporium
    ('GizmoGalaxy', 'Zone C', 'Accessories', 27), -- Same manager as CosmeticGlam
    ('OutdoorsUnlimited', 'Zone D', 'Accessories', 28), -- Same manager as HomeDecor
    ('GameGalore', 'Zone E', 'Gifts & Toys', 29);

create table Sponsor(
    Sponsor_Name varchar(50) not null,
    Sponsor_ID int primary key Identity (1,1),
    Email varchar(50) ,
    Start_Date Date ,
    End_Date Date,
    shop_no int,                               
    Foreign Key(shop_no) references Shop(Shop_No)
);

	INSERT INTO Sponsor (Sponsor_Name, Email, Start_Date, End_Date, shop_no)
    VALUES 
    ('ZooHealth Inc.', 'info@zoohealth.com', '2024-01-01', '2024-12-31', 1), -- ZooGifts
    ('Wildlife Supplies Ltd.', 'info@wildlifesupplies.com', '2024-02-15', '2024-12-31', 2), -- Safari Supplies
    ('SunnyPets', 'info@sunnypets.com', '2024-03-20', '2024-12-31', NULL), -- No specific shop
    ('EcoTrend', 'info@ecotrend.com', '2024-04-10', '2024-12-31', NULL), -- No specific shop
    ('NatureNook', 'info@naturenook.com', '2024-05-05', '2024-12-31', NULL), -- No specific shop
    ('GreenPaws', 'info@greenpaws.com', '2024-06-01', '2024-12-31', NULL), -- No specific shop
    ('EcoElegance', 'info@ecoelegance.com', '2024-07-10', '2024-12-31', 4), -- SuperMart
    ('EcoFriendly Finds', 'info@ecofriendlyfinds.com', '2024-08-15', '2024-12-31', 6), -- HealthyBites
    ('PetParadise', 'info@petparadise.com', '2024-09-20', '2024-12-31', 13), -- PetParadise
    ('WildlifeWonders', 'info@wildlifewonders.com', '2024-10-25', '2024-12-31', 15), -- ToyWorld
    ('NaturalNurture', 'info@naturalnurture.com', '2024-11-30', '2024-12-31', 19); -- ArtisticExpressions


create table Sponsor_Phone(
    Sponsor_ID int,
    Foreign Key(Sponsor_ID) references Sponsor(Sponsor_ID),
    Phone_Number varchar(13) not null,
    primary key(Sponsor_ID,Phone_Number)
);
	INSERT INTO Sponsor_Phone (Sponsor_ID, Phone_Number)
    VALUES 
    (3, '333-333-3333'), -- SunnyPets
    (4, '444-444-4444'), -- EcoTrend
    (5, '555-555-5555'), -- NatureNook
    (6, '666-666-6666'), -- GreenPaws
    (7, '777-777-7777'), -- EcoElegance
    (8, '888-888-8888'), -- EcoFriendly Finds
    (9, '999-999-9999'), -- PetParadise
    (10, '101-101-1010'), -- WildlifeWonders
    (11, '202-202-2020'); -- NaturalNurture


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
    Transaction_No int Identity (1,1),
    Transaction_Value int ,
    primary key(ticket_No, shop_no, Transaction_No)
);

INSERT INTO transacts (ticket_no, shop_no, Transaction_Value)
    VALUES 
    (1, 1, 50),
    (2, 2, 200);

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

