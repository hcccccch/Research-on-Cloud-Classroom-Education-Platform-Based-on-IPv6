<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/table.css"/> 
<body>
<center>
<form action="main2.html" method="post">
		<div>
			<label>当前用户:</label><input id="user" name="user" type="text" />
		</div>
		<div>
			<label>积分转让对象:</label><input id="userName" type="text" name="userName" />
		</div>
		<div>
			<label>积分数:</label><input id="credits" name="credits" type="text" />
		</div>
		 <div>
        <button type="submit">转让</button>
        <button id="reset" type="button">重置</button>
      </div>
	</form>
	</center>
</body>
</html>