<%-- 
    Document   : reportScore
    Created on : Mar 4, 2024, 10:06:23 PM
    Author     : admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAOs.TeacherDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css"/>
        <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </head>
    <body>
        <%
            String homeroom = (String) session.getAttribute("homeroom");
            if (!homeroom.equals("false")) {
                String[] arr = homeroom.split(" ");
                String classes = arr[0];
                
                TeacherDAO tDAO = new TeacherDAO();
                ResultSet listSemester = tDAO.getAllSemester();
        %>
        <form action="/AddScore" method="post">
            <div class="d-flex">
                <div class="input-group mb-3">
                    <label class="input-group-text" for="inputGroupSelect01">Class: </label>
                    <select name="class" class="form-select" id="inputGroupSelect01">
                        <option value="<%=classes %>" selected=""></option>
                    </select>
                </div>
                
                <div class="input-group mb-3">
                    <label class="input-group-text" for="inputGroupSelect03">Semester: </label>
                    <select name="semester" class="form-select" id="inputGroupSelect03">
                        <option value="Semester 1" <%= semester.equals("Semester 1") ? "selected" : ""%>>Semester 1</option>    
                        <option value="Semester 2" <%= semester.equals("Semester 2") ? "selected" : ""%>>Semester 2</option>
                    </select>
                </div>
                <button class="btn" type="submit" name="btn-filter" value="Loc">Lọc</button>
            </div>
        </form> 

        <%
        } else {
        %>
        <p>Bạn chưa có lớp chủ nhiệm nên không thể xem báo cao điểm!!</p>
        <%
            }
        %>

        <h1>Hello World!</h1>
    </body>
</html>
