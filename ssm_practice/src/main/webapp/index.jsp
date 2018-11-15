<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/6
  Time: 0:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="account/findAll">测试查询</a>

    <h3>测试包</h3>

    <form action="account/save" method="post">
        姓名：<input type="text" name="name" /><br/>
        金额：<input type="text" name="money" /><br/>
        <input type="submit" value="保存"/><br/>
    </form>
    <hr/>
    <a href="/account/findAll">查询账户列表</a>

    <hr/>

    <a href="/addAccount.jsp">添加账户</a>
    <form action="/user/fileupload" method="post" enctype="multipart/form-data">
        选择文件：<input type="file" name="upload" /><br/>

</body>
</html>
