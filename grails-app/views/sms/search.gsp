<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to </title>

</head>
<body>
<h1>Search a Student by Name</h1>
<input type="text" class="stn" name="stName" />
<button id="btn">Search</button>
<br>
<br>
<div class="message">
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function(){

    $("#btn").click(function(){
    $('h2').remove();
    console.log(name);
        $.ajax({
          url: "/sms/stSearch",
          data: {sname:$('.stn').val()},
          success: function(response){
            console.log(response);
            $('.message').append("<h2>"+response+"</h2>");
          }
        });
    });
})
</script>

</body>
</html>