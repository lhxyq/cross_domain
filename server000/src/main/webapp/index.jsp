<html>
<body>
<h2>Hello World!</h2>
</body>
<script src= "${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script>
    var contextPath = "${pageContext.request.contextPath}";

    //cors跨域
    function corss_domain() {
        $.ajax({
            type: "POST",
            url:  "http://localhost:8081/hello",
            success: function(data) {
                console.log(data)
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log('error ' + textStatus + ' ' + errorThrown);
            }
        });
    }

    //jsonp跨域
    function jsonpC() {
        $.ajax({
            type: "GET",
            dataType: "jsonp",
            jsonp: "callback",
            jsonpCallback: "jsonpCallback",
            url:  "http://localhost:8081/jsonp",
            success: function(data) {
                console.log("ajax success callback: " + data.name)
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log(textStatus + ' ' + errorThrown);
            }
        });
    }

    //jsonp回调函数
    function jsonpCallback(data) {
        console.log("jsonpCallback: " + data.name)
    }

    //利用cors跨域
    //corss_domain();

    //利用jsonp跨域
    jsonpC();
</script>
</html>
