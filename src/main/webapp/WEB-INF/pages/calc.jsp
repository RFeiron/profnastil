<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="/theme/css/style.css" type="text/css" />
<jsp:directive.page contentType="text/html;charset=Utf-8"/>

<t:template>

    <form:form method="get" action="calc">

        <h1>Калькулятор</h1>
        <table>

            <tr>
                <td>
                    <form><label path="a"> Длина </label></form>
                </td>
                <td><input type="text" name="a" value="${a}"/></td>
            </tr>

            <tr>
                <td>
                    <form><label path="b"> Ширина </label></form>
                </td>
                <td><input type="text" name="b" value="${b}"/></td>
            </tr>

            <tr>
                <td>
                    <form><label path="workB"> Полезная ширина листа </label></form>
                </td>
                <td><input type="text" name="workB" value="${workB}"/></td>
            </tr>

            <tr>
                <td>
                    <form><label path="obshayaB">Общая ширина листа</label></form>
                </td>
                <td><input type="text" name="obshayaB" value="${obshayaB}"/></td>

            </tr>
            <td><input type="text" name="result" value="${result}"/></td>

            <td colspan="2"><input type="submit" value="считать"/></td>
        </table>
    </form:form>
</t:template>

