/*https://github.com/kropiak/bazy_inf/blob/master/lab_05/lab_05.pdf*/
/*zadanie 1*/
1
CREATE TABLE kreatura SELECT * FROM wikingowie.kreatura;
CREATE TABLE zasob SELECT * FROM wikingowie.zasob;
CREATE TABLE ekwipunek SELECT * FROM wikingowie.ekwipunek;
2
SELECT * FROM zasob;
3
SELECT * FROM zasob WHERE rodzaj='jedzenie';
4
SELECT idZasobu, ilosc, idKreatury FROM ekwipunek WHERE idKreatury = 1 
OR idKreatury = 3 OR idKreatury = 5;
/*zadanie 2*/
1
SELECT * FROM kreatura WHERE rodzaj != 'wiedzma' AND udzwig > 49;
2.
SELECT * FROM zasob WHERE waga BETWEEN 2 AND 5;
3.
SELECT * FROM kreatura WHERE nazwa LIKE '%or%' AND udzwig BETWEEN 30 AND 70;
/*czy trzeba uzywać "LIKE" czni można urzyc normalnie = "%%"
jedno szuka wzorca a drugie dokładnie tego w środku LIKE a = 
poczytaj*/
/*Zadanie 3.*/
1.
SELECT dataPozyskania, nazwa FROM zasob WHERE MONTH(dataPozyskania) IN (6,7);
2.
SELECT * FROM zasob WHERE rodzaj IS NOT NULL ORDER BY waga ASC;
3.
SELECT * FROM kreatura ORDER BY dataUr ASC LIMIT 5;
/*zadanie 4.*/
1.
SELECT rodzaj FROM zasob GROUP BY rodzaj; 
2.
SELECT CONCAT(nazwa,'  ',rodzaj) FROM kreatura WHERE rodzaj LIKE 'wi%';
3.
SELECT * , CONCAT('  ',waga*ilosc) AS calkowita_waga 
FROM zasob WHERE YEAR(dataPozyskania) in (2000,2007); 
/*dodaj nowy rekord z waga*ilosc do tego*/

/*zadanie 5*/
1.
SELECT *, CONCAT(waga*ilosc*0.7) AS jedzenie_netto, CONCAT(waga*ilosc*0.3) AS odpady 
FROM zasob WHERE rodzaj='jedzenie';
2.
SELECT * FROM zasob WHERE rodzaj IS NULL;
3.
SELECT rodzaj FROM zasob WHERE nazwa LIKE 'ba%' OR '%os' ORDER BY rodzaj ASC;


concat(Łańcuch 1, 2 )
łączenie łańcuchów i możemy łączyć wyrazy 
można scalać kilka kolumn w jedną do wyświetlenia dzięki temu 








