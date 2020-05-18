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
})

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
})


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


app.post('/philosophers', function(req,res){
    res.sendFile(__dirname+"/views/chatroom_philosophers.html");
})

app.post('/Frage_philosophen', function(req,res){
    var param_frage = req.body["Frage"].toString()
    const id_answer= Math.floor((Math.random() * 6) + 1);
    const keyword = keyword_finder(param_frage);
    db.all(` SELECT * FROM philosophers WHERE keyword="${keyword}" AND id="${id_answer}"`, 
    function (err, rows) { 
        console.log(rows)
    });

})


//Trennt den satz und sucht nach stichwörtern

function keyword_finder (param_frage) {
    var split_string = param_frage.split(" ")
    var keyword="null"
    console.log(split_string)
    const keywords= ["Tod","Liebe","Sinn","Arbeiten","Bildung","Hoffnung"]
    for (i=0;i<split_string.length;i++){
        console.log(split_string[i])
        for (j=0;j<keywords.length;j++){
            console.log(keywords[j])
          if (split_string[i]==keywords[j]){
              keyword=keywords[j]
          }
    }
} 
return keyword
}

//Anzeige der philosophen
app.get("/philosophen", function (req, res) {
    db.all(`SELECT * FROM philosophers`,
        function (err, rows) {
            res.render("p", { "philosophers": rows });

        });
});
  
/*app.post('/pruefung',function(req,res){
    const param_benutzername = req.body.benutzername;
    const param_passwort = req.body.passwort;
    db.each(`SELECT * FROM benutzer_daten WHERE benutzername='${param_benutzername}' AND passwort='${param_passwort}'`, (err, row) => { 
        const benutzername= row.benutzername;
        const passwort=row.passwort;
        if (benutzername == param_benutzername && passwort == param_passwort) {
            res.render('benutzer_daten', { benutzername: req.body["benutzername"] });
        }
        else res.sendFile(__dirname+"/views/fehler.html")



}
)})*/




