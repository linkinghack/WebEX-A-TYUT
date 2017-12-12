<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: linking
  Date: 2017/12/11
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");

    String name = request.getParameter("guestName").trim();
    String mail = request.getParameter("guestMail").trim();
    String mess = request.getParameter("message").trim();
    //判断是否为空内容
    if(!(name.length()<2 || mail.length()<5 || mess.length()<1)){
        List<HashMap<String,String>> messages = (List<HashMap<String, String>>) application.getAttribute("messages");

        if(messages == null){
            messages = new ArrayList<>();
        }
        HashMap<String,String> message = new HashMap<>();

        message.put("name",name);
        message.put("mail",mail);
        message.put("message",mess);
        messages.add(message);

        application.setAttribute("messages",messages);
    }
    //添加结束返回首页
    response.sendRedirect("index.jsp");
%>