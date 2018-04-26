<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 24/02/2018
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>

<head>
	<meta charset="utf-8">
	<%--<script url="jquery-3.2.1.min.js"></script>--%>
	<script>

        function loadXMLDoc() {
            var xmlhttp;
            if (window.XMLHttpRequest) {
                //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
                xmlhttp = new XMLHttpRequest();
            }
            else {
                // IE6, IE5 浏览器执行代码
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            alert(xmlhttp.readyState);

            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    var o, b, c;
                    o = JSON.parse(xmlhttp.responseText);
                    b = o.name;
                    c = o.sex;
                    document.getElementById("myDiv").innerHTML = b + " " + c;
                }
            }
            xmlhttp.open("get", "ajax.json", true);
            xmlhttp.send();
        }
	</script>
</head>
<body>

<div id="myDiv"><h2>使用 AJAX 修改该文本内容</h2></div>
<button type="button" onclick="loadXMLDoc()">修改内容</button>

</body>
</html>
</body>
</html>
