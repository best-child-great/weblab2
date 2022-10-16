<%@ tag import="java.time.LocalDate" %>
<%@ tag import="java.time.DayOfWeek" %><%--
  Created by IntelliJ IDEA.
  User: 张越
  Date: 2022/10/14
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="year" required="true"  %>
<%@ attribute name="month" required="true" %>
<%
    int y=Integer.parseInt(year);
    int m=Integer.parseInt(month);
    LocalDate date = LocalDate.of (y,m,1);
    int days = date.lengthOfMonth();
    int space=0;
    DayOfWeek dayOfWeek=date.getDayOfWeek();
    switch (dayOfWeek){
        case SUNDAY:space=0;
            break;
        case MONDAY:space=1;
            break;
        case TUESDAY:space=2;
            break;
        case WEDNESDAY:space=3;
            break;
        case THURSDAY:space=4;
            break;
        case FRIDAY:space=5;
            break;
        case SATURDAY:space=6;
            break;
    }
    String [] calender = new String[space+days];
    for(int i=0;i<space;i++){
        calender[i]="--";
    }
    for(int i=space,n=1;i<calender.length;i++){
        calender[i]=String.valueOf(n);
        n++;
    }
%>
<h1><%=year%>> 年 <%=month%> 月 日立</h1>
<table>
    <tr>
        <th>
            星期天
        </th>
        <th>
            星期一
        </th>
        <th>
            星期二
        </th>
        <th>
            星期三
        </th>
        <th>
            星期四
        </th>
        <th>
            星期五
        </th>
        <th>
            星期六
        </th>
    </tr>

    <%
        int n=0;
        while(n<calender.length){
            out.print("<tr>");
            int increment=Math.min(7,calender.length-n);
            for(int i=n;i<n+increment;i++){
                out.print("<td>"+calender[i]+"</td>");
                System.out.println(calender[i]);
            }
            out.print("</tr>");
            n+=increment;
        }
    %>
</table>