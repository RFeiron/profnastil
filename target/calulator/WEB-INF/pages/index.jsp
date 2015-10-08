<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 08.10.2015
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Metall</title>
</head>
<body>

<div>
  <h1>Profnastil Creater</h1>
  <c:if test = "${!empty lists}">
    <table>
      <tr>
        <th>Name</th>
        <th>Work Shirina</th>
        <th>Obshaya Shirina</th>
        <th>&nbsp;</th>
      </tr>
      <c:forEach items = "${lists}" var = "profnastil">
        <tr>
          <td>${profnastil.name}</td>
          <td>${profnastil.workB}<td>
          <td>${profnastil.obshayaB}</td>
          <td><a href="deleteProfnastil/${profnastil.id}">Delete</a> </td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>
<a href="addProfnastil">Add Profnastil</a>
</body>
</html>
