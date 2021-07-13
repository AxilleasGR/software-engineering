<%--
  Created by IntelliJ IDEA.
  User: siatr
  Date: 11/7/2021
  Time: 6:08 μ.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home - Teacher</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

  response.addHeader("Cache-Control", "post-check=0, pre-check=0");

  //Directs caches not to store the page under any circumstance
  response.setDateHeader("Expires", 0);

  //Causes the proxy cache to see the page as "stale"
  response.setHeader("Pragma", "no-cache");

  if ((String)request.getSession(false).getAttribute("online")==null || !((String)request.getSession(false).getAttribute("acctype")).equals("2")){
    response.sendRedirect("index.jsp");
  }

%>
<h1>Hello Teacher</h1>
<br>
<form method="post" action="MyServlet">
  <input type="submit" value="Assigned Tests">
</form>
<form action="AddQuestion.jsp">
    <input type="submit" value="Create new exercises">
</form>
<form action="prepare_test.jsp">
    <input type="submit" value="Assign tests to students">
</form>
<br>
<a href="logout.jsp">Logout</a>
</body>
</html>