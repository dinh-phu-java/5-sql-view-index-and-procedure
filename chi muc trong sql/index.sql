explain select * from customers where customerNumber=175;
alter table customers add index my_index (contactFirstName,contactLastName);
alter table customers add key my_key (contactFirstName,contactLastName);
explain select * from customers where contactFirstName='jean' or contactLastName= 'King';
