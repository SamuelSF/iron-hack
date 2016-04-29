// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.Pokemon = function (pokemonUri) {
    this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.prototype.render = function () {
    console.log("Redering pokemon: #" + this.id);

    $.ajax({
        url: "/api/pokemon/" + this.id,
        success: function (response) {
            self.info = response;

            console.log("Pokemon info:");
            console.log(response);

            $(".js-pkmn-name").text(self.info.name);
            $(".js-pkmn-number").text(self.info.pkdx_id);
            $(".js-pkmn-height").text(self.info.height);
            $(".js-pkmn-weight").text(self.info.weight);
            $(".js-pkmn-hp").text(self.info.hp);
            $(".js-pkmn-attack").text(self.info.attack);
            $(".js-pkmn-defense").text(self.info.defense);
            $(".js-pkmn-speed").text(self.info.speed);
            $(".js-pkmn-sp-attack").text(self.info.sp_atk);
            $(".js-pkmn-sp-defense").text(self.info.sp_def);

            var typeString = "";
            self.info.types.forEach( function(type){
                typeString = typeString + type.name + " ";
            });

            $(".js-pkmn-types").text(typeString);

            var imageUri = self.info.sprites[0].resource_uri;
            imageGetter(imageUri);

            var descPos = self.info.descriptions.length - 2;
            var descriptionUri = self.info.descriptions[descPos].resource_uri;
            console.log("descriptionUri " + descriptionUri);
            descriptionGetter(descriptionUri);

            if (self.info.evolutions.length > 0){
                var evolutionString = "Evolves to: ";
                self.info.evolutions.forEach(function(evolution) {
                    evolutionString = evolutionString + `
                    <button class="js-evolution-btn" data-evolutionuri="${evolution.resource_uri}">
                        ${evolution.to}
                    </button> `
                });
                $(".js-btn-wrapper").html(evolutionString);
                $(".js-evolution-btn").on("click", function(event){
                    var $button = $(event.currentTarget);
                    var pokemonUri = $button.data("evolutionuri");

                    var pokemon = new PokemonApp.Pokemon(pokemonUri);
                    console.log(pokemon);
                    pokemon.render();
                });
            }
            else{
                $(".js-btn-wrapper").empty();
            }

            $(".js-pokemon-modal").modal("show");
        }
    });
};

PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
    var uriSegments = pokemonUri.split("/");
    var secondLast = uriSegments.length - 2;
    return uriSegments[secondLast];
};

$(document).on("ready", function(){
    $(".js-show-pokemon").on("click", function(event){
        var $button = $(event.currentTarget);
        var pokemonUri = $button.data("pokemon-uri");

        var pokemon = new PokemonApp.Pokemon(pokemonUri);
        pokemon.render();
    });
});

function imageGetter(imageUri){
    console.log(imageUri);
    var fullImageUri = "https://pokeapi.co" + imageUri;
    console.log(fullImageUri);
    $.ajax({
        url: fullImageUri,
        success: function(response){
            console.log(response);
            var imageUrl = "https://pokeapi.co" + response.image;
            console.log(imageUrl);
            $(".js-pkmn-image").attr({src: imageUrl});
        }
    });
}

function descriptionGetter(descriptionUri){
    var fullDescriptionUri = "https://pokeapi.co/" + descriptionUri;
    console.log(fullDescriptionUri)
    $.ajax({
        url: fullDescriptionUri,
        success: function(response){
            console.log(response);
            $(".js-pkmn-desc").text(response.description);
        }
    });
}