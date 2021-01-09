
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Department Management Screens</title>
</head>
<body>
<div align="center">
    <h1>Department list</h1>
    <table border="1">
        <th>Name</th>
        <th>Location</th>
        <c:forEach var="department" items="${listDepartment}">
            <tr>
                <td>${department.name}</td>
                <td>${department.location}</td>
            </tr>
            <td>
                <a href="editDepartment?id=${department.id}">Edit</a>
                <a href="deleteDepartment?id=${department.id}">Delete</a>
            </td>
        </c:forEach>
    </table>
    <h4>
        New Department register here <a href="newDepartment">here</a>
    </h4>

</div>

</body>
</html>
