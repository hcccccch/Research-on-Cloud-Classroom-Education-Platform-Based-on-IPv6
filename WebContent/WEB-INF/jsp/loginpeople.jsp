<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@page import="web2017.team1.baipeixiang.domain.User"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>
<body>
<%
	String username = (String)request.getSession().getAttribute("username");
	List<String> online = (List<String>)getServletContext().getAttribute("online");
	int size = online.size();
%>
��ӭ��  <%=username %><br/>
��ǰ����������<%=size %><br/>
<a href="Logout.jsp">�˳�</a>
</body>
<script>
	function logout(){
		
	}
</script>
</html>