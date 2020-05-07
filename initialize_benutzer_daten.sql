/*
Initialisiert die Datenbank, wird aus sqlite3 heraus geladen mit:
> .read initialize_benutzer_daten.sql
*/

CREATE TABLE benutzer_daten (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT NOT NULL,
    benutzername TEXT NOT NULL,
    passwort TEXT NOT NULL
);

INSERT INTO benutzer_daten(email,benutzername,passwort) VALUES("TEETMALTIT@420.de","TEET","MALTIT");

/*TOD,LIEBE,SINN( DES LEBENS),ARBEIT,BILDUNG,HOFFNUNG*/
/*Was ist der Sinn des Lebens?,Warum ist Bildung wichtig?,Wie sieht wahre Liebe aus?,Was denkt ihr über den Tod?,Was motiviert mich zum Arbeiten?,Die Zukunft ist finster wie bekomme ich Hoffnung*/
CREATE TABLE philosophers(
     keyword PRIMARY KEY TEXT NOT NULL,/*1-6*/
     id INTEGER, /* 1-6*/
     name TEXT NOT NULL,
     quote TEXT NOT NULL,


)

CREATE TABLE movie_characters(
     keyword PRIMARY KEY TEXT NOT NULL,/*1-6*/
     random_id INTEGER, /* 1-6*/
     name TEXT NOT NULL,
     quote TEXT NOT NULL,
)

CREATE TABLE prophets(
     keyword PRIMARY KEY TEXT NOT NULL,/*1-6*/
     random_id INTEGER, /* 1-6*/
     name TEXT NOT NULL,
     quote TEXT NOT NULL,
)

CREATE TABLE musicians(
     keyword PRIMARY KEY TEXT NOT NULL,/*1-6*/
     random_id INTEGER, /* 1-6*/
     name TEXT NOT NULL,
     quote TEXT NOT NULL,
)


