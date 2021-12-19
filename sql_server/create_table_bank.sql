USE sandbox_db

DROP TABLE bank

CREATE TABLE bank
(record_id int not null identity(1,1) primary key,
age int,
job varchar(100),
marital varchar(100),
education varchar(100),
default_field varchar(100),
balance money,
housing varchar(100),
loan varchar(100),
contact varchar(100),
day_field int,
month_field varchar(100),
duration int,
campaign varchar(100),
pdays varchar(100),
previous varchar(100),
poutcome varchar(100),
deposit varchar(100)
)