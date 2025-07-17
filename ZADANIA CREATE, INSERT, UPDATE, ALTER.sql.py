CREATE
SCHEMA
firma_budowalana_db;

CREATE
TABLE
IF
NOT
EXISTS
pracownicy(
    pracownik_id
INT
AUTO_INCREMENT
PRIMARY
KEY
NOT
NULL,
pracownik_imie
VARCHAR(255)
NOT
NULL,
pracownik_nazwisko
VARCHAR(255)
NOT
NULL,
pracownik_stanowisko
VARCHAR(255)
);

CREATE
TABLE
IF
NOT
EXISTS
oddziały(
    oddzial_id
INT
AUTO_INCREMENT
PRIMARY
KEY
NOT
NULL,
oddzial_miasto
VARCHAR(255)
NOT
NULL,
oddzial_specjalizacja
VARCHAR(255)
);

CREATE
TABLE
IF
NOT
EXISTS
dostawcy(
    dostawca_id
INT
AUTO_INCREMENT
PRIMARY
KEY
NOT
NULL,
dostawca_nazwa
VARCHAR(255)
NOT
NULL,
dostawca_miasto
VARCHAR(255)
NOT
NULL,
dostawca_koszt
FLOAT
);

CREATE
TABLE
IF
NOT
EXISTS
realizacje(
    realizacja_id
INT
AUTO_INCREMENT
PRIMARY
KEY
NOT
NULL,
realizacja_miasto
VARCHAR(255)
NOT
NULL,
realizacja_koszt
FLOAT,
realizacja_blad
TEXT
);


INSERT
INTO
pracownicy(pracownik_imie, pracownik_nazwisko, pracownik_stanowisko)
VALUES
("Jan", "Kowalski", "murarz"),
("Anna", "Nowak", "tynkarz"),
("Alicja", "Kowalska", "kierownik");

SELECT * FROM
pracownicy;

INSERT
INTO
dostawcy(dostawca_nazwa, dostawca_miasto, dostawca_koszt)
VALUES
("Janex", "Szczecin", 4500),
("Marcinex", "Warszawa", 5000),
("Dawidex", "Katowice", 4000);

SELECT * FROM
dostawcy;

INSERT
INTO
realizacje(realizacja_miasto, realizacja_koszt)
VALUES
("Katowice", 2000000),
("Będzin", 1500000),
("Sosnowiec", 1800000);

SELECT * FROM
realizacje;

SET
SQL_SAFE_UPDATES = 0;

UPDATE
dostawcy
SET
dostawca_nazwa = "Dawidex Corporation"
WHERE
dostawca_nazwa = "Dawidex";

SELECT * FROM
dostawcy;

UPDATE
pracownicy
SET
pracownik_imie = "Dorota"
WHERE
pracownik_imie = "Alicja";

SELECT * FROM
pracownicy;

ALTER
TABLE
realizacje
CHANGE
COLUMN
realizacja_blad
realizacja_miesiac
TEXT;

SELECT * FROM
realizacje;

ALTER
TABLE
realizacje
MODIFY
COLUMN
realizacja_miesiac
VARCHAR(255);

SELECT * FROM
realizacje;

UPDATE
realizacje
SET
realizacja_miesiac = "Maj"
WHERE
realizacja_miesiac
IS
NULL;

SELECT * FROM
realizacje;

DELETE
FROM
realizacje
WHERE
realizacja_miasto = "Sosnowiec";

SELECT * FROM
realizacje;