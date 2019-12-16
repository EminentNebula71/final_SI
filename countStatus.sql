--b) 
explain select count(*) from orders where status is null;

explain select count(*) from orders where status ='Shipped';

--c)
DROP INDEX idx_status;
CREATE INDEX idx_status on orders(status);

--d) 
explain select count(*) from orders where status ='Shipped';

explain select count(*) from orders where status is null;


--e)

ANALYZE orders;

--f)
explain select count(*) from orders where status ='Shipped';

explain select count(*) from orders where status is null;


--g)
explain select count(*) from orders where status ='Paid';
explain select count(*) from orders where status ='Processed';