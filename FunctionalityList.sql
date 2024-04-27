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
create procedure TransferAnimal
    @Animal_ID int,
    @Exhibit_no int
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