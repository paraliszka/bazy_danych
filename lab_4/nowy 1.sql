Zadanie 1.

1.
CREATE TABLE postac 
(id_postaci INT AUTO_INCREMENT PRIMARY KEY, nazwa VARCHAR(40), rodzaj ENUM('wiking','ptak','kobieta')
, data_ur DATE, wiek INT UNSIGNED);

2.
INSERT INTO postac VALUES(default, "Bjorn", 2, '1654.09.02' , 45);
INSERT INTO postac VALUES(default, "Drozd", 3, '2002.11.04' , 45);
INSERT INTO postac VALUES(default, "Tesciowa", 1, '1669.02.29' , 71);
3.
UPDATE postac SET wiek=88 WHERE nazwa = "Tesciowa";

Zadanie 2.

1.
CREATE TABLE walizka 
(id_walizki INT AUTO_INCREMENT PRIMARY KEY, 
pojemnosc INT UNSIGNED, kolor ENUM('rozowy','czerwony','tenczowy', 'zolty')
, id_wlasciciela int,  FOREIGN KEY (id_wlasciciela) REFERENCES postac(id_postaci) ON DELETE CASCADE);

2.
ALTER TABLE walizka ALTER kolor SET DEFAULT 'rozowy';

3.
INSERT INTO walizka VALUES	(default, 40, 3, 1);
INSERT INTO walizka VALUES	(default, 200, default , 3);

Zadanie 3.

1.
CREATE TABLE izba 
(adres_budynku int, nazwa_izby varchar(40), 
PRIMARY KEY(adres_budynku, nazwa_izby), metraz INT UNSIGNED, wlasciciel int, FOREIGN KEY (wlasciciel) REFERENCES postac(id_postaci));

2.
ALTER TABLE izba ADD kolor_izby VARCHAR(30) DEFAULT "czarny" AFTER metraz;

3.
INSERT INTO izba VALUES(21,"spizarnia",37,default,1);

Zadanie 4.

1.
CREATE TABLE przetwory(id_przetworu INT AUTO_INCREMENT PRIMARY KEY, rok_produkcji YEAR DEFAULT (1654), id_wykonawcy INT, 
FOREIGN KEY(id_wykonawcy) REFERENCES postac(id_postaci), zawartosc VARCHAR(40), 
dodatek VARCHAR(40) default "papryczka chilli", id_konsumenta INT,
FOREIGN KEY(id_konsumenta) REFERENCES postac(id_postaci));

2.
INSERT INTO przetwory VALUES(default, 1997, 1, "bigos", default, 3);

Zadanie 5.

1. 
INSERT INTO postac VALUES(default,"Lech",1,'1654.12.5',56);
INSERT INTO postac VALUES(default,"Bojan",1,'1698.12.5',24);
INSERT INTO postac VALUES(default,"Pacan",1,'1674.12.5',32);
INSERT INTO postac VALUES(default,"Gabri",1,'1631.12.5',98);
INSERT INTO postac VALUES(default,"Czarno brody",1,'1654.12.5',42);

2.
CREATE TABLE statek(nazwa_statku VARCHAR(40) PRIMARY KEY, rodzaj_statku ENUM('sneki','skeidy','drakary'), data_wodowania DATE, max_ladownosc INT UNSIGNED);

3.
INSERT INTO statek VALUES("Terror", 3, '1812.06.29',330 ),
("Erebus", 3, '1826.06.07',372 );

4.
ALTER TABLE postac ADD COLUMN funkcja VARCHAR(60);

5.
UPDATE postac SET funkcja = "Kapitan" WHERE nazwa = "Bjorn";

6.
ALTER TABLE postac ADD COLUMN nazwa_statku VARCHAR(40) NOT NULL;
ALTER TABLE postac ADD FOREIGN KEY(nazwa_statku) REFERENCES statek(nazwa_statku);
/*Nie wiem czemu nie działa
błąd:
 ALTER TABLE postac ADD FOREIGN KEY(nazwa_statku) REFERENCES statek(nazwa_statku);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`pliszkaa`.`#sql-116_38f`, CONSTRA      INT `postac_ibfk_1` FOREIGN KEY (`nazwa_statku`) REFERENCES `statek` (`nazwa_statku`))
*/

7.
UPDATE postac SET nazwa_statku="Terror" WHERE nazwa="Czarno brody";
UPDATE postac SET nazwa_statku="Terror" WHERE nazwa="Drozd";
UPDATE postac SET nazwa_statku="Terror" WHERE nazwa="Pacan";
UPDATE postac SET nazwa_statku="Terror" WHERE nazwa="Bjorn";
UPDATE postac SET nazwa_statku="Erebus" WHERE nazwa="Lech";
UPDATE postac SET nazwa_statku="Erebus" WHERE nazwa="Gabri";
UPDATE postac SET nazwa_statku="Erebus" WHERE nazwa="Bojan";

8. 
DELETE FROM izba WHERE adres_budynku = 21;

9.DROP TABLE izba;














