CREATE TABLE Customer(
    account_username varchar(50),
    email varchar(50),
    address varchar(50),
    customer_name varchar(50),
    PRIMARY KEY(account_username)
);

INSERT INTO Customer VALUES ('Ellen123', 'ellen123@gmail.com','2366 Main Mall', 'Ellen');
INSERT INTO Customer VALUES ('Skye321', 'Skye321@gmail.com','6245 Agronomy Rd','Skye');
INSERT INTO Customer VALUES ('Charlie5', 'Charlie5@gmail.com','2335 Engineering Rd', 'Charlie');
INSERT INTO Customer VALUES ('RaymondGod', 'RaymondGod304@gmail.com','2036 Main Mall', 'Raymond');
INSERT INTO Customer VALUES ('MohammedLee', 'theMostCommonName@gmail.com','2366 Main Mall', 'MohammedLee');

CREATE TABLE Order(
    order_number  char(25),
	order_price double,
	order_time datetime,     
	account_username varchar(50) NOT NULL,
	food_provider_name varchar(50) NOT NULL,
	food_provider_location varchar(50) NOT NULL,
	PRIMARY KEY(order_number),
	FOREIGN KEY(account_username) REFERENCES Customer ON DELETE CASCADE
    FOREIGN KEY(food_provider_name) REFERENCES FoodProvider ON DELETE CASCADE
	FOREIGN KEY(food_provider_location) REFERENCES FoodProvider ON DELETE CASCADE
)

INSERT INTO Order
VALUES(’1000000’, 39.5, ’2022-03-03 13:23:44’,’Ellen123’, ‘McDonald’s’, ‘5728 University Blvd #101, Vancouver’ )
INSERT INTO Order
VALUES(‘1000001’, 40.01, ’2022-03-03 20:23:12’,’Skye321’, ‘McDonald’s’, ‘5728 University Blvd #101, Vancouver’ )
INSERT INTO Order
VALUES(’1000002’, 27.15, ’2022-02-28 21:03:09’, ‘Charlie5’, ‘McDonald’s’, ‘5728 University Blvd #101, Vancouver’ )
INSERT INTO Order
VALUES(1000003, 70.5, ’2022-03-03 13:23:44’, ’RaymondGod’, ‘Pho 37’, ‘8328 Capstan Way #1101, Richmond’ )
INSERT INTO Order
VALUES(’1000004’, 20.08, ‘2022-03-03 20:13:00’, ‘Ellen123’, ‘McDonald’s’, ‘5728 University Blvd #101, Vancouver’ )







-- below are statements to drop or add constraints outisde of a create table or drop table statement
-- ALTER TABLE Product_take DROP CONSTRAINT fk_cid;
-- ALTER TABLE Product_take ADD CONSTRAINT fk_cid FOREIGN KEY (COrderID,ItemID) REFERENCES CurrentOrder(OrderID,COrderID);

-- How to run SQL Plus to run script:
-- in command line: sqlplus ora_cwl@stu (ora_smethven@stu for Skye)
-- password: a<student_number> (a11305109 for Skye)
-- run start databaseSetupScript.sql