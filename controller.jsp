<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <%
        String s1 = request.getParameter("t1");
        String s2 = request.getParameter("t2");
        
        // Check if parameters are not null
        if (s1 != null && s2 != null) {
            // Perform input validation and handle potential NullPointerException
            try {
                if (s1.equals("gauri") && s2.equals("gauri@123")) {
                    response.sendRedirect("Front.jsp");
                } else {
                    response.sendRedirect("Fail.jsp");
                }
            } catch (NullPointerException e) {
                response.sendRedirect("Fail.jsp");
            }
        } else {
            // If parameters are null, redirect to Fail.html
            response.sendRedirect("Fail.jsp");
        }
    %>
</body>
</html>
