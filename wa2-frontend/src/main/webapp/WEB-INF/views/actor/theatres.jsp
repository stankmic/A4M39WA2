<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../includes/head.jsp" />
</head>
<body>
<header>
    <jsp:include page="../includes/menu.jsp" />
</header>
<main>
    <table>
        <c:forEach items="${theatres}" var="theatre">
            <tr>
                <td><a href="/theatre/${theatre.getId()}">${theatre.getId()}</a></td>
                <td>${theatre.getName()}</td>
            </tr>
        </c:forEach>
    </table>
    <c:if test="${isLoggedIn == true}">
            <form action="" method="post">
                <select name="addtheatre" id="addtheatre">
                    <c:forEach items="${otherTheatres}" var="theatre">
                        <option value="${theatre.getId()}">${theatre.getName()}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="Add">
            </form>
            <form action="" method="post">
                <select name="removetheatre" id="removetheatre">
                    <c:forEach items="${theatres}" var="theatre">
                        <option value="${theatre.getId()}">${theatre.getName()}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="Remove">
            </form>
    </c:if>
</main>
<footer>
    <jsp:include page="../includes/foot.jsp" />
</footer>
</body>
</html>