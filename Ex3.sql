/*
input cần quét ở bảng customers, output cần trả ra những cột full name và email
với điều kiện là status phải laf active, người dùng cần phải ở tại hà nội,
email cần phải khác null, và lần mua cuối cần phải trước ngày 01/04/2026
với việc select * sẽ trả về tất cả các cột -> 
Không đúng nội dung cần trích xuất, với số lượng lớn khách hàng sẽ gây chậm trễ trong việc xuất dữ liệu
*/
create database OLD_cus;
use OLD_cus;
create table customers(
customerId int primary key auto_increment,
fullName varchar(100),
email varchar(100),
city varchar(100),
lastPurchaseDate date,
customerStatus varchar(20),
gender varchar(10),
dateOfBirth date,
points int,
address varchar(255)	
);
insert into customers (fullName, email, city, lastPurchaseDate, customerStatus)
values
('Nguyễn Văn A', 'anv@gmail.com', 'Hà Nội', '2025-05-20', 'Active'),
('Trần Thị B', 'btt@gmail.com', 'Hà Nội', '2026-02-10', 'Active'),
('Lê Văn C', null, 'Hà Nội', '2025-01-15', 'Active'),	
('Phạm Minh D', 'dpm@gmail.com', 'Hà Nội', '2024-12-01', 'Locked'),
('Hoàng An E', 'eha@gmail.com', 'TP HCM', '2025-03-01', 'Active');
delete from customers where email is null or city = 'TP HCM' or lastPurchaseDate between '2025-10-01' and '2026-04-01'  or customerStatus = 'Locked' ; 
select fullName,email from customers;
drop database ss3bai3
