create table [Date] (
	date_id int identity(1,1) primary key,
	order_id int not null,
	order_estimated_deleivery_date date null
	,constraint Date_order_fk foreign key (order_id) references [Order] (order_id)
)