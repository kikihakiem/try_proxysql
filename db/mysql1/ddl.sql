CREATE TABLE products (
    id int NOT NULL AUTO_INCREMENT,
    company_id int,
    sku varchar(50) NOT NULL,
    name varchar(255),
    category varchar(255),
    PRIMARY KEY (ID)
);