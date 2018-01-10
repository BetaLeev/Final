$(document).ready(function(){
	// setInterval(banner,8000);

})

var index = 1;
// function banner(){
// 	$("#banner").attr("src","../img/"+index+".jpg");
// 	index ++;
// 	if (index >2) {
// 		index = 1;
// 	}
//
// }

$("#skill").click(function(){
    $("#techi").slideToggle()
});
$(".test").mouseenter(function(){
	$("#techi").show();
})
$(".test").mouseleave(function(){
	$("#techi").hide();
})

var nowTime;
function Time(){
	var time = new Date();
	var span_time = document.getElementById('time');
	span_time.innerHTML = time
}
setInterval(Time,1000)

