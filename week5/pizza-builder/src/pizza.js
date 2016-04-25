// Write your Pizza Builder JavaScript in this file.
$(".pep").hide();
$(".green-pepper").hide();
$(".mushroom").hide();
$(".pep-list").hide();
$(".mush-list").hide();
$(".green-list").hide();
$(".sauce-list").hide();
$(".gluten-list").hide();

function pepperonni_cb(){
    $(".pep").toggle();
    $(".btn-pepperonni").toggleClass("active");
    $(".pep-list").toggle();
    change_total()
}

function green_pepper_cb(){
    $(".green-pepper").toggle();
    $(".btn-green-peppers").toggleClass("active");
    $(".green-list").toggle();
    change_total()
}

function mushroom_cb(){
    $(".mushroom").toggle();
    $(".btn-mushrooms").toggleClass("active");
    $(".mush-list").toggle();
    change_total()
}

function sauce_cb(){
    $(".sauce").toggleClass("sauce-white");
    $(".btn-sauce").toggleClass("active");
    $(".sauce-list").toggle();
    change_total();
}

function crust_cb(){
    $(".crust").toggleClass("crust-gluten-free");
    $(".btn-crust").toggleClass("active");
    $(".gluten-list").toggle();
    change_total();
}

function change_total(){
    var price = 10;
    if ($(".btn-crust").hasClass("active")){
        price += 5;
    }
    if ($(".btn-pepperonni").hasClass("active")){
        price += 1
    }
    if ($(".btn-sauce").hasClass("active")){
        price += 3
    }
    if ($(".btn-mushrooms").hasClass("active")){
        price += 1
    }
    if ($(".btn-green-peppers").hasClass("active")){
        price += 1
    }
    $(".total").text("$ " + price);
}

$(".btn-pepperonni").on("click", pepperonni_cb);
$(".btn-green-peppers").on("click", green_pepper_cb);
$(".btn-mushrooms").on("click", mushroom_cb);
$(".btn-sauce").on("click", sauce_cb );
$(".btn-crust").on("click", crust_cb);