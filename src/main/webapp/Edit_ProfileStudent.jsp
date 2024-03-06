<%-- 
    Document   : Edit_ProfileStudent
    Created on : Mar 4, 2024, 9:57:59 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 16px;
            color: #555;
            margin-bottom: 5px;
        }

        input[type="text"],
        select,
        button {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            font-size: 16px;
            width: calc(100% - 22px);
        }

        input[type="date"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            font-size: 16px;
            width: calc(100% - 22px);
        }

        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        option[disabled] {
            display: none;
        }

        .small-heading {
            font-size: 18px;
        }

        .small-info {
            font-size: 14px;
        }


    </style>
    <body>

        <h1>INFOMATION</h1>

        <form action="edit_profiles" method="post" >            
            <h1 >Student ID : ${Student.id}</h1>
            <input type="hidden" name = "id_student"  value ="${Student.id}"  >
            <div>
                <label>Student Email : </label>
                <input type="text" name="email" value=${Student.email} required>
            </div><!-- comment -->

            <div>
                <label>Student Password : </label>
                <input type="text" name="pass" value=${Student.password} required>
            </div>

            <div>
                <label>Student Name : </label>
                <input type="text" name="fullname" value=${Student.name} required>
            </div>
            <div>
                <h1>Student Gender : ${Student.gender}</h1>            
                <select name = "gender" >
                    <option value="${Student.gender}" disabled="" selected=" "></option>
                    <option value="Male" >MALE</option>
                    <option value="Fe-male" >FE-MALE</option>
                </select>
            </div>
            <h1>Student Birthday : ${Student.birthday}</h1>
            <input type="date" name = "bod" value ="${Student.birthday}" >

            <div>
                <label>Student Number_Phone : </label>            
                <input type="text" name="phone" value=${Student.phone_number} required><!-- comment -->
                <h2 style="color :red ">${requestScope.error}</h2>
            </div>

            <div>
                <label>Student address : </label>            
                <input type="text" name="address" value=${Student.address} required><!-- comment -->
            </div>

            <h1>Student Status :${Student.status}</h1>
            <select name = "status" >
                <option value="${Student.status}" disabled="" selected=" "></option>
                <option value="Active" >Active</option>
                <option value="Non-Avtive" >Non_Avtive</option>
            </select>

            <button type="submit">Change</button>
        </form>
    </body>
</html>