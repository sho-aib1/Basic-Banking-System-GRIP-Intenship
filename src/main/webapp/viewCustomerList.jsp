
<%@page import="java.beans.beancontext.BeanContext"%>
<%@page import="com.sparks.bean.UserBean"%>
<%@page import="java.util.ArrayList"%>
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

  <style>
    .table-cont
    {
       margin-top: 5%;

    
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
          </li><li class="nav-item pe-4">
            <a class="nav-link active" href="create.jsp">Add User</a>
          </li>
         <li class="nav-item pe-4">
            <a class="nav-link active" href="https://internship.thesparksfoundation.info/">About</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

<div class="container  shadow-lg"   >



  <table class="table table-cont text-center table-hover mt-5">
    <thead class="thead-dark">
      <tr style="color:whitesmoke;" class="bg-primary fw-bolder" >
        <th scope="col">S.No</th>
        <th scope="col">Full Name</th>
        <th scope="col">Gender</th>
        
        <th scope="col">Account Number</th>
        <th scope="col">Balance</th>
     
        
      </tr>
    </thead>
    
    <% Userdao ud=new Userdao();
    ArrayList al=ud.getAll();
    UserBean u=new UserBean();
    
    int count=1;
    
    for(int i=0;i<al.size();i++)
    {
    	u= (UserBean)al.get(i);
    		
  
    
    %>
    <tbody>
      <tr>
        <th ><%=count %></th>
        <td><%=u.getFullNameString() %></td>
        <td><%=u.getGender() %></td>
        <td><%=u.getAccno() %></td>
        <td><%=u.getBalance() %></td>
        
      </tr>
      
    </tbody>
    
    <%
    count++;
    }
    %>
  </table>
  
</div>




 
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