create database shoppingdb;

use shoppingdb;

CREATE TABLE `account` (
  `user_mail` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `account_role` int NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_mail`)
);

INSERT INTO `shoppingdb`.`account`
(`user_mail`,
`password`,
`account_role`,
`user_name`,
`user_address`,
`user_phone`)
VALUES
('21130556@st.hcmuaf.edu.vn','thuan',1,'Dang Nam Thuan','Dai hoc Nong Lam','0384774118'),
('21130591@st.hcmuaf.edu.vn','chig',1,'Le Chi Truong','Dac Lac','0835169543'),
('dnamthuan@gmail.com','123',1,'Tran Van On','Binh Thuan','0369274066'),
('5664371@student.tdtu.edu.vn','dat123',1,'Phan Dat','Lagi, Binh Thuan','0972087207'),
('21130438@st.hcmuaf.edu.vn','nguyen21130438',1,'Khoi Nguyen','Dai hoc Nong Lam','0903568385');

CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_des` varchar(255) DEFAULT NULL,
  `product_price` double NOT NULL,
  `product_img_source` varchar(255) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_brand` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
);

insert into products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 11 Pro Max 512GB',N'Màn hình: 6.5", Super Retina XDR
HĐH: iOS 13
CPU: Apple A13 Bionic 6 nhân
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP',43.990,'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-600x600.jpg','cellphone',
'apple');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 11 Pro Max 256GB',N'Màn hình: 6.5", Super Retina XDR
HĐH: iOS 13
CPU: Apple A13 Bionic 6 nhân
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP',37.990,'https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-black-600x600.jpg','cellphone',
'apple');

insert into products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xs Max 256GB',N'Màn hình: 6.5", Super Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 4 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',32.990,'https://cdn.tgdd.vn/Products/Images/42/190322/iphone-xs-max-256gb-white-600x600.jpg','cellphone',
'apple');

insert into products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone X 256GB',N'Màn hình: 5.8", Super Retina
HĐH: iOS 12
CPU: Apple A11 Bionic 6 nhân
RAM: 3 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',27.990,'https://cdn.tgdd.vn/Products/Images/42/190324/iphone-xs-256gb-white-600x600.jpg','cellphone',
'apple');

insert into products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xs 64GB',N'Màn hình: 5.8", Super Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 4 GB, ROM: 64 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',24.990,'https://cdn.tgdd.vn/Products/Images/42/190321/iphone-xs-max-gold-600x600.jpg','cellphone',
'apple');

insert into products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone Xr 128GB',N'Màn hình: 6.1", Liquid Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 3 GB, ROM: 128 GB
Camera: 12 MP, Selfie: 7 MP',17.990,'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg','cellphone',
'apple');

insert into products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 8 Plus 64GB',N'Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A11 Bionic 6 nhân
RAM: 3 GB, ROM: 64 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',16.590,'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg','cellphone',
'apple');

insert into products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 7 Plus 32GB',N'Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A10 Fusion 4 nhân 64-bit
RAM: 3 GB, ROM: 32 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',12.490,'https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600.jpg','cellphone',
'apple');

insert into products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('iPhone 7 32GB',N'Màn hình: 4.7", Retina HD
HĐH: iOS 12
CPU: Apple A10 Fusion 4 nhân 64-bit
RAM: 2 GB, ROM: 32 GB
Camera: 12 MP, Selfie: 7 MP',10.490,'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-600x600.jpg','cellphone',
'apple');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy A15 256GB',N'Màn hình: Super AMOLED6.5"Full HD+
HĐH: Android 14, Camera sau: Chính 50 MP & Phụ 5 MP, 2 MP, Camera trước: 13 MP
Chip: MediaTek Helio G99, RAM: 8 GB, Dung lượng lưu trữ: 256 GB, SIM: 2 Nano SIM, Hỗ trợ 4G',
9.990,'https://cdn.tgdd.vn/Products/Images/42/316075/samsung-galaxy-a15-xanh-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy A15 5G',N'Màn hình: Super AMOLED6.5"Full HD+
HĐH: Android 14, Camera sau: Chính 50 MP & Phụ 5 MP, 2 MP, Camera trước: 13 MP
Chip: MediaTek Dimensity 6100+, RAM: 8 GB, Dung lượng lưu trữ: 256 GB, SIM: 2 Nano SIM, Hỗ trợ 5G',
19.990,'https://cdn.tgdd.vn/Products/Images/42/319584/samsung-galaxy-a15-5g-xanh-duong-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy A25 5G 8GB',N'Màn hình: Super AMOLED6.5"Full HD+
HĐH: Android 14, Camera sau: Chính 50 MP & Phụ 8 MP, 2 MP, Camera trước: 13 MP
Chip: Exynos 1280, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM, Hỗ trợ 5G',
29.990,'https://cdn.tgdd.vn/Products/Images/42/319904/samsung-galaxy-a25-xanh-den-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy S23 FE 5G',N'Dynamic AMOLED 2X6.4"Full HD+
HĐH: Android 13, Camera sau: Chính 50 MP & Phụ 12 MP, 10 MP, Camera trước: 10 MP & 4 MP
Chip: Snapdragon 8 Gen 2 for Galaxy, RAM: 12 GB, Dung lượng lưu trữ: 256 GB, SIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G',
39.990,'https://cdn.tgdd.vn/Products/Images/42/306994/samsung-galaxy-s23-fe-xanh-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy Z Fold5 5G 256GB',N'Dynamic AMOLED 2XChính 7.6" & Phụ 6.2"Quad HD+ (2K+)
HĐH: Android 13, Camera sau: Chính 50 MP & Phụ 12 MP, 8 MP, Camera trước: 10 MP
Chip: Exynos 2200 8 nhân, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G',
49.990,'https://cdn.tgdd.vn/Products/Images/42/301608/samsung-galaxy-zfold5-kem-256gb-1-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy S24 Ultra 5G 256GB',N'Dynamic AMOLED 2X6.8"Quad HD+ (2K+)
HĐH: Android 14, Camera sau: Chính 200 MP & Phụ 50 MP, 12 MP, 10 MP, Camera trước: 12 MP
Chip: Snapdragon 8 Gen 3 for Galaxy, RAM: 12 GB, Dung lượng lưu trữ: 256 GB, SIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G',
12.990,'https://cdn.tgdd.vn/Products/Images/42/307174/samsung-galaxy-s24-ultra-xam-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy S23 Ultra 5G 256GB',N'Dynamic AMOLED 2X6.8"Quad HD+ (2K+)
HĐH: Android 13, Camera sau: Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP, Camera trước: 12 MP
Chip: Snapdragon 8 Gen 2 for Galaxy, RAM: 8 GB, Dung lượng lưu trữ: 256 GB, SIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G',
19.990,'https://cdn.tgdd.vn/Products/Images/42/307174/samsung-galaxy-s24-ultra-xam-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy S24+ 5G 256GB',N'Dynamic AMOLED 2X6.7"Quad HD+ (2K+)
HĐH: Android 14, Camera sau: Chính  50 MP & Phụ 12 MP, 10 MP, Camera trước: 12 MP
Chip: Exynos 2400 8 nhân, RAM: 12 GB, Dung lượng lưu trữ: 256 GB, SIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G',
13.990,'https://cdn.tgdd.vn/Products/Images/42/307172/samsung-galaxy-s24-plus-tim-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy S24 5G 256GB',N'Dynamic AMOLED 2X6.2"Full HD+
HĐH: Android 14, Camera sau: Chính  50 MP & Phụ 12 MP, 10 MP, Camera trước: 12 MP
Chip: Exynos 2400 8 nhân, RAM: 8 GB, Dung lượng lưu trữ: 256 GB, SIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G',
14.990,'https://cdn.tgdd.vn/Products/Images/42/319665/samsung-galaxy-s24-vang-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy Z Flip5 5G 256GB',N'Chính: Dynamic AMOLED 2X, Phụ: Super AMOLEDChính 6.7" & Phụ 3.4"Full HD+
HĐH: Android 13, Camera sau: 2 camera 12 MP,  Camera trước: 10 MP
Chip: Snapdragon 8 Gen 2 for Galaxy, RAM: 8 GB, Dung lượng lưu trữ: 256 GB, SIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G',
15.990,'https://cdn.tgdd.vn/Products/Images/42/299250/samsung-galaxy-zflip5-xanh-256gb-1-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy S22 Ultra 5G 128GB',N'Dynamic AMOLED 2X6.8"Quad HD+ (2K+)
HĐH: Android 12, Camera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP, Camera trước: 40 MP
Chip: Snapdragon 8 Gen 1, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM:2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G',
16.990,'https://cdn.tgdd.vn/Products/Images/42/235838/samsung-galaxy-s22-ultra-1-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy S23 FE 5G',N'Dynamic AMOLED 2X6.4"Full HD+
HĐH: Android 13, Camera sau: Chính 50 MP & Phụ 12 MP, 8 MP, Camera trước: 10 MP
Chip: Exynos 2200 8 nhân, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM:2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G',
34.80,'https://cdn.tgdd.vn/Products/Images/42/321058/samsung-galaxy-s23-fe-5g-tim-1.jpeg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy M54 5G',N'Super AMOLED Plus6.7"Full HD+
HĐH: Android 13, Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP, Camera trước: 32 MP
Chip: Exynos 1380 8 nhân, RAM: 8 GB, Dung lượng lưu trữ: 256 GB, SIM:2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G',
43.990,'https://cdn.tgdd.vn/Products/Images/42/275953/samsung-galaxy-m54-1-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy A54 5G 128GB',N'Super AMOLED6.4"Full HD+
HĐH: Android 13, Camera sau: Chính 50 MP & Phụ 12 MP, 5 MP, Camera trước: 32 MP
Chip: Exynos 1380 8 nhân, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM:2 Nano SIM, Hỗ trợ 5G',
32.990,'https://cdn.tgdd.vn/Products/Images/42/303585/samsung-galaxy-a54-tim-glr-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy A34 5G 256GB',N'Super AMOLED6.6"Full HD+
HĐH: Android 13, Camera sau: Chính 48 MP & Phụ 8 MP, 5 MP, Camera trước: 13 MP
Chip: MediaTek Dimensity 1080 8 nhân, RAM: 8 GB, Dung lượng lưu trữ: 256 GB, SIM:2 Nano SIM, Hỗ trợ 5G',
34.990,'https://cdn.tgdd.vn/Products/Images/42/298377/samsung-galaxy-a34-bac-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy S21 FE 5G',N'Dynamic AMOLED 2X6.4"Full HD+
HĐH: Android 12, Camera sau: Chính 12 MP & Phụ 12 MP, 8 MP, Camera trước: 32 MP
Chip: Exynos 2100, RAM: 6 GB, Dung lượng lưu trữ: 128 GB, SIM:2 Nano SIM, Hỗ trợ 5G',
54.990,'https://cdn.tgdd.vn/Products/Images/42/267211/samsung-galaxy-s21-fe-xanh-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy M34 5G',N'Super AMOLED6.5"Full HD+
HĐH: Android 13, Camera sau: Chính 50 MP & Phụ 8 MP, 2 MP, Camera trước: 13 MP
Chip: MediaTek Helio G99, RAM: 6 GB, Dung lượng lưu trữ: 128 GB, SIM:2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G',
64.990,'https://cdn.tgdd.vn/Products/Images/42/309834/samsung-galaxy-m34-xanh-nhat-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy A24 6GB',N'Super AMOLED6.5"Full HD+
HĐH: Android 13, Camera sau: Chính 50 MP & Phụ 5 MP, 2 MP, Camera trước: 13 MP
Chip: Exynos 1280, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM, Hỗ trợ 4G',
35.990,'https://cdn.tgdd.vn/Products/Images/42/274018/samsung-galaxy-a24-den-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy A05s 6GB',N'PLS LCD6.7"Full HD+
HĐH: Android 13, Camera sau: Chính 50 MP & Phụ 2 MP, 2 MP, Camera trước: 13 MP
Chip: Snapdragon 680, RAM: 6 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM, Hỗ trợ 4G',
46.990,'https://cdn.tgdd.vn/Products/Images/42/317530/samsung-galary-a05s-bac-glr-1.jpg','cellphone',
'samsung');

insert into  products(product_name,product_des,product_price,product_img_source,product_type,product_brand)
values('Điện thoại Samsung Galaxy A14 5G',N'PLS LCD6.6"Full HD+
HĐH: Android 13, Camera sau: Chính 50 MP & Phụ 2 MP, 2 MP, Camera trước: 13 MP
Chip: MediaTek Dimensity 700, RAM: 4 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM, Hỗ trợ 4G',
33.990,'https://cdn.tgdd.vn/Products/Images/42/271721/samsung-galaxy-a14-5g-nau-1-1.jpg','cellphone',
'samsung');

CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(100) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `order_status` int DEFAULT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_discount_code` varchar(45) DEFAULT NULL,
  `order_address` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
);

CREATE TABLE `orders_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `amount_product` int DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `discount_coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `number` int NOT NULL,
  `price` double NOT NULL,
  `start_date` timestamp NOT NULL,
  `due_date` timestamp NOT NULL,
 -- `used` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
);

INSERT INTO `shoppingdb`.`discount_coupon` (`code`, `number`, `price`, `start_date`, `due_date`) VALUES
('NGUOIMOI', 5, 10.0, '2023-12-11', '2024-12-11'),
('SALETET', 5, 12.0, '2023-01-16', '2024-02-09'),
('SALE2501', 5, 5.0, '2023-01-25', '2023-01-26'),
('SALE0202', 5, 8.0, '2023-02-02', '2023-02-03');

-- CREATE TABLE `discount_used` (
-- `id` int NOT NULL AUTO_INCREMENT,
-- `code` varchar(45) NOT NULL,
--    `user_mail` varchar(100) NOT NULL,
 --   PRIMARY KEY (`id`)
-- );

CREATE TABLE `email_offer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);

select count(*) as count from orders where order_discount_code is not null and user_email 
is not null and order_discount_code='NGUOIMOI' and user_email='5664371@student.tdtu.edu.vn';

select sum(amount_product) as total_amount from orders_detail where product_id='3' group by product_id;