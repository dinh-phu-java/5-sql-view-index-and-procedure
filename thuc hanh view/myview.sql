use classicmodels;

create view my_view as
    select * from customers
where customerName like 'D%'
and creditLimit > 21000.00;

select * from my_view;