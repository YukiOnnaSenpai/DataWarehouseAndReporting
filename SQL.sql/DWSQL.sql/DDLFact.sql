create table Fact(
	fact_id int identity(1,1) primary key,
	customer_id int null,
	geolocation_id int null,
	order_id int null,
	order_item_id int null,
	payment_id int null,
	product_id int null,
	review_id int null,
	seller_id int null
	,constraint Fact_customer_fk foreign key (customer_id) references Customer (customer_id)
	,constraint Fact_geolocation_fk foreign key (geolocation_id) references Geolocation (geolocation_id)
	,constraint Fact_order_fk foreign key (order_id) references [Order] (order_id)
	,constraint Fact_order_item_fk foreign key (order_item_id) references OrderItem (order_item_id)
	,constraint Fact_payment_fk foreign key (payment_id) references Payment (payment_id)
	,constraint Fact_product_fk foreign key (product_id) references Product (product_id)
	,constraint Fact_review_fk foreign key (review_id) references Review (review_id)
	,constraint Fact_seller_fk foreign key (seller_id) references Seller (seller_id)
)