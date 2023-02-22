---- Create crowdfunding_db database via pgAdmin

---- Create category table
drop table if exists category;

create table category(
    category_id varchar not null primary key,
    category varchar
);

-- View table to ensure correct creation
select * from category;

---- Create subcategory table
drop table if exists subcategory;

create table subcategory(
    subcategory_id varchar not null primary key,
    subcategory varchar not null
);

-- View table to ensure correct creation
select * from subcategory;

---- Create contacts table
drop table if exists contacts;

create table contacts(
    contact_id int not null primary key,
    first_name varchar,
    last_name varchar,
    email varchar
);

-- View table to ensure correct creation
select * from contacts;

---- Create campaign table
drop table if exists campaign;

create table campaign(
    cf_id int not null primary key,
    contact_id int not null,
    company_name varchar,
    description varchar,
    goal decimal,
    pledged decimal,
    outcome varchar,
    backers_count int,
    country varchar,
    currency varchar,
    launched_date date,
    end_date date,
    category_id varchar,
    subcategory_id varchar,
    foreign key (contact_id) references contacts (contact_id),
    foreign key (category_id) references category (category_id),
    foreign key (subcategory_id) references subcategory (subcategory_id)
);

-- View table to ensure correct creation
select * from campaign;

---- Import CSVs via pgAdmin

---- View tables to ensure csv data was correctly imported

select * from category;

select * from subcategory;

select * from contacts;

select * from campaign;