
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.nkxgen.sprint.orm.inputmodel.FunctionalTask" %>
<!DOCTYPE html>
<html>
<head>
    <title>Task Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            box-sizing: border-box;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="datetime-local"],
        select,
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        textarea {
            height: 100px;
            resize: vertical;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        @media (max-width: 600px) {
            .container {
                max-width: 100%;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Task Form</h2>
        <form action="" method="post">
        
        <% FunctionalTask ft= (FunctionalTask) request.getParameter("funtask"); %>
           
           
           
        <input type="hidden" id="task_id" name="task_id" value="<%= ft.getTask_id() %>">
<input type="hidden" id="modl_id" name="modl_id" value="<%= ft.getModl_id() %>">
<input type="hidden" id="task_desc" name="task_desc" value="<%= ft.getTask_desc() %>">
<input type="hidden" id="proj_id" name="proj_id" value="<%= ft.getProj_id() %>">

<label for="task_name">Task Name:</label>
<input type="text" id="task_name" name="task_name" required>

<label for="task_cdatetime">Creation Date and Time:</label>
<input type="datetime-local" id="task_cdatetime" name="task_cdatetime" required>

<label for="task_type">Task Type:</label>
<input type="text" id="task_type" name="task_type" required>

<label for="task_ref_task_id">Referenced Task ID:</label>
<input type="text" id="task_ref_task_id" name="task_ref_task_id">

<label for="task_category">Task Category:</label>
<input type="text" id="task_category" name="task_category">

<label for="task_creator">Task Creator:</label>
<input type="text" id="task_creator" name="task_creator" required>

<label for="task_noh_reqd">Number of Hours Required:</label>
<input type="text" id="task_noh_reqd" name="task_noh_reqd" required>

<label for="task_exp_datetime">Expected Completion Date and Time:</label>
<input type="datetime-local" id="task_exp_datetime" name="task_exp_datetime">

<label for="task_cmp_datetime">Actual Completion Date and Time:</label>
<input type="datetime-local" id="task_cmp_datetime" name="task_cmp_datetime">

<label for="task_supervisor">Task Supervisor:</label>
<input type="text" id="task_supervisor" name="task_supervisor">

<label for="task_remarks">Task Remarks:</label>
<input type="text" id="task_remarks" name="task_remarks">

<label for="task_status">Task Status:</label>
<input type="text" id="task_status" name="task_status" required>

<input type="submit" value="Submit">
        </form>
    </div>
</body>
<script>
document.addEventListener("DOMContentLoaded", function() {
    var rows = document.getElementsByClassName("clickable-row");
    Array.from(rows).forEach(function(row) {
        row.addEventListener("click", function() {
            var href = row.dataset.href;
            var tid = row.dataset.tid;
            var tname = row.dataset.tname;
            var tdesc = row.dataset.tdesc;
            var texp = row.dataset.texp;
            var tstat = row.dataset.tstat;
            window.location.href = href + "?tid=" + encodeURIComponent(tid) + "&tname=" + encodeURIComponent(tname) +"&tdesc="+encodeURIComponent(tdesc)+"&texp="+encodeURIComponent(texp)+"&tstat="+encodeURIComponent(tstat);
        });
    });
});
</script>
</html>