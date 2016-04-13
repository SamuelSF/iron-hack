function decoder(words){
    secretMessage = ""
        for (var i = 0; i < words.length; i++){
            secretMessage += (words[i].charAt(i % 5));
        }
        return secretMessage;
}

var words = [
    "dead",
    "bygone",
    "landing",
    "cheaply",
    "assumed",
    "incorrectly",
    "attention",
    "agent"
];

console.log(decoder(words));