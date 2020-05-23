// Initialisierung Express
const express = require("express");
const app = express();


//Initialisiereung body-parser
const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({ extended: true }));

// Initialisierung EJS
app.engine("ejs", require("ejs").__express);
app.set("view engine", "ejs");

// Initialisierung sqlite Datenbank

const DATABASE = "benutzer_daten.db";
const sqlite3 = require("sqlite3").verbose();
const db = new sqlite3.Database(DATABASE);

//Server starten
app.listen(3000, function () {
    console.log("listening in 3000")
})


//Post-Request fügt benutzer in Tabelle
app.post("/neuerbenutzer", function (req, res) {
    const param_email = req.body.email;
    const param_benutzername = req.body.benutzername;
    const param_passwort = req.body.passwort;

    db.run(
        `INSERT INTO benutzer_daten(email,benutzername,passwort) VAlUES("${param_email }","${param_benutzername }",${param_passwort})`,
        function (err) {

            res.redirect("/benutzerliste")
        }
    );
});

//Anzeige der benutzer
app.get("/benutzerliste", function (req, res) {
    db.all(`SELECT * FROM benutzer_daten`,
        function (err, rows) {
            res.render("benutzerliste", { "benutzer": rows });

        });
});

//Regestrieren
app.get( "/registrieren", function (req, res) {
    res.sendFile(__dirname + "/views/registrieren.html")
});

app.post('/reg', function (req, res) {
    const param_email = req.body.email;
    const param_benutzername = req.body.benutzername;
    const param_passwort = req.body.passwort;
    const passwort_repeat = req.body["passwort_repeat"];
   
   
    if (passwort_repeat==param_passwort && param_email.includes("@")) {

        db.all(` SELECT * FROM benutzer_daten WHERE benutzername="${param_benutzername}" OR email="${param_email}"`, //Checkt ob es den benutzer gibt
        function (err, rows) { 
            if (rows.length > 0) {  res.render('fehler_registrierung', { email: req.body["email"], passwort: req.body["passwort"], passwort_repeat:["passwort_repeat"] }); } 
            else db.run(
                `INSERT INTO benutzer_daten(email,benutzername,passwort) VAlUES('${param_email }','${param_benutzername }','${param_passwort}')`,
                function (err) {
        
                    res.render('registrierung_erfolg', { email: req.body["email"], benutzername: req.body["benutzername"] });
                }
            );
        
        });
    }
    else  res.render('fehler_registrierung', { email: req.body["email"], passwort: req.body["passwort"], passwort_repeat:["passwort_repeat"] });
});

//Einloggen

app.get( "/login", function (req, res) {
    res.sendFile(__dirname + "/views/login.html")
});


app.post('/pruefung', function (req, res) {
    const param_benutzername = req.body["benutzername"];
    const param_passwort = req.body["passwort"];
    db.all(` SELECT * FROM benutzer_daten WHERE benutzername="${param_benutzername}" AND passwort="${param_passwort}"`, 
    function (err, rows) { 
        console.log(rows)
        if (rows.length > 0) {  res.render('benutzer_daten', { benutzername: req.body["benutzername"] }); } 
        else res.sendFile(__dirname+"/views/fehler.html")
    
    });


});

app.use("/static", express.static('static'));


//Chatfenster - Ab hier kopieren für andere Kategorien
//philosphen
app.post('/philosophers', function(req,res){
    res.sendFile(__dirname+"/views/chatroom_philosophers.html");
});

app.get('/Frage_philosophen', function(req,res){
    const id_answer= Math.floor((Math.random() * 5) + 1);
    const keyword = req.query.Frage;
    

    db.all(` SELECT * FROM philosophers WHERE keyword="${keyword}" AND id="${id_answer}"`, 
    function (err, rows) {         
        res.send(JSON.stringify(rows));
    });

});

//musiker
app.post('/musicians', function(req,res){
    res.sendFile(__dirname+"/views/chatroom_Musiker.html");
});

app.get('/Frage_musiker', function(req,res){
    const id_answer= Math.floor((Math.random() * 5) + 1);
    const keyword = req.query.Frage;
    

    db.all(` SELECT * FROM musicians WHERE keyword="${keyword}" AND random_id="${id_answer}"`, 
    function (err, rows) {         
        res.send(JSON.stringify(rows));
    });

});

//propheten
app.post('/prophets', function(req,res){
    res.sendFile(__dirname+"/views/chatroom_Propheten.html");
});

app.get('/Frage_propheten', function(req,res){
    const id_answer= Math.floor((Math.random() * 5) + 1);
    const keyword = req.query.Frage;
    
    const frage = req.query.Frage;
    res.send(frage);

    db.all(` SELECT * FROM prophets WHERE keyword="${keyword}" AND random_id="${id_answer}"`, 
    function (err, rows) {         
        res.send(JSON.stringify(rows));
    });

});



//movie_charakters
app.post('/movie_charakters', function(req,res){
    res.sendFile(__dirname+"/views/chatroom_film.html");
});

app.get('/Frage_film', function(req,res){
    const id_answer= Math.floor((Math.random() * 5) + 1);
    const keyword = req.query.Frage;
    

    db.all(` SELECT * FROM movie_characters WHERE keyword="${keyword}" AND random_id="${id_answer}"`, 
    function (err, rows) {         
        res.send(JSON.stringify(rows));
    });

});




//Anzeige der philosophen
app.get("/philosophen", function (req, res) {
    db.all(`SELECT * FROM philosophers`,
        function (err, rows) {
            res.render("p", { "philosophers": rows });

        });
});