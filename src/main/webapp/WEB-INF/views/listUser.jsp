<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
<div>
    <div>
        <a href="add_user">Add User</a>
    </div>
    <c:if test="${!empty users}">
        <table>
            <thead>
            <th>ID</th>
            <th>Username</th>
            <th>Password</th>
            <th>Email</th>
            <th>DOB</th>
            <th>Mobile Number</th>
            <th>Gender</th>
            <th>Nationality</th>
            <th>Hobbies</th>
            <th>Comments</th>
            <th>Actions</th>
            </thead>

            <tbody>
                <c:forEach items="${users}" var="u">
                    <tr>
                        <td>${u.id}</td>
                        <td>${u.username}</td>
                        <td>${u.password}</td>
                        <td>${u.email}</td>
                        <td>${u.dob}</td>
                        <td>${u.mobileNo}</td>
                        <td>${u.gender}</td>
                        <td>${u.nationality}</td>
                        <td>${u.comments}</td>
                        <td>
                            <a href="edit_user?id=${u.id}">Edit</a>
                            <a href="delete_user?id=${u.id}">Delete</a>
                        </td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>
</body>
</html>