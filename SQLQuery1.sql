
create database Dictionary
Use Dictionary ;

Create table _User
(
	ID_User nvarchar(10) primary key not NULL,
	UserName nvarchar(40),
	Email nvarchar(40),
	Phone_Number nvarchar(10),
	Address_User nvarchar(100),
	User_PW nvarchar(20),
);
Create table _Admin
(
	ID_Admin nvarchar(10) primary key not NULL,
	AdminName nvarchar(40),
	Email nvarchar(40),
	Phone_Number nvarchar(10),
	Address_Admin nvarchar(100),
	Admin_PW nvarchar(20),
);

Create table History
(
	ID_User nvarchar(10) not NULL,
	ID_Word nvarchar(10) not NULL,
	Search_Time DateTime,
	FOREIGN KEY (ID_User) REFERENCES _User(ID_User),
	FOREIGN KEY (ID_Word) REFERENCES Word(ID_Word),
);

Create Table Word
(
	ID_Word nvarchar(10) primary key not NULL,
	WordName nvarchar(20),
	Type_Word nvarchar(10),
	Content nvarchar(50),
	Explaination nvarchar(1000),
	ID_Admin nvarchar(10) not NULL,
	FOREIGN KEY (ID_Admin) REFERENCES _Admin(ID_Admin),
);

Create Table Favorite_Word
(
	ID_User nvarchar(10) not NULL,
	ID_Word nvarchar(10) not NULL,
	FOREIGN KEY (ID_User) REFERENCES _User(ID_User),
	FOREIGN KEY (ID_Word) REFERENCES Word(ID_Word),
	The_Sentence nvarchar(1000),
);

INSERT INTO _User ( ID_User, UserName, Email, Phone_Number, Address_User, User_PW) 
VALUES ('0001', 'Nguyen Quang Thang', 'quangthang@gmail.com', '0377018874', 'Quang Nam', '1234');

INSERT INTO _User ( ID_User, UserName, Email, Phone_Number, Address_User,  User_PW) 
VALUES ('0002', 'Nguyen Van Tien' , 'vantien@gmail.com', '0355823807', 'Đa Nang', '4321');

INSERT INTO _User ( ID_User, UserName, Email, Phone_Number, Address_User, User_PW)
VALUES ('0003', 'Pham Si Viet' , 'siviet@gmail.com', '0397132163', 'Binh Dinh', '22222');

INSERT INTO _Admin ( ID_Admin, AdminName, Email, Phone_Number, Address_Admin, Admin_PW)
VALUES ('0001', 'Tran Duc Binh', 'ducbinh@gmail.com', '0833120701', 'Ha Tinh', '3333');

INSERT INTO _Admin ( ID_Admin, AdminName, Email, Phone_Number, Address_Admin, Admin_PW)
VALUES ('0002', 'Nguyen Huu Trong', 'huutrong@gmail.com', '0893127835', 'Da Nang', '5555');

INSERT INTO Word(ID_Word, Wordname, Type_Word, Content, Explaination,ID_Admin) VALUES ('0000001', 'dictionary', 'noun',N'Từ điển',
N'Từ điển là danh sách các từ, ngữ được sắp xếp thành các từ vị chuẩn','0001');
INSERT INTO Word(ID_Word, Wordname, Type_Word, Content, Explaination,ID_Admin) VALUES ('0000002', 'information', 'noun',N'Thông tin',
N'Thông tin là những gì con người thu nhận được từ thế giới xung quanh như sự vật, sự kiện,...','0001');
INSERT INTO Word(ID_Word, Wordname, Type_Word, Content, Explaination,ID_Admin) VALUES ('0000003', 'technology', 'noun', N'Công nghệ',
N'Công nghệ là sự phát minh, sự thay đổi, việc sử dụng, và kiến thức về các công cụ, máy móc, kỹ thuật, kỹ năng nghề nghiệp, hệ thống,
và phương pháp tổ chức, nhằm giải quyết một vấn đề, cải tiến một giải pháp đã tồn tại, đạt một mục đích, hay thực hiện một chức năng cụ thể đòi hỏi hàm lượng chất xám cao','0001');
INSERT INTO Word(ID_Word, Wordname, Type_Word, Content, Explaination,ID_Admin) VALUES ('0000004', 'search', 'verb',N'Tìm kiếm',
N'Tìm kiếm là tìm cho thấy, cho có được','0002');
INSERT INTO Word(ID_Word, Wordname, Type_Word, Content, Explaination,ID_Admin) VALUES ('0000005', 'translate', 'verb',N'Phiên dịch',
N'Phiên dịch là dịch một văn bản hay một lời phát biểu từ một ngôn ngữ hoặc một hệ thống kí hiệu này sang một ngôn ngữ hoặc một hệ thống kí hiệu khác','0002');


INSERT INTO History(ID_User, ID_Word, Search_Time)
VALUES('0001','0000004', '02/16/2021');
INSERT INTO History(ID_User, ID_Word, Search_Time)
VALUES('0002','0000001', '01/03/2021');

INSERT INTO Favorite_Word(ID_User, ID_Word) 
VALUES ('0002','0000002')
INSERT INTO Favorite_Word(ID_User, ID_Word) 
VALUES ('0003','0000003')



Select * From _User 
Select * From _Admin
Select * From Word
Select * From Favorite_Word
Select * From History

Delete From _User ;
Delete From _Admin ;
Delete From History ;

Drop table _User ;
Drop table _Admin ;
Drop table Word;
Drop table History ;
Drop table Favorite_Word