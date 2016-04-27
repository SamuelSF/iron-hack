$(document).on("ready", function(){
    $(".js-search").on("click", function(event){
        event.preventDefault();
        var search_term = $(".js-search-term").val();
        console.log(search_term);
        $.ajax({
            url: `https://api.spotify.com/v1/search?type=artist&query=${search_term}`,

            success: handleResult,

            error: function(theError) {
                console.log("It failed. :( ");
                console.log(theError.responseJSON);
            }
        });
    });
});

function handleResult(theData){
    console.log(theData);
    var theArtists = theData.artists.items;
    var html;
    theArtists.forEach(function(artist){
        console.log(typeof(artist.name));
        html = html + `<h1>${artist.name}</h1>`;
        if (artist.images[0]){
            html = html + `<div><img src="${artist.images[0].url}"></div>`;
        }
        html = html + `<button class="js-album-btn" data-artist-id="${artist.id}">Get ${artist.name} Albums</button>`;
    });
    $(".js-artists").html(html);
    $(".js-album-btn").on("click", getAlbums);
}

function getAlbums(event){
    event.preventDefault();
    var btn = event.currentTarget;
    var x = $(btn).data("artist-id");
    console.log(x);
    $.ajax({

        url: `https://api.spotify.com/v1/artists/${x}/albums`,

        success: function(theData){
            console.log(theData);
        },
        error: function(theError){
            console.log("It failed. :( ");
            console.log(theError.responseJSON);
        }
    });
}