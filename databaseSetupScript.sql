CREATE TABLE Customer(
    account_username varchar(20),
    email varchar(20),
    address varchar(20),
    customer_name varchar(20),
    PRIMARY KEY(account_username)
);

INSERT INTO Customer VALUES ('Ellen123', 'ellen123@gmail.com','2366 Main Mall', 'Ellen');
INSERT INTO Customer VALUES ("Skye321", "Skye321@gmail.com","6245 Agronomy Rd","Skye");
INSERT INTO Customer VALUES ("Charlie5", "Charlie5@gmail.com","2335 Engineering Rd", "Charlie");
INSERT INTO Customer VALUES ("RaymondGod", "RaymondGod304@gmail.com","2036 Main Mall", "Raymond");
INSERT INTO Customer VALUES ("MohammedLee", "theMostCommonName@gmail.com","2366 Main Mall", "MohammedLee");

-- below are statements to drop or add constraints outisde of a create table or drop table statement
-- ALTER TABLE Product_take DROP CONSTRAINT fk_cid;
-- ALTER TABLE Product_take ADD CONSTRAINT fk_cid FOREIGN KEY (COrderID,ItemID) REFERENCES CurrentOrder(OrderID,COrderID);

-- How to run SQL Plus to run script:
-- in command line: sqlplus ora_cwl@stu (ora_smethven@stu for Skye)
-- password: a<student_number> (a11305109 for Skye)
-- run start databaseSetupScript.sql