-- Create your own customers table, make sure you create it with an auto_increment primary key.

CREATE TABLE CUSTOMER (
  CUSTOMER_ID INT PRIMARY KEY AUTO_INCREMENT,
  NAME VARCHAR(255).
  SURNAME VARCHAR(255),
  AGE INT,
  ADDRESS VARCHAR(255),
  TELEPHONE VARCHAR(255)
  );

-- Insert some customers with an insert statement.

  INSERT INTO CUSTOMER (NAME, SURNAME, AGE, ADDRESS, TELEPHONE)
  VALUES ("Rocco", "IlGrande", 29, "Via delle Ginestre, 13", "333-3335284"),
  ("Pietro", "Cross", 32, "Via Ischia, 99", "800-222-4444"),
  ("Giuseppe", "Blillo", 55, "Via Palemmo, 50", "444-111-7272"),
  ("Hermione", "Granger", 15, "Via Hogwarts, 100", "555-32324343");

-- Edit these customers using the UPDATE statement with a WHERE clause referring to the id.

  UPDATE CUSTOMER
  SET CUSTOMER.NAME
  WHERE CUSTOMER.ID = 1;

-- Delete some customers with delete from statement with a WHERE clause referring to the id.

  DELETE CUSTOMER
  WHERE CUSTOMER.ID = 2;

--Delete all customers with a truncate statement.

  TRUNCATE TABLE CUSTOMER;
-- Look at the tables below and write which column(s) you think would make a good primary key.

CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,   --  Questa è la primary-key ottimale
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,        --  potrebbere essere una buona primary-key se non fosse troppo piu' pesante e meno
 PRIMARY KEY (customer_id)
);
Question

CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL
);
Question

CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE
);
9 - Question

CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
);