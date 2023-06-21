<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@page import="com.nkxgen.spring.orm.model.*" %>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .clickable-row:hover {
            background-color: #f5f5f5;
            cursor: pointer;
        }

        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
    
    
  <script type="text/javascript">
    function createTask() {
        var modl_Id = $('#mid').text();
        var func_Id = $('#funid').text();
        var desc = $('#fdesc').text();
        console.log(modl_Id);
        var data = {
            modlId: modl_Id,
            funcId: func_Id,
            desc: desc,
            projId: '<%= request.getParameter("pro_id") %>'
        };
      
       console.log(JSON.stringify(data));
        // Send the data using AJAX
        $.ajax({
            url: 'Task',
            type: 'POST',
            data: data,
            contentType: 'application/json',
            success: function(response) {
                console.log('Data sent successfully!');
            },
            error: function(error) {
                window.alert("error");
                console.error('Error sending data:', error);
            }
        });
    }
</script>


    
    
    
</head>
<body>
    <form action="sprints">
        <table>
            <tr>
                <th>Functional Unit id</th>
                <th>Module id</th>
                 <th>Functional Description</th>
            </tr>
          <% 
ArrayList<FunctionalUnit> funlist = (ArrayList<FunctionalUnit>) request.getAttribute("funlist");
for (FunctionalUnit functionalUnit : funlist) {
    int modl_id = functionalUnit.getId().getModlId();
    int func_id = functionalUnit.getId().getFunId();
    String desc = functionalUnit.getFunitDesc();
%>
<tr class="clickable-row" onclick="createTask()">
    <td id="mid"><%= modl_id %></td>
    <td id="funid"><%= func_id %></td>
    <td id="fdesc"><%= desc %></td>
</tr>
<% 
}
%>

        </table>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
