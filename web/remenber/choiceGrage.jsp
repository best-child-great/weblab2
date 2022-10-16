
<%@ page import="memo.GameFactory" %><%--
  Created by IntelliJ IDEA.
  User: 张越
  Date: 2022/10/16
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>choiceGrade</title>
</head>
<body>
    <%
        String method=request.getParameter("method");
        if(method==null)
        {
    %>
    <form action="" method="get">
        <p>请选择你的难度等级：</p>
        <button onclick="" value="1" name="method">简单</button>
        <button onclick="" value="2" name="method">普通</button>
        <button onclick="" value="2" name="method">困难</button>
    </form>
    <%
        }else{
            GameFactory.refresh();
            GameFactory
        }
    %>
        <p>你共有</p>
</body>
</html>
