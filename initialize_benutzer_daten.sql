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
