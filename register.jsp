<html>
<head>
    <style>
	#err_box{
		width:500px;
		text-align:center;
		color:red;
		background-color:#fff2f2;
		padding:15px 0px;
		margin: 12px auto;
		border: 1px solid red;
	}
  </style>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="css/style_common.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
    
</head>
    
    <body>
         <% String errMsg = (String)request.getAttribute("errmsg"); %>
  
  <% if(errMsg!=null){ %>
  <div id="err_box">
	<%= errMsg %>
  </div>
  <% } %>
        <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    Home  Service
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                </div>
            </div>
            </div>
                <section>
                    <div class="modal-body">
                        <div class="loginf_module">
                            <div class="module form-module">
                                <div class="toggle">
                                    <i class="fa fa-times fa-pencil"></i>
                                </div>

    <div class="form">
                <h3>Create a new account</h3>
                <form action="register.do" method="post">
                  <input type="text" name="Username" placeholder="Name" required="">
                 <input type="email" name="Email" placeholder="Email address" required="">
                <input type="text" name="Phone" placeholder="Phone Number" required="">
                <input type="text" name="Address" placeholder="Address" required="">
                    <li class="nav-item ">
                                            Select City
                    </li>
        <select name="city">
        <option>Jabalpur</option> 
        <option>Damoh</option>    
        <option>Katni</option>
        <option>Sihora</option>
            <option>Narsighpur</option>
            <option>Sagar</option>
            <option>Balaghat</option>
        </select>    
        <li class="nav-item ">
            Select Area
                    </li>
        <select name="area" >
        <option>Garha</option> 
        <option>Medical</option>    
        <option>Madan Mahal</option>
        <option> Tilwara</option>
            <option>Rampur</option>
            <option>Dhanvantri</option>
            <option>Madhotal</option>
        </select>  <br> <br>
                <input type="password" name="Password" placeholder="Password" required="">
                     <input type="password" name="rePassword" placeholder="Confirm Password" required="">
                <input type="radio" value="Service Man" name="usertype"/>Service Man &nbsp; &nbsp; &nbsp; 
                    <select name="profession">
                        <option>None</option>
        <option>Carpentar</option> 
        <option>Fitter</option>    
        <option>Cleaner</option>
        <option> Electrician</option>
            <option>Plumber</option>
            <option>Painter</option>
        </select> <br>
                <input type="radio" value="Customer" name="usertype"/>Customer<br><br>
                <input type="submit" value="Register">
                 </form>
    </div>
                                </div>
                            </div>
                        </div>
                                                    </section>                      

    </body>
</html>