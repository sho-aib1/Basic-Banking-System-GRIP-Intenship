


<%@page import="com.sparks.dao.CP"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sparks.bean.UserBean"%>
<%@page import="com.sparks.dao.Userdao"%>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sparks Bank</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous" />
  
  <link rel="stylesheet" href="css/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <style>
 .sub-btn
{
    /* background-color: rgb(176, 176, 226); */
    
    
    box-shadow: 10px 5px 10px 5px  rgb(25, 161, 214);
    color: #092ae3;
    font-family: 'Arial';
    font-weight: bolder;
    width: 7rem;
    margin-right: 2rem;
        
  
       
   
     
}

.sub-btn:hover
{
    background-color: #404488;

    color: whitesmoke;
    font-weight: bolder;
    
    transition:50ms ease;
}
.rst-btn
{
  box-shadow: 10px 5px 10px 5px  rgb(25, 161, 214);
    color: #092ae3;
    font-family: 'Arial';
    font-weight: bolder;
    width: 7rem;
    margin-right: 2rem;
    
       
   
       

}
.rst-btn:hover
{
    background-color: #404488;

    color: whitesmoke;
    font-weight: bolder;
    
    transition:50ms ease;
}

#msg {
	display: none;
}


  </style>
  
  
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
  
  <div class="container mt-4 pt-5  pb-4"  style="box-shadow: 10px 10px 10px 5px #695e91;"  >


<div class="container">
  <div class="row">
    <div class="col-md">
      <h3 class="text-center mt-2" style="color: #404488">Make A Transaction</h3>





      <span style="color: green; font-size:25px;font-weight: bold; text-align: center; position: relative;
    left: 1%;" id="msg" class="mt-5 mb-4"> Transaction Successful</span>
   
    
      <form id="myf" method="post">

        <div class="row">
          <div class="col">
            <div class="form-group mt-2 ">
          <% String accno = null;
if(request.getParameter("acc") != null){
	accno = request.getParameter("acc");}




%>
              <label> &nbsp; &nbsp; &nbsp; Sender Account</label>
              <input type="text" id="inputState "  class="form-control"  name="sender" value=<%=accno %> readonly>
             
                
    


              
            </div>
          </div>
          <div class="col">
            <div class="form-group mt-2">
              <label for="inputEmail4"> Receiver Account</label>
              <select id="inputState" class="form-control" name="receiver" >
            
                <option selected>Choose...</option>
               <%
               
               Userdao ud=new Userdao();
            ArrayList al1=ud.getAll();
          UserBean u=new UserBean();
    
    for(int i=0;i<al1.size();i++)
    {
    	u=(UserBean)al1.get(i);
    	
    	
    	%>
                <option><%=u.getAccno() +" "+ u.getFullNameString() %></option>
                
                <%          
    }
    
    
    %>
               
              </select>
            </div>
          </div>
        </div>
        </div>
        
      
      <div class="form-row">
        <div class="form-group col-md-6 mt-3">
          <label for="inputEmail4">Enter an Amount To Send</label>
          <input type="Number" class="form-control" placeholder="balance" name="amount" >
        </div>
        
        
      </div>
    
  </div>
      
      <div class="text-center mt-4 mb-3">
        <button type="Submit" class="btn sub-btn btn-lg " id="sub-btn" >Transfer</button>
        <button type="reset" class="btn btn-lg rst-btn">Reset</button>
    </div>
    
   
    </form>
   

  
</div>
  <div class="row sender_class mt-4" id="sender_id">

              <div class="col-lg-12">
                <h3 class="text-center">Sender Details </h3>
                <div class="container  " style="box-shadow: 10px 10px 10px 5px #695e91;">



                  <table class="table table-cont text-center table-hover">
                    <thead class="thead-dark">
                      <tr style="color:whitesmoke;" class="bg-primary fw-bolder">

                        <th scope="col">Full Name</th>
                        <th scope="col">Gender</th>

                        <th scope="col">Account Number</th>
                        <th scope="col">Available Balance</th>

                      </tr>
                    </thead>
                    <tbody>
                    
                    
                      <tr>
                      <%
                    Connection con=CP.createconneConnection();
                    String q="select * from user where AccNumber=?";
                    PreparedStatement pst=con.prepareStatement(q);
                    pst.setString(1,accno);
                    ResultSet set=pst.executeQuery();
                    while(set.next())
                    {
                    	
                   
                    
                    %>
                        <th><%=set.getString(1) %></th>
                        <td><%=set.getString(2) %></td>
                        <td><%=set.getString(3) %></td>
                        <td><%=set.getString(4) %></td>
<% 
}
                    
              
%>
                      </tr>

                    </tbody>
                  </table>
                </div>
              </div>
            </div>

 </div>

 <script>
  
 $(document).ready(function ()
 {
	 console.log("page is ready")
  $("#myf").on('submit',function(event) {
	  event.preventDefault();
var f=$(this).serialize();
console.log(f);
    $.ajax(
      {
    	  url:"TranServlet",
    	  data:f,
    		type:'Post',
        
       
        success:function(data,textStatus,jqXHR)
        {
        	console.log("success")
        	console.log(data)
        	$("#msg").show();
        		$("#sender_id").hide();
       
      
        },
        error: function (jqXHR, textStatus, errorThrown) {
        	
            console.log("error", errorThrown);
        },
        
      }
    );
	  
	  

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