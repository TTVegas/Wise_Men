//Benötigten Elemente der Chatrooms(HTML)
var btn = document.getElementById("btn_frage");
var chatFenster = document.getElementById("chatfenster");
var select = document.getElementById("select");

//AJAX Request - Lädt die gestellte Frage und die dazugehörende Antwort auf die Seite. (ohne reload)!
btn.addEventListener("click", function() {
    
    var ourRequest = new XMLHttpRequest();
    
    var keyword = keyword_finder(getSelectedText("select"));
    var frage = getSelectedText("select");

    var link = `http://localhost:3000/Frage_film?Frage=${keyword}`

    

    ourRequest.open('GET', link);

    ourRequest.onload = function() {
        
        var ourData = JSON.parse(ourRequest.responseText);
        renderHTML_frage(frage);
        renderHTML_antwort(ourData);
        };

    ourRequest.send();
});

//Rendert den selected Text und baut es in den Chatroom
function renderHTML_frage(frage) {
    var htmlString_frage = "";
    htmlString_frage += "<div id='chat_frage'><h3>" + "<p>Du:</p></h3><h4>" + frage + "</h4></div>";

    chatFenster.insertAdjacentHTML('beforeend', htmlString_frage);
}

//Rendert den JSON response zu HTML und baut es in den Chatroom
function renderHTML_antwort(data) {
    var htmlString_antwort = "";

    for (i = 0; i < data.length; i++) {
        htmlString_antwort += "<div id='chat_antwort'><p><h3 id='rechtsbuendig'>" + data[i].name + " schreibt: </h3><h4>" + data[i].quote + ".</h4></p></div>";
    }

    chatFenster.insertAdjacentHTML('beforeend', htmlString_antwort);
}

//Erfasst die gestellte Frage und den response Text des Keywordfinders
function getSelectedText(elementId) {
    var elt = document.getElementById(elementId);

    if (elt.selectedIndex == -1)
        return null;

    return elt.options[elt.selectedIndex].text;
}

//Trennt den Satz und sucht nach Stichwörtern
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