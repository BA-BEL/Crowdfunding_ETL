category
-
category_id varchar pk
category varchar

subcategory
-
subcategory_id varchar pk
subcategory varchar

contacts
-
contact_id int pk
first_name varchar
last_name varchar
email varchar

campaign
-
cf_id int pk
contact_id int fk >- contacts.contact_id
company_name varchar
description varchar
goal decimal
pledged decimal
outcome varchar
backers_count int
country varchar
currency varchar
launched_date date
end_date date
category_id varchar fk >- category.category_id
subcategory_id varchar fk >- subcategory.subcategory_id
