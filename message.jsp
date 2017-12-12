<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: linking
  Date: 2017/12/11
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<HashMap<String,String>> messages = (List<HashMap<String, String>>) application.getAttribute("messages");
    if(messages != null){
        for(HashMap<String,String> message : messages){
            out.print("<div class=\"message\">");

            out.print("<div class=\"guestName\">");
                out.println(message.get("name"));
            out.println("</div>");

            out.print("<div class=\"guestMail\">");
                out.print(message.get("mail"));
            out.println("</div>");

            out.print("<pre class=\"messageText\">");
                out.print(message.get("message"));
            out.println("</pre>");

            out.println("</div>");
        }
    }
%>