create database format ;

CREATE TABLE ref_customers(
  cust_id int,
  cust_nm varchar(20)
) ;



INSERT INTO ref_customers(cust_id, cust_nm) VALUES
('1', 'Marzuq'),
('2', 'Markus');


CREATE TABLE ref_products (
  prd_id int NOT NULL,
  prd_nm varchar(20) NOT NULL
) ;



INSERT INTO ref_products (prd_id, prd_nm) VALUES
('1', 'ABC'),
('2', 'XYZ'),
('3', 'QWE');



CREATE TABLE trx_transactions(
  trx_id int,
  cust_id int,
  prd_id int,
  qty int,
  price int
);



INSERT INTO trx_transactions (trx_id, cust_id, prd_id, qty, price) VALUES
('1', '1', '1', '10', '30000'),
('2', '1', '2', '20', '20000'),
('3', '1', '3', '5', '10000'),
('4', '2', '1', '5', '15000'),
('5', '2', '2', '5', '1000');

SELECT ref_customers.cust_nm, trx_transactions.qty 
FROM trx_transactions 
inner join ref_customers ON ref_customers.cust_id = trx_transactions.cust_id; 


SELECT trx_transactions.price, ref_products.prd_nm 
FROM ref_products 
inner join trx_transactions 
ON trx_transactions.prd_id = ref_products.prd_id 
WHERE ref_products.prd_nm = 'ABC'; 
