<%@ page contentType="text/html;charset=gb2312"%>
<head>
<title>Untitled Document</title>
</head>

<body>
<%
     session.removeAttribute("UserName");
     session.removeAttribute("UserType");
	 response.sendRedirect("index.jsp");
%>
</body>
</html>
