   if object_id('Fact','U') is not null
	drop table Fact;
if object_id('Date','U') is not null
	drop table [Date];
if object_id('Customer','U') is not null
	drop table Customer;
if object_id('Geolocation','U') is not null
	drop table Geolocation;
if object_id('OrderItem','U') is not null
	drop table OrderItem;
if object_id('Payment','U') is not null
	drop table Payment;
if object_id('Order','U') is not null
	drop table [Order];
if object_id('Product','U') is not null
	drop table Product;
	if object_id('ProductTranslation','U') is not null
	drop table ProductTranslation;
if object_id('Seller','U') is not null
	drop table Seller;
if object_id('Review','U') is not null
	drop table Review;

create table Customer(
	customer_id int identity(1,1) primary key,
	customer_nid varchar(max) null,
	customer_unique_nid varchar(max) null,
	customer_zip_code_prefix varchar(max) null,
	customer_city varchar(max) null,
	customer_state varchar(max) null
)
create table Geolocation(
	geolocation_id int identity(1,1) primary key,
	geolocation_zip_code_prefix varchar(max) null,
	geolocation_city varchar(max) null,
	geolocation_state varchar(max) null
)

create table OrderItem(
	order_item_id int identity(1,1) primary key,
	order_nid varchar(max) null,
	order_item_nid varchar(max) null,
	product_nid varchar(max) null,
	seller_nid varchar(max) null,
	price decimal null,
	freight_value decimal null
)
create table Payment(
	payment_id int identity(1,1) primary key,
	order_nid varchar(max) null,
	payment_sequential varchar(max) null,
	payment_type varchar(max) null,
	payment_installments varchar(max) null,
	payment_value decimal null
)
create table [Order](
	order_id int identity(1,1) primary key,
	order_nid varchar(max) not null,
	customer_nid varchar(max) null,
	order_status varchar(max) null
)
create table Product(
	product_id int identity(1,1) primary key,
	product_nid varchar(max) null,
	product_category_name varchar(max) null,
	product_category_name_english varchar(max) null,
	product_name_length varchar(max) null,
	product_description_length  varchar(max) null,
	product_photos_qty  varchar(max) null,
	product_weight_g  varchar(max) null
)

create table Seller(
	seller_id int identity(1,1) primary key,
	seller_nid varchar(max) null,
	seller_zip_code_prefix  varchar(max) null,
	seller_city  varchar(max) null,
	seller_state varchar(max) null
)
create table Review(
	review_id int identity(1,1) primary key,
	review_nid varchar(max) null,
	order_nid varchar(max) null,
	review_score integer null
)
