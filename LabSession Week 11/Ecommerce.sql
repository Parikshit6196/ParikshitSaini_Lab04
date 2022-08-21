create database order_directory;
use order_directory;
drop table if exists supplier;
create table supplier(SUPP_ID int primary key,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50),
SUPP_PHONE varchar(10) NOT NULL
);
drop table if exists customer;
create table customer(CUS_ID INT NOT NULL,
CUS_NAME VARCHAR(20) NOT NULL,
CUS_PHONE VARCHAR(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER CHAR,
PRIMARY KEY (CUS_ID));
drop table if exists category;
create table category(
CAT_ID INT NOT NULL,
CAT_NAME VARCHAR(20) NOT NULL,
PRIMARY KEY (CAT_ID)
);
drop table if exists product;
create table product(PRO_ID INT NOT NULL,
PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
PRO_DESC VARCHAR(60),
CAT_ID INT NOT NULL,
PRIMARY KEY (PRO_ID),
FOREIGN KEY (CAT_ID) REFERENCES CATEGORY (CAT_ID)
);
drop table if exists supplier_pricing;
create table supplier_pricing(PRICING_ID INT NOT NULL,
PRO_ID INT NOT NULL,
SUPP_ID INT NOT NULL,
SUPP_PRICE INT DEFAULT 0,
PRIMARY KEY (PRICING_ID),
FOREIGN KEY (PRO_ID) REFERENCES PRODUCT (PRO_ID),
FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER(SUPP_ID));
drop table if exists Order1;
create table Order1(ORD_ID INT NOT NULL,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE,
CUS_ID INT NOT NULL,
PRICING_ID INT NOT NULL,
PRIMARY KEY (ORD_ID),
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID),
FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID)
);
drop table if exists rating;
create table rating(RAT_ID INT NOT NULL,
ORD_ID INT NOT NULL,
RAT_RATSTARS INT NOT NULL,
PRIMARY KEY (RAT_ID),
FOREIGN KEY (ORD_ID) REFERENCES Order1 (ORD_ID)
);

INSERT INTO supplier VALUES(1,"Rajesh Retails","Delhi",'1234567890');
INSERT INTO supplier VALUES(2,"Appario Ltd.","Mumbai",'2589631470');
INSERT INTO supplier VALUES(3,"Knome products","Banglore",'9785462315');
INSERT INTO supplier VALUES(4,"Bansal Retails","Kochi",'8975463285');
INSERT INTO supplier VALUES(5,"Mittal Ltd.","Lucknow",'7898456532');

INSERT INTO customer VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO customer VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO customer VALUES(3,"NEHA",'9999999999',"MUMBAI",'F');
INSERT INTO customer VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO customer VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');

INSERT INTO category VALUES( 1,"BOOKS");
INSERT INTO category VALUES(2,"GAMES");
INSERT INTO category VALUES(3,"GROCERIES");
INSERT INTO category VALUES (4,"ELECTRONICS");
INSERT INTO category VALUES(5,"CLOTHES");

INSERT INTO product VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
INSERT INTO product VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
INSERT INTO product VALUES(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
INSERT INTO product VALUES(4,"OATS","Highly Nutritious from Nestle",3);
INSERT INTO product VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
INSERT INTO product VALUES(6,"MILK","1L Toned MIlk",3);
INSERT INTO product VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
INSERT INTO product VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
INSERT INTO product VALUES(9,"Project IGI","compatible with windows 7 and above",2);
INSERT INTO product VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
INSERT INTO product VALUES(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
INSERT INTO product VALUES(12,"Train Your Brain","By Shireen Stephen",1);

INSERT INTO supplier_pricing VALUES(1,1,2,1500);
INSERT INTO supplier_pricing VALUES(2,3,5,30000);
INSERT INTO supplier_pricing VALUES(3,5,1,3000);
INSERT INTO supplier_pricing VALUES(4,2,3,2500);
INSERT INTO supplier_pricing VALUES(5,4,1,1000);
INSERT INTO supplier_pricing VALUES(6,12,2,780);

INSERT INTO supplier_pricing VALUES(7,12,4,789);
INSERT INTO supplier_pricing VALUES(8,3,1,31000);
INSERT INTO supplier_pricing VALUES(9,1,5,1450);
INSERT INTO supplier_pricing VALUES(10,4,2,999);
INSERT INTO supplier_pricing VALUES(11,7,3,549);
INSERT INTO supplier_pricing VALUES(12,7,4,529);
INSERT INTO supplier_pricing VALUES(13,6,2,105);
INSERT INTO supplier_pricing VALUES(14,6,1,99);
INSERT INTO supplier_pricing VALUES(15,2,5,2999);
INSERT INTO supplier_pricing VALUES(16,5,2,2999);

INSERT INTO Order1 VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO Order1 VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO Order1 VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO Order1 VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO Order1 VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO Order1 VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO Order1 VALUES(107,789,"2021-09-01",3,7);
INSERT INTO Order1 VALUES(108,780,"2021-09-07",5,6);
INSERT INTO Order1 VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO Order1 VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO Order1 VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO Order1 VALUES(112,789,"2021-09-16",4,7);
INSERT INTO Order1 VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO Order1 VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO Order1 VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO Order1 VALUES(116,99,"2021-09-17",2,14);

INSERT INTO rating VALUES(1,101,4);
INSERT INTO rating VALUES(2,102,3);
INSERT INTO rating VALUES(3,103,1);
INSERT INTO rating VALUES(4,104,2);
INSERT INTO rating VALUES(5,105,4);
INSERT INTO rating VALUES(6,106,3);
INSERT INTO rating VALUES(7,107,4);
INSERT INTO rating VALUES(8,108,4);
INSERT INTO rating VALUES(9,109,3);
INSERT INTO rating VALUES(10,110,5);
INSERT INTO rating VALUES(11,111,3);
INSERT INTO rating VALUES(12,112,4);
INSERT INTO rating VALUES(13,113,2);
INSERT INTO rating VALUES(14,114,1);
INSERT INTO rating VALUES(15,115,1);
INSERT INTO rating VALUES(16,116,0);


 # 3)	Display the total number of customers 
#based on gender who have placed orders of worth at least Rs.3000.

select count(p.cus_gender) as "No of customers", p.cus_gender from 
(select c.cus_id, c.cus_name, c.cus_gender,o.ord_amount
from customer as c, Order1 as o where o.cus_id = c.cus_id and o.ord_amount>= 3000 group by c.cus_id )as p
group by cus_gender;

 #4)	Display all the orders along with product name ordered by a customer having Customer_Id=2
 
 select pr.pro_name, p.ord_id, p.ord_date, p.cus_id, p.ord_amount from product as pr inner join
 (select o.ord_id, o.pricing_id,o.ord_date,o.cus_id,o.ord_amount, s.pro_id from Order1 as o, supplier_pricing as s 
 where cus_id = 2 and o.pricing_id = s.pricing_id) as P on p.pro_id=pr.pro_id ;
 
# 5)	Display the Supplier details who can supply more than one product.


select * from supplier having supp_id in
(select supp_id from supplier_pricing group by supp_id having count(pro_id)>1);

#6)	Find the least expensive product from each category and print the table with
# category id, name, product name and price of the product


select c.cat_id, c.cat_name, Q.pro_name, min(Q.supp_price) as Price_of_product from
category c inner join
(select s.pro_id,cat_id, supp_price, p.pro_name from supplier_pricing S , product P
where s.pro_id=p.pro_id) as Q on c.cat_id= Q.cat_id group by cat_id;

#7)	Display the Id and Name of the Product ordered after “2021-10-05”.


select p.pro_id, p.pro_name from product p inner join
(select s.pro_id , o.pricing_id from Order1 o , supplier_pricing S
where o.ord_date > '2021-10-05' and o.pricing_id= s.pricing_id) as Q on q.pro_id=p.pro_id;

#8)	Display customer name and gender whose names start or end with character 'A'

select cus_name, cus_gender from Customer where cus_name like 'A%' or cus_name like '%A';

#9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service
#. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, 
#If rating >2 print “Average Service” else print “Poor Service”.

delimiter &&
create procedure display_supp_value()
Begin
select s. supp_id as supplier_Id, s.supp_name as Supplier_name, avg(a.rat_ratstars) as Rating,
Case

when avg(a.rat_ratstars) = 5 then "Excellent Service"
when avg(a.rat_ratstars) >4 then "Good Service"
when avg(a.rat_ratstars) >2 then "Average Service"
else "Poor Service" end
as Type_of_service from supplier S inner join
(select q.ord_id, q.pricing_id, s.supp_id, q.rat_ratstars from supplier_pricing s inner join
(select o.pricing_id, r.rat_ratstars, r.ord_id from rating r, Order1 o where r.ord_id= o.ord_id)
as Q on q.pricing_id=s.pricing_id order by ord_id) as A on a.supp_id= s.supp_id group by Supplier_Id;

End &&

call display_supp_value;