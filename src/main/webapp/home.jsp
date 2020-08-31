
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Insert Student Data</title>
    </head>
    <body style="background-color:orange;">
       <form action="/addstudentdata" method="post">
   <h1>studentId:<h1><input type ="text" name="studentId"/><br>
    <h1>studentName:<h1> <input type ="text" name="studentName"/><br>
     <h1>courseName:<h1><input type ="text" name="courseName"/><br>
        <input type="submit"><br>
        </form>

   <form action="/getstudentdata?studentId" method="get">
  <h1>search by studentId<h1>
 <h2> Enter studentId:<h2> <input type ="text" name="studentId"/><br>
  <input type="submit"><br>
</form>

    </body>
</html>