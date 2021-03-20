<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to </title>
</head>
<body>
<h1>Add a Student</h1>
<g:form name="addStudent" onsubmit="return validateForm()"  controller="sms" action="stDataSave">
<label for="stName">Name</label>
<input type="text" name="stName"><br>
<label for="stAge">Age</label>
<input type="text" name="stAge"><br>
<br>
<input type="submit" name="add" value="Add">
</g:form>
<p>${message}</p>
<script>
function validateForm() {
  var x = document.forms["addStudent"]["stName"].value;
  var y = document.forms["addStudent"]["stAge"].value;
  if (x == "" || y == "") {
    alert("Input field must be filled out");
    return false;
  }else if(!/[0-9]/.test(y)){
   alert("Age must be number");
   return false;
  }
}
</script>
</body>
</html>