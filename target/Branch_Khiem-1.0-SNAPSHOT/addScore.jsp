<%-- 
    Document   : addScore
    Created on : Feb 29, 2024, 8:36:58 AM
    Author     : admin
--%>

<%@page import="Model.SubjectModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAOs.TeacherDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    <style>
        .d-flex {
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .input-group {
            margin-right: 10px;
        }

        .btn {
            background-color: green;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 5px 10px;
        }
    </style>
</head>
<body>
    <h1>Mark Book</h1>
    <%
        String isAccess = (String) session.getAttribute("isAccess");
        String isPower = (String) session.getAttribute("isPower");
        ArrayList<String> list = (ArrayList<String>) session.getAttribute("list");
        String classes = "";
        int subject_id = 0;
        String subject_name = "";
        String semester = "";

        if (list != null && list.size() > 0) {
            classes = list.get(0);
            subject_id = Integer.parseInt(list.get(1));
            semester = list.get(2);
        }
        if (isAccess.equals("true")) {
    %>
    <h3>Please select class to enter mark</h3>

    <%
        TeacherDAO tDAO = new TeacherDAO();
        ResultSet listClass = tDAO.getAllClass();
        ResultSet rsSubject = tDAO.getAllSubject();
        ResultSet listSemester = tDAO.getAllSemester();
        int semester_id = 0;

        while (listSemester.next()) {

            if (listSemester.getString("name").equals(semester)) {
                semester_id = listSemester.getInt("id");
                break;
            }
        }

        ArrayList<SubjectModel> listSubject = new ArrayList<>();
        while (rsSubject.next()) {
            listSubject.add(new SubjectModel(rsSubject.getInt(1), rsSubject.getString(2)));
        }
    %>
    <form action="/AddScore" method="post">
        <div class="d-flex">
            <div class="input-group mb-3">
                <label class="input-group-text" for="inputGroupSelect01">Class: </label>
                <select name="class" class="form-select" id="inputGroupSelect01">
                    <%
                        while (listClass.next()) {
                    %>
                    <option value="<%=listClass.getString(1)%>" <%=classes.equals(listClass.getString(1)) ? "selected" : ""%> > <%=listClass.getString(1)%></option>

                    <%
                        }
                    %>
                </select>
            </div>
            <div class="input-group mb-3">
                <label class="input-group-text" for="inputGroupSelect02">Subject: </label>
                <select name="subject" class="form-select" id="inputGroupSelect02">

                    <%
                        for (SubjectModel subject : listSubject) {
                            if (subject_id == subject.getId())
                                subject_name = subject.getName();
                    %>
                    <option value="<%=subject.getId()%>" <%=subject_id == subject.getId() ? "selected" : ""%>><%=subject.getName()%></option>

                    <%
                        }
                    %>
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
        if (isPower != null && isPower.equals("false")) {
    %>
    <p>Bạn không có quyền nhập và sửa điểm của lớp này!!</p>
    <%
    } else if (isPower != null) {
        String teacherName = tDAO.getTeacherNameById(Integer.parseInt(isPower));

        ResultSet rsStudent = tDAO.getStudent(classes, subject_id, semester_id);
    %>

    <div class="d-flex">
        <h4>Mark Book Detail</h4>
        <p> <span>Class: </span> <%=classes%></p>
        <p> <span>Subject: </span> <%=subject_name%> - <%=semester%></p>
        <p> <span>Teacher: </span> <%=teacherName%></p>
    </div>  
    
    <form action="/AddScore" method="post"> 
        <input type="hidden" name="txt_values" value="<%=classes +" " + subject_id + " " + semester_id%>">
        <table id="example">
            <thead>
                <tr>
                    <th>Phone Number</th>
                    <th>Fullname</th>
                    <th>Birthday</th>
                    <th>Mark Mouth</th>
                    <th>Mark Short Exam</th>                            
                    <th>Mark Mid Semester</th>
                    <th>Mark Semester</th>
                </tr>
            </thead>

            <tbody>
                <%
                    while (rsStudent.next()) {
                        int student_id = rsStudent.getInt("student_id");
                %>
                <tr>
                    <td><%=rsStudent.getString("phone_number")%></td>
                    <td><%=rsStudent.getString("name")%></td>
                    <td><%=rsStudent.getDate("birthday")%></td>
                    <td> <input type="number" min="0" max="10" name="<%=student_id +" scoreMouth"%>" value="<%=rsStudent.getFloat("scoreMouth")%>"> </td>
                    <td> <input type="number" min="0" max="10" name="<%=student_id +" scoreShortExam"%>" value="<%=rsStudent.getFloat("scoreShortExam")%>"> </td>                            
                    <td> <input type="number" min="0" max="10" name="<%=student_id +" scoreMidSemester"%>" value="<%=rsStudent.getFloat("scoreMidSemester")%>"> </td>                            
                    <td> <input type="number" min="0" max="10" name="<%=student_id +" scoreSemester"%>" value="<%=rsStudent.getFloat("scoreSemester")%>"> </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <button class="btn" type="submit" name="btn-save" value="Save">Save</button>
    </form>
    <%
        }
    } else {
    %>
    <p>
        Thời gian bắt đầu: 00:00 ngày 03/11/2023. Thời gian kết thúc: trước 12:00 ngày 05/11/2023
        Starting date: 00:00 date 03/11/2023. Duedate: before 12:00 date 05/11/2023
    </p>
    <%
        }
    %>

</body>
</html>
