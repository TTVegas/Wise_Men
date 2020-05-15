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
);

INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Tod", 1, "Gandalf Der Graue/Weiße", "Der Tod ist nur ein weiterer Weg, den wir alle gehen müssen. Der graue Regenvorhang dieser Welt zieht sich zurück. Und dann siehst du es… Weiße Strände. Und dahinter ein fernes, grünes Land unter einer rasch aufgehenden Sonne.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Tod", 2, "Albus Dumbledore", "Schließlich ist der Tod für den gut vorbereiteten Geist nur das nächste große Abenteuer.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Tod", 3, "Sheev Palpatine", "Darth Plagueis war ein dunkler Lord der Sith. So mächtig und so weise, dass er die Macht nutzen konnte, um die Midiclorianer zu beeinflussen, dass sie Leben erschufen. Er hatte ein so ungeheures Wissen um die dunkle Seite, dass er sogar dazu in der Lage war, das Sterben derjenigen, welche ihm nahestanden, verhindern zu können. Er wurde unglaublich mächtig. Das einzige, wovor er sich noch fürchtete, seine Macht zu verlieren. Was letztendlich natürlich auch geschah. Unglücklicherweise hatte er seinem Schüler alles beigebracht, was er wusste. Kurz darauf wurde er von seinem Schüler im Schlaf ermordet. Was für eine Ironie. Er konnte andere vor dem Tod retten, aber sich selbst konnte er nicht retten.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Tod", 4, "Der Doctor", "Am Ende sind wir alle Geschichten. Mach eine gute draus, ja?");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Tod", 5, "Dr. Henry Jones, Jr.", "Haha, versuchst du mir damit Angst zu machen? Ich glaube nicht an Magie und irgendwelchen Hokuspokus. Ich bin hinter einem Schatz von unglaublicher archäologischer Bedeutung her und du erzählst mir was vom schwarzen Mann. Außerdem weißt du ja was für ein vorsichtiger Bursche ich bin.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Sinn", 1, "Gandalf Der Graue/Weiße", "Du musst nur entscheiden, was du mit der Zeit anfangen willst, die dir gegeben ist.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Sinn", 2, "Albus Dumbledore", "Musik, ein Zauber, der alles in den Schatten stellt, was wir hier treiben");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Sinn", 3, "Sheev Palpatine", "Unbegrenzte Macht!");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Sinn", 4, "Der Doctor", "Wenn Du ein Kind bist, erzählen sie dir, es ginge darum… Werde erwachsen, bekomme einen Job, heirate, bekomme ein Kind und das war’s. Aber die Wahrheit ist, die Welt ist so viel seltsamer als das. Sie ist so viel dunkler. Und so viel verrückter. Und so viel besser.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Sinn", 5, "Dr. Henry Jones, Jr.", "Reichtum und Ruhm. Reichtum und unendlicher Ruhm.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Bildung", 1, "Gandalf Der Graue/Weiße", "Derjenige, der etwas zerbricht, um herauszufinden, was es ist, hat den Pfad der Weisheit verlassen.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Bildung", 2, "Albus Dumbledore", "Verstehen ist der erste Schritt, um etwas anzunehmen. Und nur wenn er es angenommen hat, kann er sich erholen. ");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Bildung", 3, "Sheev Palpatine", "Wenn sich jemand entschließt, das große Mysterium verstehen zu wollen, dann muss er all seine Aspekte studieren.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Bildung", 4, "Der Doctor", "Weißt Du, die sehr Mächtigen und die sehr Dummen haben eines gemeinsam: Sie ändern nicht ihre Meinung, damit sie zu den Fakten passt. Sie ändern die Fakten, damit sie zu ihrer Meinung passen.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Bildung", 5, "Dr. Henry Jones, Jr.", "Bei den Ugha hat das Wort Gold die Bedeutung von Schatz, aber ihr Schatz war nicht Gold sondern Erkenntnis.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Liebe", 1, "Gandalf Der Graue/Weiße", "Im Zweifelsfall sollte man immer seiner Nase folgen.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Liebe", 2, "Albus Dumbledore", "In dieser chaotischen, emotionalen Welt wird es nie eine perfekte Antwort geben. Perfektion ist der Menschheit nicht gegeben und der Zauberei auch nicht. Sei ehrlich zu denen, die du liebst, und zeige deinen Schmerz.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Liebe", 3, "Sheev Palpatine", "Wenn du dich nicht bekehren lässt, dann werde ich dich vernichten!");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Liebe", 4, "Der Doctor", "Beißen ist großartig. Es ist wie küssen – nur, dass es einen Gewinner gibt.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Liebe", 5, "Dr. Henry Jones, Jr.", "Archäologie ist die Suche nach Fakten. Dr. Tyries Philosophiekurs ist am Ende des Ganges.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Arbeiten", 1, "Gandalf Der Graue/Weiße", "Die Angelegenheiten dort müsst ihr selbst regeln; das solltet ihr inzwischen gelernt haben. Versteht ihr immer noch nicht? Meine Zeit ist um. Es ist nicht mehr meine Sache, für andere alles zu richten oder ihnen dabei zu helfen.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Arbeiten", 2, "Albus Dumbledore", "Es ist der Wert der Überzeugung, der den Erfolg ausmacht.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Arbeiten", 3, "Sheev Palpatine", "Wir werden deine Karriere mit großem Interesse verfolgen…");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Arbeiten", 4, "Der Doctor", "Mach, was ich tue. Bleib dran und gebe vor, es sei ein Plan.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Arbeiten", 5, "Dr. Henry Jones, Jr.", "Um ein guter Archäologe zu werden, müssen Sie aus der Bibliothek raus!");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Hoffnung", 1, "Gandalf Der Graue/Weiße", "Ich finde, es sind die kleinen Dinge, alltägliche Taten von gewöhnlichen Leuten, die die Dunkelheit auf Abstand halten. Einfache Taten aus Güte und Liebe.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Hoffnung", 2, "Albus Dumbledore", "Glaubt mir, dass man Glück und Zuversicht selbst in Zeiten der Dunkelheit zu finden vermag. Man darf nur nicht vergessen ein Licht leuchten zu lassen. ");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Hoffnung", 3, "Sheev Palpatine", "Die dunkle Seite der Macht ist der Pfad zu mannigfaltigen Fähigkeiten, welche manche von uns für unnatürlich halten.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Hoffnung", 4, "Der Doctor", "Das Universum ist groß. Es ist gigantisch und kompliziert und lächerlich. Und manchmal, sehr selten, passieren unmögliche Dinge einfach und wir nennen sie Wunder.");
INSERT INTO movie_characters(keyword, id, name, quote) VALUES("Hoffnung", 5, "Dr. Henry Jones, Jr.", "Nur der bußfertige Mann kann bestehen.");

CREATE TABLE prophets(
     keyword PRIMARY KEY TEXT NOT NULL,/*1-6*/
     random_id INTEGER, /* 1-6*/
     name TEXT NOT NULL,
     quote TEXT NOT NULL,
);

INSERT INTO prophets(keyword, id, name, quote) VALUES("Tod", 1, "Jesus von Nazareth", "Ich bin die Auferstehung und das Leben. Wer an mich glaubt, der wird leben, ob er gleich stürbe; und wer da lebt und glaubt an mich, der wird nimmermehr sterben.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Tod", 2, "Mohammed", "Stellt euch nicht krank, sonst werdet ihr krank, und grabt euch nicht euer Grab, sonst sterbt ihr.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Tod", 3, "Siddhartha Gautama", "Wenn das stete Entstehen und Vergehen alles Körperlichen wie Geistigen gesehen wird, entsteht wahre Freude. Hier liegt das Reich des Todlosen.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Tod", 4, "Elon Musk", "Ich würde gerne auf dem Mars sterben. Aber nicht bei der Landung.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Tod", 5, "Aleister Crowley", "Wir müssen das Leben erobern, indem wir es in vollen Zügen leben. Und dann können wir dem Tod mit einem gewissen Prestige begegnen.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Sinn", 1, "Jesus von Nazareth", "Das ist mein Gebot, dass ihr einander liebt, wie ich euch liebe.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Sinn", 2, "Mohammed", "Der vorzüglichste Mensch ist derjenige, der alle seinesgleichen liebt und ihnen Gutes tut ohne Unterschied, ob sie gut seien oder böse.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Sinn", 3, "Siddhartha Gautama", "Das Leben eingehend betrachtend, ist es möglich, alles, was ist, klar zu sehen. Von nichts versklavt, ist es möglich, von allen Begierden abzulassen. Das Ergebnis ist ein Leben voller Freude und Frieden. Das heißt, wirklich allein zu leben.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Sinn", 4, "Elon Musk", "Denk immer darüber nach, wie du Dinge besser machen kannst, und hinterfrage dich.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Sinn", 5, "Aleister Crowley", "Tue, was du willst, soll sein das ganze Gesetz. ");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Bildung", 1, "Jesus von Nazareth", "Ihr sollt euch nicht Lehrer nennen lassen; denn einer ist euer Lehrer: Christus.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Bildung", 2, "Mohammed", "Wer auf der Suche nach Wissen hinauszieht, der ist auf dem Wege Allahs, bis er wiederkehrt.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Bildung", 3, "Siddhartha Gautama", "Glaubt den Schriften nicht, glaubt den Lehrern nicht, glaubt auch mir nicht. Glaubt nur das, was ihr selbst sorgfältig geprüft und als euch selbst und zum Wohle dienend anerkannt habt.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Bildung", 4, "Elon Musk", "Wie entsteht innovatives Denken? Es ist eine Geisteshaltung, für die man sich entscheiden muss.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Bildung", 5, "Aleister Crowley", "Ich bin sicherlich der Meinung, dass Genie erworben werden kann oder alternativ, dass es ein fast universeller Besitz ist.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Liebe", 1, "Jesus von Nazareth", "Es gibt keine größere Liebe, als wenn einer sein Leben für seine Freunde hingibt.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Liebe", 2, "Mohammed", "Glaubst du, deinen Schöpfer zu lieben? Liebe zuerst deinen Mitmenschen.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Liebe", 3, "Siddhartha Gautama", "Der Mensch leidet, weil er Dinge zu besitzen und zu behalten begehrt, die ihrer Natur nach vergänglich sind.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Liebe", 4, "Elon Musk", "Die einzige Sache, die wirklich Sinn ergibt, ist das Streben nach einer größeren kollektiven Aufklärung.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Liebe", 5, "Aleister Crowley", "Liebe ist eine Tugend; sie wird stärker und reiner und weniger egoistisch, indem sie auf das angewendet wird, was Du verabscheust.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Arbeiten", 1, "Jesus von Nazareth", "Ich bin der Weinstock, ihr seid die Reben. Wer in mir bleibt und ich in ihm, der bringt viel Frucht; denn ohne mich könnt ihr nichts tun.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Arbeiten", 2, "Mohammed", "Bezahle den Arbeiter, bevor sein Schweiß getrocknet ist.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Arbeiten", 3, "Siddhartha Gautama", "Ruhe und Muße sind für Geld nicht zu kaufen.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Arbeiten", 4, "Elon Musk", "Wenn etwas wichtig genug ist, dann mach es, auch wenn alle Chancen gegen dich stehen.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Arbeiten", 5, "Aleister Crowley", "Sitz still. Hör auf zu denken. Halte den Mund. Geh raus!");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Hoffnung", 1, "Jesus von Nazareth", "Ich bin in die Welt gekommen als ein Licht, damit, wer an mich glaubt, nicht in der Finsternis bleibe.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Hoffnung", 2, "Mohammed", "Allah gehört die Welt, und er gibt sie den Mutigen zum Erbe.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Hoffnung", 3, "Siddhartha Gautama", "Verweile nicht in der Vergangenheit, träume nicht von der Zukunft. Konzentriere dich auf den gegenwärtigen Moment.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Hoffnung", 4, "Elon Musk", "Wenn du morgens aufwachst und denkst, dass die Zukunft besser sein wird, ist das ein schöner Tag. Ansonsten ist er es nicht.");
INSERT INTO prophets(keyword, id, name, quote) VALUES("Hoffnung", 5, "Aleister Crowley", "Ich möchte keine Herde zeugen, kein Fetisch von Narren und Fanatikern sein oder der Begründer eines Glaubens, dessen Anhänger zufrieden sind, meine Meinung zu wiederholen. Ich möchte, dass jeder Mann seinen eigenen Weg durch den Dschungel geht.");


CREATE TABLE musicians(
     keyword PRIMARY KEY TEXT NOT NULL,/*1-6*/
     random_id INTEGER, /* 1-6*/
     name TEXT NOT NULL,
     quote TEXT NOT NULL,
);

INSERT INTO musicians(keyword, id, name, quote) VALUES("Tod", 1, "Jimmy Hendrix", "Musik ist Religion für mich, auch im Jenseits wird es Musik geben.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Tod", 2, "Ozzy Osbourne", "Ich höre immer wieder dieses verfickte Ding, dass Schusswaffen keine Leute töten, sondern Leute andere Leute töten. Wenn das der Fall ist, warum geben wir Leuten Schusswaffen, wenn sie in den Krieg ziehen? Warum schicken wir nicht einfach die Leute?");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Tod", 3, "Kurt Cobain", "Wenn du stirbst, bist du vollkommen glücklich und deine Seele lebt irgendwo weiter. Ich habe keine Angst zu sterben. Vollkommener Frieden nach dem Tod, jemand anderes zu werden ist die beste Hoffnung, die ich habe.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Tod", 4, "Frank Zappa", "Es gibt keine Hölle. Es gibt nur Frankreich.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Tod", 5, "Janis Joplin", "Je mehr du lebst, desto weniger stirbst du.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Sinn", 1, "Jimmy Hendrix", "Ich bin derjenige, der sterben muss, wenn der Zeitpunkt zum Sterben für mich gekommen ist. Lasst mich bitte auch so leben, wie ich will.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Sinn", 2, "Ozzy Osbourne", "Vielleicht ist es noch nicht zu spät, zu lernen wie man liebt, und zu vergessen, wie man hasst.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Sinn", 3, "Kurt Cobain", "Niemand stirbt als Jungfrau… das Leben fickt uns alle.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Sinn", 4, "Frank Zappa", "Erwarte nichts im Leben. Wenn du das tust, dann ist alles, was du noch bekommst, ein Bonus.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Sinn", 5, "Janis Joplin", "Du musst es dir besorgen, solange du kannst.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Bildung", 1, "Jimmy Hendrix", "Wissen spricht, doch Weisheit hört zu.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Bildung", 2, "Ozzy Osbourne", "Ich bin ein natürlicher Wahnsinniger, und Wahnsinnige brauchen keine Ausbildung, sie sind es einfach.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Bildung", 3, "Kurt Cobain", "Die Pflicht der Jugend ist es, Korruption anzufechten.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Bildung", 4, "Frank Zappa", "Geh zum College, wenn du flachgelegt werden willst. Wenn du was lernen willst, dann geh in die Bibliothek.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Bildung", 5, "Janis Joplin", "Intellektuell zu sein schafft viele Fragen und keine Antworten.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Liebe", 1, "Jimmy Hendrix", "Wenn die Macht der Liebe die Liebe zur Macht übersteigt, erst dann wird die Welt endlich wissen, was Frieden heißt.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Liebe", 2, "Ozzy Osbourne", "Ich liebe euch alle. Ich liebe euch mehr als das Leben selbst, aber ihr seid alle verfickt wahnsinnig.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Liebe", 3, "Kurt Cobain", "Mein Herz ist zerbrochen, aber ich habe etwas Kleber.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Liebe", 4, "Frank Zappa", "Es gibt mehr Liebeslieder als alles andere. Wenn Lieder dich dazu bringen könnten, etwas zu tun, würden wir uns alle lieben.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Liebe", 5, "Janis Joplin", "Wenn ich singe, fühle ich mich, als wäre man das erste Mal verliebt. Es ist mehr als Sex. Es ist dieser Punkt, den zwei Menschen erreichen können, um es wirklich Liebe zu nennen, wenn du wirklich jemanden zum ersten Mal berührst, aber es ist gigantisch, multipliziert mit dem ganzen Publikum. ");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Arbeiten", 1, "Jimmy Hendrix", "Es muss alles von innen kommen, denke ich.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Arbeiten", 2, "Ozzy Osbourne", "Früher wurde ich wütend darüber, dass Leute mich nicht verstehen, aber jetzt habe ich daraus eine Karriere gemacht.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Arbeiten", 3, "Kurt Cobain", "Ich mag es, mich zu beschweren und nichts zu tun, um die Dinge zu verbessern.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Arbeiten", 4, "Frank Zappa", "Kunst ist, aus Nichts etwas zu machen und es zu verkaufen.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Arbeiten", 5, "Janis Joplin", "Du bist, womit du dich zufriedengibst. Du bist nur das, womit du dich zufriedengibst.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Hoffnung", 1, "Jimmy Hendrix", "Manchmal möchtest du die Gitarre aufgeben, du wirst die Gitarre hassen. Aber wenn du dranbleibst, wirst du belohnt werden.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Hoffnung", 2, "Ozzy Osbourne", "Was schiefgehen kann, wird schiefgehen.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Hoffnung", 3, "Kurt Cobain", "Danke für die Tragik. Ich brauche sie für meine Kunst.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("Hoffnung", 4, "Frank Zappa", "Je mehr du dich davon lossagen kannst, wie schlimm die Dinge wirklich sind, desto weniger wird es dich kümmern… und dann wird’s nur noch schlimmer.");
INSERT INTO musicians(keyword, id, name, quote) VALUES("hoffnung", 5, "Janis Joplin", "Du kannst dein Jetzt zerstören, wenn du dir Sorgen über morgen machst.");



