<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--统一控制数据展现表格的样式--%>
	<table border="1" width="50%" align="center" class="t1">
		<tr>
			<th width="30%">姓氏</th>
            <th width="35%">名字</th>
            <th width="10%">年龄</th>
		</tr>
		<c:forEach var="student" items="${studentList}" varStatus="s">
			<tr class="tr${student.getId() % 2}"><%--通过样式控制奇数行与偶数行背景不同--%>
				<td>${student.getFirstName()}</td>
				<td>${student.getSecondName()}</td>
				<td>${student.getAge()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>