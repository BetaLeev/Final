<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 12/12/2017
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>一元函数微分学</title>
</head>
<body>
<canvas id="myCanvas" width="700" height="400" style="border:1px solid #d3d3d3;">
</canvas>
<script>
    var c=document.getElementById("myCanvas");
   
    var ctx=c.getContext("2d");
    var mi = c.getContext("2d");
	var zhi = c.getContext("2d");
    ctx.font="30px Arial";
    ctx.fillText("c' = 0 (c为常数)",30,50);
    ctx.fillText("(a  )' = a  lna ",30,100);
//    ctx.fillText("(cos x)' = - sin x",30,100);
    ctx.fillText("(x  )' = ax      (a为实数)",350,50);
    ctx.fillText("(e  )' = e",350,100);

    mi.fillText("a",375,35);
    mi.fillText("a - 1",470,35);
    zhi.fillText("x",55,85);
    zhi.fillText("x",140,85);
    zhi.fillText("x",375,85);
    zhi.fillText("x",465,85);
    ctx.fillText("√",500,400);
</script>
</body>
</html>
