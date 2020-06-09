explain select * from customers where customerNumber=175;
alter table customers add index my_index (contactFirstName,contactLastName);
alter table customers add key my_key (contactFirstName,contactLastName);
explain select * from customers where contactFirstName='jean' or contactLastName= 'King';

delimiter //
create procedure my_procedure(in my_id int, in my_name nvarchar(50))
begin
    update customers
        set customerName= my_name
    where customerNumber= my_id;
end //
delimiter
;

select * from customers;

call my_procedure(103,'Dinh Phu');


