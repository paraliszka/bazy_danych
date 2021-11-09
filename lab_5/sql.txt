Zadanie 1.
a)
	*	SELECT * FROM postac ORDER BY data_ur ASC;
	*	DELETE FROM postac WHERE id_postaci=8 OR id_postaci=5;
b)
	*	ALTER TABLE walizka DROP FOREIGN KEY walizka_ibfk_1;  
	*	ALTER TABLE przetwory DROP FOREIGN KEY przetwory_ibfk_1;  
	*	ALTER TABLE przetwory DROP FOREIGN KEY przetwory_ibfk_2;  

	*	ALTER TABLE postac DROP COLUMN id_postaci;
Zadanie 2.
a)
	*	ALTER TABLE postac ADD COLUMN pesel char(11);
UPDATE postac SET pesel=12346 WHERE wiek=45;
UPDATE postac SET pesel=12347 WHERE wiek=18;
UPDATE postac SET pesel=12348 WHERE wiek=88;
UPDATE postac SET pesel=12349 WHERE wiek=24;
UPDATE postac SET pesel=12351 WHERE wiek=32;
UPDATE postac SET pesel=12352 WHERE wiek=42;
	*	ALTER TABLE postac ADD PRIMARY KEY (pesel);
	
/*nie zrobiłem z + id_postaci poniewaz usunąłem przez przypadek wcześniej id_postaci już*/
b)
ALTER TABLE postac MODIFY COLUMN rodzaj ENUM('wiking','ptak','kobieta','syrena');

/*czym jest REGEXP w sql element dotyczący programowania/wsl idk? wyrażenia regularne
i czym jest check() w sql*/
c)
INSERT INTO postac VALUES("Lech",1,'1654.12.5',56)
INSERT INTO postac VALUES("Gertruda Nieszcze",3,'1254.12.5',400," "," ",99999);
/*punktu c nie zrobiłem bo coś się jebało idk poprawisz teraz dla mnie później dla ciebie teraz XD*/

/*nie dodałeś debilu primary key do tabeli postac xDDD zrób to bo XD*/ 

/*do przyszłych zajęć rozwiązać i wrzucić na githuba ez xD*/
Zadanie 3.
a)
UPDATE postac SET nazwa_statku='Terror' WHERE nazwa='%a%' AND rodzaj='1';
b)
UPDATE statek SET max_ladownosc=0.7*max_ladownosc WHERE data_wodowania>'1901.01.01';
c)
ALTER TABLE postac ADD COLUMN wiek_1000 int if AFTER wiek
/*nie rozumiem polecenia
ustaw warunek sprawdzający czy wiek postaci nie jest większy od 1000*/
Zadanie 4.
a)
INSERT INTO postac VALUES("LOKO",4,'0000.00.00',999,"waż"," ",00000);
b)
CREATE TABLE Marynarz LIKE postac;
INSERT INTO Marynarz SELECT * FROM postac WHERE nazwa_statku='Terror' OR nazwa_statku='Erebus';
c)
/*IDK*/
