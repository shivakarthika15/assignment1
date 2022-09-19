--Click on your newly created instance.

--In the Connect to this instance section, click on Connect using Cloud Shell.

--Once connected, you will be prompted with a gcloud command:
--gcloud sql connect <INSTANCE_NAME> --user=root –quiet

--Press Enter to start the command.

--Enter the password.

--1)Create a Database and Table Within the Cloud SQL Instance
CREATE DATABASE dataset;
USE dataset;
CREATE TABLE Inventory (product VARCHAR(20), quantity NUMBER);
--2)Insert query
INSERT dataset.Inventory (product, quantity)
VALUES('top load washer', 10),
      ('front load washer', 20),
      ('dryer', 30),
      ('refrigerator', 10),
      ('microwave', 20),
      ('dishwasher', 30),
      ('oven', 5);
--3)Update
 UPDATE dataset.Inventory
SET quantity = quantity + 10
WHERE product like '%washer%';
--4)Select
 SELECT * FROM dataset.Inventory WHERE quantity in (10,20,30);
--5)Delete
 DELETE dataset.Inventory WHERE quantity = 10;
