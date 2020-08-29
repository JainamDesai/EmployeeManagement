<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="jumbotron">
<h1>Employee Information System:</h1>
</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-blue">
<ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="sign up">Sign up</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="SignIn.jsp">Sign in</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Show data</a>
    </li>
  </ul>
 
  </nav>

<div class="form-group">
<form>
<label for="user">
Employee Username:<span>*</span>
</label><input class="form-control" name="username" type="text" id="user" autocomplete="off" >
<h6 id="h1"></h6><br>
<label for="lastname">
Employee Lastname:<span>*</span>
</label><input class="form-control" name="lastname" type="text" id="lastname" autocomplete="off">
<h6 id="h2"></h6><br>
<label for="location">
Employee Location:<span>*</span>
</label><select name="location" class="custom-select mb-3" id="loc" >
      <option selected>Select city</option>
      <option value="Ahmedabad">Ahmedabad</option>
      <option value="Mumbai">Mumbai</option>
      <option value="Pune">Pune</option>
    </select>
  <br><h6 id="h3"></h6>
<label for="salary">
Employee Salary:<span>*</span>
</label><input class="form-control" type="number" name="salary" id="salary" autocomplete="off"><h6 id="h4"></h6><br>
<label for="pass">
Employee Password:<span>*</span>
</label><input class="form-control" name="password" type="password" id="pass" autocomplete="off"><h6 id="h5"></h6>
<br>
<button type="submit" class="btn btn-primary" id="bu">Check it:</button>
<h1></h1>
</form>
</div>
  <script type="text/javascript">
            $(document).ready(function(){
            	 $('#user').keypress(function(){ 
            		 var username = $('#user').val();
                 	if(username.length==''){
                     	$('#h1').html("please enter details..........");
                     	$('#h1').css("color","red");
                		 $('#h1').focus();
                     }
                 	else{
              		  $('#h1').hide();
              	  } });
            	   $('#lastname').keypress(function(){
            		   var lastname = $('#lastname').val();
                  	  if(lastname.length == ''){
                  		 $('#h2').html("please enter details.........."); 
                  		 $('#h2').css("color","red");
                  		 $('#h2').focus();
                  	  }
                  	 else{
                		  $('#h2').hide();
                	  }   
            	   });
                 	  $('#loc').keypress(function(){
                 		 var location = $('#loc').val();
                   	  if(location.length == ''){
                   		 $('#h3').html("please enter details..........");
                   		 $('#h3').css("color","red");
                    	 $('#h3').focus();
                   	  }
                   	  else{
                   		  $('#h3').hide();
                   	  }	  
                 	  });
                 	 $('#pass').keydown(function(){
                 		var pass = $('#pass').val();
                  	  if(pass.length == ''){
                  		 $('#h5').html("please enter details..........");
                  		 $('#h5').css("color","red");
                   		 $('#h5').focus();
                  	  }
                  	  else if(pass.length>7){
                  		  $('#h5').html("please enter pass below 7 character..........");
                  		  $('#h5').css("color","red");
                  	  }
                  	  else{
                  		  $('#h5').hide();
                  	  }	 
                 	 });
                	  $('#salary').keypress(function(){
                		  var salary = $('#salary').val();
                    	  if(pass.length == ''){
                    		 $('#h4').html("please enter details..........");
                    		 $('#h4').css("color","red");
                     		 $('#h4').focus();
                    	  }
                    	  else{
                    		  $('#h4').hide();
                    	  }
                     	
                     });
                	  
                $('#bu').click(function(){
             
                    var username = $('#user').val();
                    var lastname = $('#lastname').val();
                    var location = $('#loc').val();
                    var salary = $('#salary').val();
                    var password = $('#pass').val();
                   
                    
                    $.ajax({
                        type : 'POST',
                        url : 'EmployeeInfo',
                        data : {
                        	username  : username,
                        	lastname : lastname,
                        	location : location, 
                        	salary :salary,
                        	password : password,
                        },
                        success : function(result)
                        {
                            $("h1").append(result);  
                        },
                        error : function(e)
                        {
                                  
                        }
                    });
                });
            });
            </script>
            </div>

</body>
</html>
