


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
 .col-md-6 {
     flex: 0 0 auto;
    width: 48%;
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

  <!--------------------------------------------------------- container div----------------------------------------------- -->


  <div class="container-fluid cont ms-3">


    <h1 class="text-primary fw-bolder fs-2 pt-5 pb-3 " > Get the access of your account
      now <P></P>in the comfort of your home</h1>
    <div class="card pt-3 pb-4 crd" style="width: 30rem;">
      <img class="card-img-top crd-edit" src="images/croplogo.png" height="1%" width="1%" alt="Card image cap">
      <div class="card-body">

        <p class="card-text" style="font-weight:bolder; font-size: 18px;">No more waiting in the long queues ,transfer
          the money very conveniently with the help of our Sparks Bank System, a digital wallet platform and online
          payment system developed to power in-app, online, and in-person contactless transactions with mobile phones.
        </p>
        <a href="create.jsp" class="btn button btn-lg ">Register User</a>
      </div>
    </div>



  </div>


  <div class="container-fluid mt-5">
    <div class="row justify-content-evenly">
    <div class="col-sm-3 m-4">
        <div class="card border-0" style="width: 23rem; ">
          <img class="card-img-top crd-img " style="margin-top: 33%; ;" src="images/ourcustomer.jpeg"
            alt="Card image cap">
          <a href="viewCustomerList.jsp" class="btn button1  ">Our Customer</a>
        </div>
      </div>
      <div class="col-sm-3 m-4">
        <div class="card border-0" style="width: 23rem; ">
          <img class="card-img-top crd-img " style="margin-top: 0%; ;" src="images/transger.jpeg"
            alt="Card image cap">
          <a href="Transaction.jsp" class="btn button1  ">Transfer Money</a>
        </div>
      </div>
      <div class="col-sm-3 m-4">
        <div class="card border-0" style="width: 23rem;" >
          <img class="card-img-top crd-img" src="images/transactioHistory.jpeg" alt="Card image cap">
          <a href="History.jsp" class="btn button1">Transaction History</a>
        </div>
      </div>
      
    </div>

  </div>




  <footer>
    <div class="container-fluid" >

      <H3 style="font-weight:bolder; text-shadow: 5px 15px 10px  #695e91; text-align: center;" class="text-primary p-3">
        DESIGNED AND DEVELOPED BY MOHD SHOAIB</H3>
    </div>

  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
    integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
    crossorigin="anonymous"></script>
  <script src="my.js"></script>
</body>

</html>