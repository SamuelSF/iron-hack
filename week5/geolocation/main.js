$(document).on("ready", function(){
    if("geolocation" in navigator){
        console.log("geolocation is available");

        navigator.geolocation.getCurrentPosition(displayPosition, showPositionError );
    }
    else {
        alert("geolocation IS NOT available")
    }
});

function displayPosition(data){
    console.log("Got position!");
    console.log(data);
    $(".js-set-latitude").text(data.coords.latitude);
    $(".js-set-longitude").text(data.coords.longitude);
    $("body").append(`<img src="
        http://maps.googleapis.com/maps/api/staticmap?size=800x800&zoom=18&center=${data.coords.latitude},${data.coords.longitude}">`);
}

function showPositionError(error){
    console.log("Failed to get position :( ");
    console.log(error);
}