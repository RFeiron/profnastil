<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<form:form method="post" action="addProfnastil" commandName="profnastil">
  <table>
    <tr>
      <td>
        <form><label path="name"> Name </label> </form>
      </td>
      <td><form:input path="name"/></td>
      <td><from:errors path="name"></from:errors> </td>
    </tr>

    <tr>
      <td>
        <form><label path="workB"> Rabochaya Shirina </label> </form>
      </td>
      <td><form:input path="workB"/></td>
      <td><from:errors path="workB"></from:errors> </td>
    </tr>

    <tr>
      <td>
        <form><label path="obshayaB"> Obshaya Shirina </label> </form>
      </td>
      <td><form:input path="obshayaB"/></td>
      <td><from:errors path="obshayaB"></from:errors> </td>
    </tr>

    <td colspan="2"><input type="submit" value="addProfnastil"/></td>
  </table>
</form:form>

</body>
</html>
