-- bütçede tanım satırındakı verıyi gunceller
UPDATE butce
SET tanim ='Yatırım',miktar = 20000
WHERE id = 22 ;

-- bütçede id si belırtılen veriyi siler
DELETE FROM butce WHERE id = 22

-- bütçeye market alışverişini ekler
INSERT INTO butce
VALUES(NULL ,'Market Alışverişi', 6, 250, '2024-01-20');


DELETE FROM butce WHERE tarih = ' 2025-07-15'

-- \\bütçe tablosundakı tanim miktar tarih verılerını getirir.
SELECT tanim , miktar , tarih 
FROM butce ;

-- \\Tür tablosundaki bütün verılerı getirir.
SELECT *
FROM tur ; 

-- butce tablosunda kac tane kayıt oldugunu getırır
SELECT COUNT (*)
FROM butce ;

-- işlem gerceklestırilen tarıhlerın sayısını getırır
SELECT COUNT (DISTINCT tarih)
FROM butce ;

-- yapılan işlemlerden mıktarı 10000 üzerinde olan kayıtları getırın
SELECT *
FROM butce
WHERE miktar > 10000 ;

-- yapılan işlemlerden mıktarı 20000 ile 25000 arasında olan kayıtların tanım mıktar ve tarıhlerıni getırın .
SELECT tanim , miktar , tarih 
FROM butce
WHERE miktar >20000 AND miktar <= 25000 ;