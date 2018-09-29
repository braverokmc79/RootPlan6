create user `rootplan`@`localhost` identified by 'rootplan';
 
 
create database rootplan character set=utf8;
 
grant all privileges on rootplan.* to `rootplan`@`localhost` ;


create database rootplan;


create table customer(
id varchar(20) not null,
email varchar(50),
gender int,
age int,
PRIMARY KEY(id)
);



create table route(
	id int auto_increment primary key,
	rid varchar(500) not null,
	size int,
	cid varchar(20) not null,
	name varchar(100),
	address1 varchar(100),
	lat1 float(50),
	lng1 float(50),
	address2 varchar(100),
	lat2 float(50),
	lng2 float(50),
	address3 varchar(100),
	lat3 float(50),
	lng3 float(50),
	address4 varchar(100),
	lat4 float(50),
	lng4 float(50),
	address5 varchar(100),
	lat5 float(50),
	lng5 float(50),
	address6 varchar(100),
	lat6 float(50),
	lng6 float(50),
	address7 varchar(100),
	lat7 float(50),
	lng7 float(50),	
	foreign key(cid) references customer (id)
);

create table route2(
	id int auto_increment primary key,
	rid varchar(500) not null,
	cid varchar(20) not null,
	pt_order varchar(100),
	car_order varchar(100),
	size int,
	start int,
	last int
);



