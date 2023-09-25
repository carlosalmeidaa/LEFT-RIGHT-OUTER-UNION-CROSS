use classicmodels;
select 
concat (firstname, ' ',lastname) as empregado,
customernumber
from
employees right join customers on (employeenumber = salesrepemployeenumber)
where 
employeenumber is null;

select 
concat (firstname, ' ',lastname) as empregado,
customernumber
from
employees left join customers on (employeenumber = salesrepemployeenumber)
where 
customernumber is null;

select 
productname,
orders.ordernumber
from
products 
left join orderdetails using (productcode)
left join orders using (ordernumber)
where
orders.ordernumber is null;

select 
productname,
orders.ordernumber
from
products 
right join orderdetails using (productcode)
right join orders using (ordernumber)
where
products.productcode is null;

select 
customernumber
from
customers 
where
contactlastname like '%d'
union
select 
customernumber
from
customers 
where
contactfirstname like '%a'
and
contactlastname like '%e';

select 
customernumber, phone
from
customers 
where
contactlastname like '%d'
union
select 
customernumber, phone
from
customers 
where
contactfirstname like '%a'
and
contactlastname like '%e';

select
concat(firstname, ' ',lastname) as empregado,
customernumber 	
from
employees left join customers on (employeenumber = salesrepemployeenumber)
where
customernumber is null
union 
select 
concat(firstname, ' ',lastname) as empregado,
customernumber
from 
employees right join customers on (employeenumber = salesrepemployeenumber)
where 
employeenumber is null;

select 
concat(firstname, ' ', lastname) as empregado,
customernumber
from 
employees right join customers on (employeenumber = salesrepemployeenumber);

select 
concat(firstname, ' ', lastname) as empregado,
customernumber
from 
employees cross join customers;

select 
p.productname, p1.productname
from products p cross join products p1;


