--Database (veri tabanı) oluşturma:

create database kayıtlar

CREATE DATABASE kayıtlar2

Create DataBase kayıtlar3

-- DLL - (Data Definiation Language)
-- Create - Tablo Oluşturma

create table ogrenciler
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real, -- Ondalıklı sayılar için kullanılır(double gibi)
kayıt_tarih date	
);

-- Var olan tablodan yeni bir tablo oluşturma

CREATE TABLE ogrenci_notları
AS -- Benzer tablodaki başlıklarla ve data tipleriyle yeni bir tablo oluşturmak için normal tablo oluştururken ki 
   -- parantezler yerine 'as' kullanıp 'select' komutuyla almak istediğimiz verileri alırız. 
SELECT isim,soyisim,not_ort FROM ogrenciler; 

-- DML - Data Manipuloation Language
-- insert (Database'e veri ekleme)

insert into ogrenciler values ('1234567','Ömer Faruk','Babayiğit',70.5,'2020-12-04');
insert into ogrenciler values ('1234567','Ömer Faruk','Babayiğit',70.5,now());

-- Bir tabloya parçalı veri eklemek istersek

INSERT INTO ogrenciler (isim,soyisim) VALUES ('OMER','BABAYİGİT');

--DQL - Data Query Language
--Select

Select * From ogrenciler; --Buradaki * sembolü herşeyi anlamındadır