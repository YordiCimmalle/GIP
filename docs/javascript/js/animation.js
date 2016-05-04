$('body').css('display', 'none').fadeIn(2000, 'swing');

$(document).ready(function(){
    $(".beschrijving").hover(function(){
        $(this).css("color", "#BAB6B6");
        }, function(){
        $(this).css("color", "#fff");
    });
});

$(document).ready(function(){
    $("#button").hover(function(){
        $(this).css("background-color", "#008CBA");
        }, function(){
        $(this).css("background-color", "#01C0FF");
    });
});
