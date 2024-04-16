use datalytics;

drop table if  exists marketing
create table marketing(Customer_Id int primary key,
Age int,
Income int,
Gender varchar(20),
Location varchar(128),
Product_id int,
Categroy varchar(128),
Sales int,
Rating double,
Order_date date,
Repeat_Purchase varchar(16),
Acquisition_Channel varchar(64),
Campaign_ID int,
Customer_satisfaction double,
Competitor_Price int,
NPS int
)

load data infile 'marketing_dataset.csv' into table marketing
fields terminated by ','
ignore 1 lines;

select count(*) from marketing;

select Customer_Id, Location from marketing
group by Customer_Id 

select count(distinct location) from marketing;