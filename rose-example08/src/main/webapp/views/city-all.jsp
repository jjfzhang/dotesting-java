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
			<th width="30%">城市</th>
            <th width="35%">国家</th>
            <th width="10%">人口</th>
		</tr>
		<c:forEach var="city" items="${cityList}" varStatus="s">
			<tr class="tr${city.getId() % 2}"><%--通过样式控制奇数行与偶数行背景不同--%>
				<td>${city.getName()}</td>
				<td>${city.getCountry()}</td>
				<td>${city.getPopulation()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>