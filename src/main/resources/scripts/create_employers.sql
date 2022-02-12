create table if not exists area (
  area_id serial primary key,
  name varchar(100) not null
);

create table if not exists employer (
  employer_id serial primary key,
  company_name varchar(100) not null,
  employees_count int default 0,
  creation_time timestamp,
  block_time timestamp
);

create table if not exists vacancy (
  vacancy_id serial primary key,
  area_id int,
  title varchar(100) not null,
  description varchar(255) default null,
  employer_id int not null,
  compensation_from int,
  compensation_to int,
  compensation_gross boolean,
  creation_time timestamp,
  archiving_time timestamp default null,
  foreign key (employer_id) references employer(employer_id),
  foreign key (area_id) references area(area_id)
);
