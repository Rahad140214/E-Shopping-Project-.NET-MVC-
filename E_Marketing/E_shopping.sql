create table tbl_admin
(
ad_id INT IDENTITY PRIMARY KEY,
ad_username VARCHAR(50) NOT NULL UNIQUE,
ad_password VARCHAR(50) NOT NULL
)


INSERT INTO tbl_admin
values('rahadmannanan@gmail.com','rdcse14'),
	  ('shopping1','shopnow2020'),
	  ('test1','admin123')

select * from tbl_admin
---------------User-----------
create table tbl_user
(
u_id INT IDENTITY PRIMARY KEY,
u_name VARCHAR(50) NOT NULL,
u_image VARCHAR(max) NOT NULL,
u_email VARCHAR(50) NOT NULL UNIQUE,
u_contact VARCHAR(50) NOT NULL UNIQUE,
u_password VARCHAR(50) NOT NULL
)

-------------Category---------
create table tbl_category
(cat_id INT IDENTITY PRIMARY KEY,
cat_name VARCHAR(50) NOT NULL UNIQUE,
cat_image VARCHAR(max) NOT NULL,
cat_fk_id INT FOREIGN KEY REFERENCES tbl_admin(ad_id)
)

-------------PRODUCTS---------
create table tbl_product
(
pro_id INT IDENTITY PRIMARY KEY,
pro_name VARCHAR(50) NOT NULL,
pro_image VARCHAR(max) NOT NULL,
pro_des VARCHAR(max) NOT NULL,
pro_price INT,
pro_fk_user INT FOREIGN KEY REFERENCES tbl_user(u_id),
pro_fk_cat INT FOREIGN KEY REFERENCES tbl_category(cat_id)
)

 