<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSON测试</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/myutils.js"></script>
    <script>
        $(function () {

            $("#addDataBtn").click(function () {

                var formData = $("#formId").serialize();
                //id=1&name=龙泽&money=9000
                console.log(formData);
                $.ajax({
                    url:"account/add",
                    data: formData,
                    type:"post",
                    dataType:"json",
                    success:function(data){
                        // data服务器端响应的json的数据，进行解析

                        if(data.success) {
                            //location.href="account/findAll";
                        }
                        //alert(data.message);
                    }
                });
            });

            $("#addJsonDataBtn").click(function () {

                //把表单数据转为json对象
                var jsonObj = $("#formId").serializeJson();
                alert(jsonObj);
                //{id: "1", name: "小泽", money: "10000"}
                //console.log(jsonStr);
                //吧json对象转json字符串
                var jsonStr = JSON.stringify(jsonObj);
                alert(jsonStr);
                //console.log(jsonObj);

                $.ajax({
                    url:"account/addJsonParam",
                    contentType:"application/json;charset=UTF-8",
                    data: jsonStr,
                    dataType:"json",
                    type:"post",
                    success:function(data){
                        // data服务器端响应的json的数据，进行解析
                        if(data.success) {
                            location.href="account/findAll";
                        }
                        alert(data.message);
                    }
                });
            });
        });
    </script>

</head>
<body>

    <hr/>
    数据测试
    <form id="formId">
        id:<input type="text" name="id" value="1"/>
        姓名：<input type="text" name="name" /><br/>
        金额：<input type="text" name="money" /><br/>
    </form>
    <hr/>
    <button id="addDataBtn">添加k-v数据</button>
    <hr/>
    <button id="addJsonDataBtn">添加JSON数据</button>


</body>
</html>
