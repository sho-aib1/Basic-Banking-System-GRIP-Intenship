
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sparks Bank</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous" />
  <link rel="stylesheet" href="css/create.css" />
  <link rel="stylesheet" href="css/style.css" />

  <style>
    

    .ms-2 {
      margin-left: 2.5rem !important;
    }

    .em {
      margin-left: 12% !important;
    }
    
    #msg {
	display: none;
}

.img-fluid {
    max-width: 100%;
    height: 70%;
    position: relative;
    top: 14%;
    left: 8%;
}


  </style>
  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-lg-top" style="height: 10vh !important ;
">
    <div class="container-fluid text-bg-light ">
      <a class="navbar-brand" href="#">
        <img src="images/navlogo.png" width="30" height="30" class="d-inline-block align-top" alt="">


        <span style="font-weight: bolder; font-family: Verdana ;">SPARKS BANK</span>


      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-center mb-1 my-nav" id="navbarNavDropdown">
        <ul class="navbar-nav d-block d-inline-flex  ">
          <li class="nav-item pe-4 ">
            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
          </li>
          
          <li class="nav-item pe-4">
            <a class="nav-link active" href="viewCustomerList.jsp">Our Customer</a>
          </li>
          <li class="nav-item pe-4">
            <a class="nav-link active" href="Transaction.jsp">Transfer</a>
          </li>
          
          <li class="nav-item pe-4">
            <a class="nav-link active" href="History.jsp">Transaction History</a>
          </li>
          <li class="nav-item pe-4">
            <a class="nav-link active" href="create.jsp">Add User</a>
          </li>
          <li class="nav-item pe-4">
            <a class="nav-link active" href="https://internship.thesparksfoundation.info/">About</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


  <div class="container mt-5 mb-5 register_cont ">
    <div class="row ">
      <div class="col-md-6 ">
        <img class="img-fluid" src="images/1662386076024.png">
     

      </div>
    
  
      <div class="col-md-6 mt-3">
		
        <h1 class="text-primary text-center fw-bold mb-4"> Create New User</h1>

	<span style="color: green; font-size:25px;font-weight: bold; text-align: center; position: relative;
    left: 19%;" id="msg"> Successfully Added</span>
        <form id="myform" method="post"  >
      
		

            <div class="form-group p-2 mb-4 ms-2 ">

              <input type="text" class="form-control w-75" name="username" placeholder="UserName" id="use">
            </div>
            <div class="form-group p-2 mb-4 ms-2 ">
            <input type="text" class="form-control w-75" name="acc" placeholder="Enter Email">

          </div>


          <div class="form-group mb-4 ms-2 p-2  ">

            <select class="form-control w-75" id="exampleFormControlSelect1" name="gender" >
              <option selected>Select Gender</option>
              <option>Male</option>
              <option>Female</option>
              <option>Other</option>

            </select>
          </div>

          <div class="form-group mb-4 ms-2 p-2 form-shadow">

            <input type="number" class="form-control w-75" name="bal" placeholder="Balance">
          </div>


          <button type="submit"class="btn btn-sm button2  " id="submit">Submit</button>
        </form>
      </div>

    </div>
  </div>





  <footer>
    <div class="container-fluid mt-5">

      <H3 style="font-weight:bolder; text-shadow: 5px 15px 10px  #695e91; text-align: center;" class="text-primary p-3">
        DESIGNED AND DEVELOPED BY MOHD SHOAIB</H3>
    </div>

  </footer>
  
  

 
  
  
<script type="text/javascript">
$(document).ready(function ()
		 {
			 console.log("page is ready")
			 
			$("#myform").on('submit',function(event) {
				 console.log("Submit button clicked")
				 event.preventDefault();
				 var f=$(this).serialize();
				 console.log(f);
			$.ajax(
						{
							url: "UserControl",
							data: f,
							type:'Post',
							
							
							success:function(data,textStatus,jqXHR)
							{
								console.log("success")
								console.log(data)
								$("#msg").show()
								
							},
							error: function (jqXHR, textStatus, errorThrown) {
					        	
					            console.log("error", errorThrown);
					        },
						
						} );
				
			 });
			 
		 });       


</script>  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
    integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
    crossorigin="anonymous"></script>

</body>

</html>