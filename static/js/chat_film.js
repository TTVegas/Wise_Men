var btn = document.getElementById("btn_frage");
var chatFenster = document.getElementById("chatfenster");
var select = document.getElementById("select");

btn.addEventListener("click", function() {
    
    
    var ourRequest = new XMLHttpRequest();
    
    var keyword = keyword_finder(getSelectedText("select"));

    var link = `http://localhost:3000/Frage_film?Frage=${keyword}`

    

    ourRequest.open('GET', link);

    ourRequest.onload = function() {
        
        var ourData = JSON.parse(ourRequest.responseText);
        renderHTML(ourData);
        };

    ourRequest.send();
});


function renderHTML(data) {
    var htmlString = "";

    for (i = 0; i < data.length; i++) {
        htmlString += "<p><h2>" + data[i].name + " schreibt: </h2><h3>" + data[i].quote + ".</h3></p>";
    }

    chatFenster.insertAdjacentHTML('beforeend', htmlString);
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