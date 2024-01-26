alter table product_color
    add codeColor varchar(20) default '#ffffff' null;

alter table bill_details
    add product_color varchar(20) null;

alter table bills
    add payment_method enum ('COD', 'BANK') default 'COD' null;


alter table bills
    add full_name varchar(255)  null;

alter table bills
    add address varchar(255)  null;

alter table bills
    add phone varchar(255)  null;

alter table bill_details
    add total_price decimal(10, 2)  default 0;

alter table bill_details
    drop column phone;

alter table bill_details
    drop column address;

alter table bill_details
    drop column name;

alter table bill_details
    drop column status;

alter table bills
    add status enum ('IN_PROGRESS', 'IN_SHIPPING', 'DONE') default 'IN_PROGRESS' null;

