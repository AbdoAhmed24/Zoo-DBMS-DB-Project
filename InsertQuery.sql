    -- Insert sample data into Exhibit table
    INSERT INTO Exhibit (Exhibit_Name, Capacity, Theme, Location, Size, Security_Level, EManager_Id)
    VALUES 
    ('Savannah', 20, 'African Safari', 'Zone A', 'Large', 'High', 1),
    ('Jungle', 15, 'Tropical Rainforest', 'Zone B', 'Medium', 'Medium', 2),
    ('Grassland', 10, 'Safari Adventure', 'Zone C', 'Small', 'Low', 3);

    -- Insert sample data into Supplier table
    INSERT INTO Supplier (Company_Name, Email)
    VALUES 
    ('Fresh Food Co.', 'info@freshfoodco.com'),
    ('ZooSupply Inc.', 'info@zoosupplyinc.com');

    -- Insert sample data into Food table
    INSERT INTO Food (type)
    VALUES 
    ('Meat'),
    ('Fruit');

    -- Insert sample data into Animal table
    INSERT INTO Animal (Animal_Name, Gender, Habitat, General_Name, Genus, Species, Status, Diet_Type, Date_of_Birth, Exhibit_no)
    VALUES 
    ('Teddy', 'M', 'Savannah', 'Lion', 'Panthera', 'Leo', 'Healthy', 'Carnivore', '2015-07-15', 1),
    ('Belle', 'F', 'Jungle', 'Tiger', 'Panthera', 'Tigris', 'Healthy', 'Carnivore', '2016-09-20', 2),
    ('Lotso', 'M', 'Grassland', 'Elephant', 'Loxodonta', 'Africana', 'Wounded', 'Herbivore', '2014-12-10', 3);

    -- Insert sample data into Medical_History table
    INSERT INTO Medical_History (Animal_Id, Diagnosis, Diagnosis_Date, Treatment_Date)
    VALUES 
    (1, 'Minor Wound', '2023-05-10', '2023-05-11'),
    (2, 'Respiratory Infection', '2023-06-20', '2023-06-21'),
    (3, 'Leg Injury', '2023-07-15', NULL);

    -- Insert sample data into Supplies table
    INSERT INTO Supplies (company_name, exhibit_no, Food_Type, Quantity)
    VALUES 
    ('Fresh Food Co.', 1, 'Meat', '100 kg'),
    ('ZooSupply Inc.', 2, 'Fruit', '50 kg');

    -- Insert sample data into Equipment table
    INSERT INTO Equipment DEFAULT VALUES;
    INSERT INTO Equipment DEFAULT VALUES;

    -- Insert sample data into Clinic table
    INSERT INTO Clinic (Location, Capacity, Operating_Hours, Event_Type, Event_Date, CManager_Id)
    VALUES 
    ('Veterinary Clinic', 20, '9:00 AM - 5:00 PM', 'Check-Up', '2024-04-27', 1),
    ('Surgical Clinic', 15, '8:00 AM - 4:00 PM', 'Surgery', '2024-04-27', 2);

    -- Insert sample data into Provides table
    INSERT INTO Provides (company_name, clinic_no, equipment_no, Quantity)
    VALUES 
    ('Medical Supplies Ltd.', 1, 1, '10'),
    ('Medical Supplies Ltd.', 1, 2, '5');

    -- Insert sample data into Staff table
    INSERT INTO Staff (Manager_ID, Clinic_NO, Exhibit_NO, Shop_NO, SSN, Fname, Mname, Lname, Address, Email, Salary, Gender, Role, Joining_Date, Birth_Date, Working_Hours)
    VALUES 
    (NULL, 1, NULL, NULL, '1234567890', 'John', NULL, 'Doe', '123 Main St', 'john@example.com', 50000, 'M', 'Veterinarian', '2020-01-15', '1985-05-10', '9:00 AM - 5:00 PM'),
    (NULL, 2, NULL, NULL, '9876543210', 'Jane', NULL, 'Smith', '456 Elm St', 'jane@example.com', 45000, 'F', 'Shop Manager', '2019-07-20', '1988-09-20', '10:00 AM - 6:00 PM');

    -- Insert sample data into Staff_Phone table
    INSERT INTO Staff_Phone (Staff_ID, Phone_No)
    VALUES 
    (1, '555-555-5555'),
    (2, '444-444-4444');

    -- Insert sample data into Shop table
    INSERT INTO Shop (Shop_Name, Location, Product_Category, SManager_Id)
    VALUES 
    ('ZooGifts', 'Next to Entrance', 'Gifts & Toys', 2),
    ('Safari Supplies', 'Near Savannah Exhibit', 'Food', 1);

    -- Insert sample data into Sponsor table
    INSERT INTO Sponsor (Sponsor_Name, Email, Start_Date, End_Date, shop_no)
    VALUES 
    ('ZooHealth Inc.', 'info@zoohealth.com', '2024-01-01', '2024-12-31', 1),
    ('Wildlife Supplies Ltd.', 'info@wildlifesupplies.com', '2024-02-15', '2024-12-31', 2);

    -- Insert sample data into Sponsor_Phone table
    INSERT INTO Sponsor_Phone (Sponsor_ID, Phone_Number)
    VALUES 
    (1, '111-111-1111'),
    (2, '222-222-2222');

    -- Insert sample data into Visitor table
    INSERT INTO Visitor (Ticket_Type, Gender, Age, Phone_Number, Visit_Date)
    VALUES 
    ('Basic', 'M', 30, '123-456-7890', '2024-04-01'),
    ('VIP', 'F', 45, '987-654-3210', '2024-04-15');

    -- Insert sample data into Donation table
    INSERT INTO Donation (Visitor_Ticket, Location, Date, Amount)
    VALUES 
    (1, 'Primate Forest', '2024-04-01', 100),
    (2, 'Arctic Circle', '2024-04-15', 500);

    -- Insert sample data into transacts table
    INSERT INTO transacts (ticket_no, shop_no, Transaction_No, Transaction_Value)
    VALUES 
    (1, 1, 1, 50),
    (2, 2, 1, 200);

    -- Insert sample data into Sponsor_Area_Acquired table
    INSERT INTO Sponsor_Area_Acquired (Area_Acquired, sponsor_id)
    VALUES 
    ('Savannah Exhibit', 1),
    ('Jungle Exhibit', 2);
