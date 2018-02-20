
$(document).ready(function(){

    $("#load_img").attr("src", "../img/load.gif");

    var image = new Image();

    image.src = "../img/1.jpg"

    image.onload = function () {
        $("#load_img").attr("src", this.src);
    }

    function goTop() {
        $('html,body').animate({'scrollTop': 0}, 600);
    }
});

