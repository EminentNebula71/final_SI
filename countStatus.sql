explain select count(*) from orders where status is null;
explain select count(*) from orders where status ='Shipped';

----------------------------------------------------------------------------------------

DROP INDEX idx_status;
CREATE INDEX idx_status on orders(status);
select count(*) from orders where status ='Shipped';
select count(*) from orders where status is null;

----------------------------------------------------------------------------------------

ANALYZE orders;
select count(*) from orders where status ='Shipped';
select count(*) from orders where status is null;

----------------------------------------------------------------------------------------

select count(*) from orders where status ='Paid';
select count(*) from orders where status ='Processed';