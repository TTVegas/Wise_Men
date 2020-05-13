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


);

INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Tod", 1, "Friedrich Nietzsche", "Es macht mich glücklich, zu sehen, dass die Menschen den Gedanken an den Tod durchaus nicht denken wollen! Ich möchte gern Etwas dazu tun, ihnen den Gedanken an das Leben noch hundertmal denkenswerter zu machen.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Tod", 2, "Kong Fuzi", "Alle weltlichen Dinge sind nur ein Traum im Frühling. Betrachte den Tod als Heimkehr.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Tod", 3, "Immanuel Kant", "Wer im Gedächtnis seiner Lieben lebt, der ist nicht tot, der ist nur fern; tot ist nur, wer vergessen wird.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Tod", 4, "Platon", "Niemand weiß, was der Tod ist, ob er nicht für den Menschen das größte ist unter allen Gütern. Sie fürchten ihn aber, als wüßten sie gewiß, daß er das größte Übel ist.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Tod", 5, "Aristoteles", "Vom Schlaf zum Tode ist ein kleiner Weg.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Sinn", 1, "Friedrich Nietzsche", "Das Leben ist wert, gelebt zu werden, sagt die Kunst, die schönste Verführerin; das Leben ist wert, erkannt zu werden, sagt die Wissenschaft.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Sinn", 2, "Kong Fuzi", "Das Leben ist ein dorniger Rosenstock und das Glück die Blüte.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Sinn", 3, "Immanuel Kant", "Wir sind nicht auf der Welt, um glücklich zu werden, sondern um unsere Pflicht zu erfüllen.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Sinn", 4, "Platon", "Sich selbst zu kennen, ist die erste aller Wissenschaften.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Sinn", 5, "Aristoteles", "Überall immer nach dem Nutzen zu fragen ziemt sich am Wenigsten für hochsinnige und wahrhaft freie Männer.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Bildung", 1, "Friedrich Nietzsche", "Man belohnt seinen Lehrer schlecht, wenn man immer sein Schüler bleibt.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Bildung", 2, "Kong Fuzi", "Die höchste Stufe menschlicher Bildung ist die vollkommene Ausgeglichenheit der Seele und der maßvolle Lebenswandel.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Bildung", 3, "Immanuel Kant", "Leben wir jetzt in einem aufgeklärten Zeitalter? Die Antwort: Nein, aber wohl in einem Zeitalter der Aufklärung.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Bildung", 4, "Platon", "Lerne zuhören, und du wirst auch von denjenigen Nutzen ziehen, die nur dummes Zeug reden.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Bildung", 5, "Aristoteles", "Was man lernen muß, um es zu tun, das lernt man, indem man es tut.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Liebe", 1, "Friedrich Nietzsche", "Nicht der Mangel der Liebe, sondern der Mangel an Freundschaft macht unglückliche Ehen.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Liebe", 2, "Kong Fuzi", "Was du liebst, lass frei. Kommt es zurück, gehört es dir - für immer.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Liebe", 3, "Immanuel Kant", "Ohne Achtung gibt es keine wahre Liebe.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Liebe", 4, "Platon", "Liebe ist eine schwere Geisteskrankheit.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Liebe", 5, "Aristoteles", "Freundschaft, das ist eine Seele in zwei Körpern.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Arbeiten", 1, "Friedrich Nietzsche", "Der Beruf ist eine Schutzwehr, hinter welche man sich, wenn Bedenken und Sorgen allgemeiner Art einen anfallen, erlaubterweise zurückziehen kann.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Arbeiten", 2, "Kong Fuzi", "Fordere viel von dir selbst und erwarte wenig von anderen. So wird dir viel Ärger erspart bleiben.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Arbeiten", 3, "Immanuel Kant", "Ich kann, weil ich will, was ich muß.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Arbeiten", 4, "Platon", "Freude an der Arbeit lässt das Werk trefflich geraten.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Arbeiten", 5, "Aristoteles", "Der Anfang ist die Hälfte des Ganzen.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Hoffnung", 1, "Friedrich Nietzsche", "Die Hoffnung ist ein viel größeres Stimulans des Lebens als irgendein Glück.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Hoffnung", 2, "Kong Fuzi", "Es ist besser, ein einziges kleines Licht anzuzünden, als die Dunkelheit zu verfluchen.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Hoffnung", 3, "Immanuel Kant", "Es ist nichts beständig als die Unbeständigkeit.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Hoffnung", 4, "Platon", "Einem Kind, das die Dunkelheit fürchtet, verzeiht man gern; tragisch wird es erst, wenn Männer das Licht fürchten.");
INSERT INTO philosophers(keyword, id, name, quote) VALUES ("Hoffnung", 5, "Aristoteles", "Die Hoffnung ist ein Wachtraum.");


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


