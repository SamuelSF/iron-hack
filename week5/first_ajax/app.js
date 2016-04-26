$(document).on("ready", function() {
    $(".js-characters-ajax").on("click", function() {
        $.ajax({
            url: "https://ironhack-characters.herokuapp.com/characters",

            success: function (theData) {
                console.log("It worked!");
                console.log(theData);
                console.log(theData.length);
                displayCharacters(theData);
            },

            error: function(theError) {
                console.log("It failed. :( ");
                console.log(theError.responseJSON);
            }
        });
    });

    $(".js-create-character").on("click", function(event){
        event.preventDefault();
        var new_character = readForm();
        $.ajax({
            url: "https://ironhack-characters.herokuapp.com/characters",
            data: new_character,
            type: "post",
            success: function(theData){
                console.log(theData);
            },
            error: function (argument) {
                console.log(argument);
            },
            dataType: "json"
        });
    });

});

function readForm(){
    var new_character = {};
    new_character.name = $(".js-name").val();
    new_character.weapon = $(".js-weapon").val();
    new_character.occupation = $(".js-occupation").val();
    new_character.debt = $(".js-debt").prop("checked");
    return new_character;
}

function displayCharacters(characters){
    var chars_html = ""
    characters.forEach(function (oneCharacter){
        var char_html =`
            <li> ${oneCharacter.name}:
                <ul>
                    <li>Occupation: ${oneCharacter.occupation}</li>
                    <li>Weapon: ${oneCharacter.weapon}</li>
                    <li>Debt: ${oneCharacter.debt}</li>
                </ul>
            </li>`
        chars_html = chars_html + char_html
    });
    $(".js-character-list").html(chars_html);
}
