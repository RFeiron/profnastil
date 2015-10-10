<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<jsp:directive.page contentType="text/html;charset=Utf-8"/>

<t:template>
  <tr><a href="/">вернуться на главную</a></tr>
  <form action="calc" method="get">
  <tr><input type="text" name="a" value="${a}"/></tr>

  <input type="text" name="b" value="${b}"/>

  <input type="text" name="workB" value="${workB}"/>

  <input type="text" name="obshayaB" value="${obshayaB}"/>
  =
  <input type="text" name="result" value="${result}"/>
  <%--=${result}--%>
  <input type="submit">

</t:template>

