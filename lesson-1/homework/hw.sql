--1. Data – bu ma’lum bir ma’no anglatuvchi son yoki so‘z ko‘rinishida ma’lumot hisoblanadi. Masalan, yosh, rang, o‘lchov, hajm va hakozo.
--Database – bu ma’lumotlar jamlangan joy bo‘lib, datalar ya’ni ma’lumotlarning saqlanishi, tartibga solinishi uchun kerakli bir joy hisoblanadi.
--Relational database – bu o‘zaro bir biri bilan bog‘liqligi mavjud bo’lgan databaselar hisoblanadi. Masalan, bitta databaseda korxonalarning ishchilar soni mavjud. Ikkinchi databaseda ularning yillik aylanmalari mavjud. Ulardagi ma’lumotlarni birlashtirish uchun ularning STIR ma’lumotlaridan foydalanish mumkin. Bunda relation databases tushunchasi shakllanadi.
--Table – bu datalar (ma’lumotlar)ni bitta jadvalda aks ettirish uchun mo’ljallangan jadval hisoblanadi. Bunda jadvallar ustunlar va qatorlardan tashkil topadi. Masalan umumiy barcha turdagi korxonalarning bit turgani so’ralgan ma’lumotlari ustunlarda, har bir korxonaga tegishli bo’lgan ma’lumotlar qatorlarda yoziladi.
--2.	SQL serverning 5 ta xususiyatini yozib o’taman.
---	Tizimda ma’lumotlarni xavfsiz saqlash va ularga ishlov berish imkoniyati mavjud ekanligi.
---	Tizimda mahsus o’zining T-SQL tili mavjud bo’lib, bu orqali ma’lumotlarni yaratish, ularni qayta ishlash, qo’shish, o’chirish va hk amallarni bajarish imkoniyati mavjud.
---	Ko’p yoki juda ko’p miqdordagi ma’lumotlar bilan ishlash imkoniyati mavjud. Jumladan katta korxonalar masalan banklarda katta hajmdagi ma’lumotlarni tahlil qilish jarayonida excel fayllarning yuklama sababli qotib qolishini bilamiz. SQL serverda bundan muammo kuzatilmaydi. U exceldan bir necha barobar kuchli hamda qulay hisoblanadi.
---	Ishlanayotgan fayllarni yo’qolmasligi uchun zaxiralash yoki ularni tiklash imkoniyati mavjudligi. Bundan yaratilgan ma’lumotda xatolik ketganda yoki ularni xatolik sabababli o’chirib yuborilganda backup zaxiralash yoki restore qayta tiklash mumkin.
---	Qulay hamda chiroyli intermeys orqali ma’lumotlarni taxlil qilish. Bunda bir nechta foydalanuvchi qo’shish imkoniyati mavjud.
--3.	Quyida ikkita autentifikatsiya rejimlari haqida ma’lumot keltirmoqchiman:
---	Windows Authentication (Windows autentifikatsiyasi) orqali biz windows kompyuterimizga kirish bilan sql serverga ham shu login parol orqali kirishimiz mumkin. Bunda tizim Avtomat ravishda foydalanuvchiga ruxsat beradi.
---	SQL Server Authentication (SQL Server autentifikatsiyasi) orqali biz sql serverga maxsus login parollar bilan kirishimiz mumkin. Bunda windows kompyuterga kirgandan so’ng sql serverga kirishda alohida login parol kiritish zarur. Masalan avazhuja_djamalov va hk
4.	 CREATE DATABASE	SchoolDB;
USE SchoolDB.
5.	CREATE TABLE Students (StudentID INT, Name VARCHAR(50), Age INT)
--6.	SQL server, SSMS va SQL o’rtasidagi farqlar quyidagicha hisoblanadi:
---	SQL server – bu tizim. Bu tizimda ma’lumotlar saqlanadi.
---	SSMS – bu interfeys bo’lib SQL serverdagi ma’lumotlarni ushbu interfeysda tahlil qilish, qayta ishlash, ma’lumot qo’shish, o’chirish va hk amallarni bajarish imkonini beruvchi oyna desak bo’ladi.
---	SQL – bu mahsus til. Yani SQL serverdan ma’lumot olish, uni SSMSda qayta ishlash yoki tahlil qilish uchun kerak bo’lgan mahsus dastur tili hisoblanadi.
--7.	SQL tilining DQL, DML, DDL, DCL, TCL buyruqlarini misollar bilan keltiraman:
---	DQL – ma’lumot so’rash tili hisoblanadi. Asosiy buyruq bu select.
--Misol: 
select * from Students;
--Bunda students tabledan barcha ma’lumotlarni chiqarishni bo’yicha buyruq berildi.
---	DML – ma’lumotlarni qo’shish, o’zgartirish va o’chirish uchun ishlatiladigan til hisoblanadi. Asosiy buyruqlar bu INSERT, UPDATE, DELETE. Bunda INSERT – ma’lumotlarni qo’shish, UPDATE – ma’lumotlarni o’zgartirish, DELETE – ma’lumotlarni o’chirish hisoblanadi.
--Misol: 
INSERT into Students values (1, 'Avazhuja', 33),(2, 'Islombek', 31),(3, 'Sardor', 32);
UPDATE Students SET Age = 31 WHERE Name = 'Avazhuja';
DELETE FROM Students WHERE Name = 'Sardor';
---	DDL – ma’lumotlar tuzilmasini belgilash tili bo’lib, jadval bazani yaratish yoki o’zgartirish uchun ishlatiladigan buyruqlardan iborat bo’ladi. Asosiy buyruqlar CREATE, ALTER, DROP.
--Misol:
CREATE TABLE Students (StudentID INT, Name VARCHAR(50), Age INT);
ALTER TABLE Students add jinsi varchar(50);
DROP TABLE Students;
---	DCL – foydalnuvchilarga qanday huquq berilishi yoki mavjudlarini olib tashlash uchun ishlatiladi. Asosiy buyruqlar GRANT, REVOKE. Bunda GRANT – ruxsat berish, REVOKE – ruxsatni olib tashlash.
--Misol:
GRANT SELECT ON Students TO user1;
REVOKE SELECT ON Students FROM user1.
---	TCL – Bir nechta buyruqlarni yagona amaliyot sifatida boshqaradi, agarda xatolik bo’lsa, orqaga qaytarish imkoniyati mavjud. Asosiy buyruqlar BEGIN TRANSACTION, COMMIT, ROLLBACK. Bunda BEGIN TRANSACTION – tranzaktsiyalarni boshlash, COMMIT – o’zgartirishlarni saqlash, ROLLBACK – o’zgartirishlarni bekor qilish.
--Misol:
BEGIN TRANSACTION;
UPDATE Hisoblar SET Balans = Balans - 100 WHERE ID = 1;
UPDATE Hisoblar SET Balans = Balans + 100 WHERE ID = 2;
COMMIT;
ROLLBACK;
8.	INSERT into Students values (1, 'Avazhuja', 33),(2, 'Islombek', 31),(3, 'Sardor', 32)
--9.	AdventureWorksDW2022.bak faylini serverga tiklandi.
