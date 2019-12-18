select count(total)from (select count(*)as total
from orders
where totalamount >= 200
and extract (year from orderdate)=2013 and extract (month from orderdate) = 8
group by extract (year from orderdate), extract (month from orderdate), customerid) as a;

----------------------------------------------------------------------------------------

explain select count(total)from (select count(*)as total
from orders
where totalamount >= 200
and extract (year from orderdate)=2013 and extract (month from orderdate) = 8
group by extract (year from orderdate), extract (month from orderdate), customerid) as a;

----------------------------------------------------------------------------------------

drop index index_tamount;
create index index_tamount on orders(totalamount);

select count(total)from (select count(*)as total
from orders
where totalamount >= 200
and extract (year from orderdate)=2013 and extract (month from orderdate) = 8
group by extract (year from orderdate), extract (month from orderdate), customerid) as a;

----------------------------------------------------------------------------------------

drop index index_custid;
create index index_custid on orders(customerid);

select count(total)from (select count(*)as total
from orders
where totalamount >= 200
and extract (year from orderdate)=2013 and extract (month from orderdate) = 8
group by extract (year from orderdate), extract (month from orderdate), customerid) as a;

----------------------------------------------------------------------------------------

drop index index_ordate;
create index index_ordate on orders(orderdate);

select count(total)from (select count(*)as total
from orders
where totalamount >= 200
and extract (year from orderdate)=2013 and extract (month from orderdate) = 8
group by extract (year from orderdate), extract (month from orderdate), customerid) as a;