CREATE TABLE Customer(
    account_username varchar(20),
    email varchar(50),
    address varchar(50),
    customer_name varchar(20),
    PRIMARY KEY(account_username)
);

CREATE TABLE FoodProvider(
    food_provider_name varchar(50),
    food_provider_location varchar(50),
    phone_number char(10),
    PRIMARY KEY(food_provider_name, food_provider_location)
);

CREATE TABLE funkyOrder(
    order_number char(7),
	order_price float(4),
	order_time timestamp,
	account_username varchar(20) NOT NULL,
	food_provider_name varchar(50) NOT NULL,
	food_provider_location varchar(50) NOT NULL,
	PRIMARY KEY(order_number),
	FOREIGN KEY(account_username) REFERENCES Customer ON DELETE CASCADE,
    FOREIGN KEY(food_provider_name, food_provider_location) REFERENCES FoodProvider ON DELETE CASCADE
);

INSERT INTO Customer VALUES ('Ellen123', 'ellen123@gmail.com','2366 Main Mall', 'Ellen');
INSERT INTO Customer VALUES ('Skye321', 'Skye321@gmail.com','6245 Agronomy Rd','Skye');
INSERT INTO Customer VALUES ('Charlie5', 'Charlie5@gmail.com','2335 Engineering Rd', 'Charlie');
INSERT INTO Customer VALUES ('RaymondGod', 'RaymondGod304@gmail.com','2036 Main Mall', 'Raymond');
INSERT INTO Customer VALUES ('MohammedLee', 'theMostCommonName@gmail.com','2366 Main Mall', 'MohammedLee');

INSERT INTO FoodProvider VALUES ('McDonalds', '5728 University Blvd #101, Vancouver','6042212570');
INSERT INTO FoodProvider VALUES ('The Keg Steakhouse + Bar', '688 Dunsmuir St., Vancouver','6046857502');
INSERT INTO FoodProvider VALUES ('The Home Depot', '3950 Henning Dr, Burnaby', '6042943030');
INSERT INTO FoodProvider VALUES ('Pho 37','8328 Capstan Way #1101, Richmond','6044475158');
INSERT INTO FoodProvider VALUES ('Cactus Club Richmond Centre','6511 No.3 Rd #1666, Richmond','6042449969');

INSERT INTO funkyOrder VALUES('1000000', 39.50, TO_TIMESTAMP('2022-03-03 13:23:44', 'YYYY-MM-DD HH24:MI:SS'),'Ellen123', 'McDonalds', '5728 University Blvd #101, Vancouver');
INSERT INTO funkyOrder VALUES('1000001', 40.01, TO_TIMESTAMP('2022-03-03 20:23:12', 'YYYY-MM-DD HH24:MI:SS'),'Skye321', 'McDonalds', '5728 University Blvd #101, Vancouver');
INSERT INTO funkyOrder VALUES('1000002', 27.15, TO_TIMESTAMP('2022-02-28 21:03:09', 'YYYY-MM-DD HH24:MI:SS'),'Charlie5', 'McDonalds', '5728 University Blvd #101, Vancouver');
INSERT INTO funkyOrder VALUES('1000003', 70.50, TO_TIMESTAMP('2022-03-03 13:23:44', 'YYYY-MM-DD HH24:MI:SS'),'RaymondGod', 'Pho 37', '8328 Capstan Way #1101, Richmond');
INSERT INTO funkyOrder VALUES('1000004', 20.08, TO_TIMESTAMP('2022-03-03 20:13:00', 'YYYY-MM-DD HH24:MI:SS'),'Ellen123', 'McDonalds', '5728 University Blvd #101, Vancouver');



-- below are statements to drop or add constraints outisde of a create table or drop table statement
-- ALTER TABLE Product_take DROP CONSTRAINT fk_cid;
-- ALTER TABLE Product_take ADD CONSTRAINT fk_cid FOREIGN KEY (COrderID,ItemID) REFERENCES CurrentOrder(OrderID,COrderID);

-- How to run SQL Plus to run script:
-- in command line: sqlplus ora_cwl@stu (ora_smethven@stu for Skye)
-- password: a<student_number> (a11305109 for Skye)
-- run start createScript.sql