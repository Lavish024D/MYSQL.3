
select*from customers;
select*from orders;

-- oldest syntax 
select c.customer_id, c.customer_name, o.customer_id,
o.order_id, o.amount from customers as c
JOIN orders as o
where c.customer_id = o.customer_id;

-- another method
select c.customer_id, c.customer_name, o.customer_id,
o.order_id, o.amount from customers as c
inner JOIN orders as o
on c.customer_id = o.customer_id;

-- another method
select c.customer_id, c.customer_name, o.customer_id,
o.order_id, o.amount from customers as c
inner JOIN orders as o using (customer_id);

select c.customer_id, c.customer_name, o.customer_id,
o.order_id, o.amount from customers as c 
left JOIN orders as o on c.customer_id = o.customer_id;

select c.customer_id, c.customer_name, o.customer_id,
o.order_id, o.amount from customers as c
right join orders as o using (customer_id);
 
select * from orders;
select *from customers;
select c.cid, c.customer_name, o.customer_id,
o.order_id, o.amount from customers as c
natural join orders as o ;


alter table customers rename column customer_id to cid ;
select * from customers;
