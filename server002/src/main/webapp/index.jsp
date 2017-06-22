<html>
<body>
<h2>Hello World!</h2>
<span id="msg"></span>
</body>

<script>
    var contextPath = "${pageContext.request.contextPath}";
    var xmlHttp;

    function createXmlHttp() {
        if (window.XMLHttpRequest)
            xmlHttp = new XMLHttpRequest();
        else
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }

    function showMessage() {
        createXmlHttp();
        xmlHttp.open("GET", contextPath + "/hello");
        xmlHttp.onreadystatechange = showMsgCallback;
        xmlHttp.send(null);
    }

    function showMsgCallback() {
        if (xmlHttp.readyState == 4) {
            if (xmlHttp.status == 200) {
                document.getElementById("msg").innerHTML = xmlHttp.responseText;
                console.info(xmlHttp.responseText)
            }
        }
    }

    showMessage();
</script>
</html>
