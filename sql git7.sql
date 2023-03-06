create database if not exists Markeet;
create table if not exists customers(
customer_id int primary key,
customer_name varchar(255) default null,
phone varchar(255) Not Null
);
create table if not exists orders(
order_id INT primary key,
order_date date not null,
customer_id INT ,
constraint fk_orders foreign key(customer_id)references customers(customer_id)
);
create table if not exists products(
product_id int primary key,
category varchar(255)not null default'food',
order_id INt,
foreign key(order_id) references orders(order_id)
);
