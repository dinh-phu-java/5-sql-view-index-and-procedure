create database demo;

use demo;

create table products(
    id int,
    productCode int,
    productName nvarchar(50),
    productAmount int,
    productDescription nvarchar(150),
    productStatus nvarchar(10)
);

insert into products values
(1,526,'IPhone 1',52,'Iphone red','avaiable'),
(2,236,'IPhone 2',2,'Iphone ','avaiable'),
(3,426,'IPhone 3',22,'Iphone red','avaiable'),
(4,5126,'IPhone 4',42,'Iphone red','avaiable'),
(5,345,'IPhone 5',6,'Iphone red','avaiable'),
(6,2356,'IPhone 6',352,'Iphone red','avaiable'),
(7,623,'IPhone 7',0,'Iphone red','out'),
(8,733,'IPhone 8',42,'Iphone red','avaiable'),
(9,124,'IPhone 9',76,'Iphone red','avaiable');

alter table products
add primary key (id);

alter table products
add unique index (productCode);

alter table products
drop index my_index(productName,productAmount);

alter table products
drop index;

explain select * from products where productName like 'I%';

alter table products
add index my_index (productCode,productName);

create view my_view as
    select productCode,productName,productAmount,productStatus
from    products;

select * from my_view;

create or replace view my_view as
select productCode,productName,productAmount,productStatus
from    products
where productCode>400
;


delimiter //
create procedure all_product_information()
begin
    select * from products;
end //
delimiter
;
call all_product_information();

delimiter //
create procedure insert_new_product(in my_id int, in my_code int, in my_name nvarchar(50),in my_amount int, in my_desc nvarchar(50), in my_status nvarchar(50) )
begin
    insert into products values(my_id,my_code,my_name,my_amount,my_desc,my_status);
end;
delimiter
;

call insert_new_product(15,161,'Dinh Phu',52,'Iphone red','avaiable');

select * from products;

