<%--
  Created by IntelliJ IDEA.
  User: 张越
  Date: 2022/10/14
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理数字</title>
</head>
<body>
<%
    String number=request.getParameter("number");
    Integer num=Integer.parseInt(number);
    int numB=0;
    while(numB!=num){
        num=num+numB;
        numB=0;
        int x=num;
        while(x!=0){
            numB=numB*10+x%10;
            x=x/10;
        }
    }
    out.print(num+"是回文数");
%>

</body>
</html>
