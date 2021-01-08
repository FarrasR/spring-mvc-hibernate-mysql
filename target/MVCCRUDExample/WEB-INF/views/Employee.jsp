
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Employee Management Screens</title>
</head>
<body>
<div align="center">
    <h1>Employee list</h1>
    <table border="1">
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Telephone</th>
        <th>Action</th>
        <c:forEach var="employee" items="${listEmployee}">
            <tr>
                <td>${employee.name}</td>
                <td>${employee.email}</td>
                <td>${employee.address}</td>
                <td>${employee.telephone}</td>
            </tr>
            <td>
                <a href="editEmployee?id=${employee.id}">Edit</a>
                <a href="deleteEmployee?id=${employee.id}">Delete</a>
            </td>
        </c:forEach>
    </table>
    <h4>
        New Employee register here <a href="newEmployee">here</a>
    </h4>

</div>

</body>
</html>
