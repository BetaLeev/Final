
$(document).ready(function(){
    // $("#user").parent.addClass("dropdown");
    // var userHtml = $("#user").html();
    // if (userHtml != "Sign In" ){
    // //     userHtml = "Sign In";
    // alert($("#user").className);
    // $("#user").attr("href","page/Into/login/login.jsp");
    // // }
    // alert($("#user").className);


    $("#sidetop").click(function () {
        $('html,body').animate({'scrollTop': 0}, 600);
    });



    $("#load_img").attr("src", "../img/load.gif");

    var image = new Image();

    image.src = "../img/1.jpg";

    image.onload = function () {
        $("#load_img").attr("src", this.src);

    }


});


