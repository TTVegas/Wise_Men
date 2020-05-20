var btn = document.getElementById("btn_frage");
var chatFenster_antwort = document.getElementById("antwort");
var chatFenster_frage = document.getElementById("frage");
var select = document.getElementById("select");

btn.addEventListener("click", function() {
    
    
    var ourRequest = new XMLHttpRequest();
    
    var keyword = keyword_finder(getSelectedText("select"));
    var frage = getSelectedText("select");

    var link = `http://localhost:3000/Frage_philosophen?Frage=${keyword}`

    

    ourRequest.open('GET', link);

    ourRequest.onload = function() {
        
        var ourData = JSON.parse(ourRequest.responseText);
        renderHTML_frage(frage);
        renderHTML_antwort(ourData);
        };

    ourRequest.send();
});


function renderHTML_antwort(data) {
    var htmlString_antwort = "";

    for (i = 0; i < data.length; i++) {
        htmlString_antwort += "<p><h2>" + data[i].name + " schreibt: </h2><h3>" + data[i].quote + ".</h3></p>";
    }

    chatFenster_antwort.insertAdjacentHTML('beforeend', htmlString_antwort);
}

function renderHTML_frage(frage) {
    var htmlString_frage = frage;

    chatFenster_frage.insertAdjacentHTML('beforeend', htmlString_frage);
}


function getSelectedText(elementId) {
    var elt = document.getElementById(elementId);

    if (elt.selectedIndex == -1)
        return null;

    return elt.options[elt.selectedIndex].text;
}


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
              break
          }
    }
} 
return keyword
}