<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css" >
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	 
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key=AIzaSyCvSxTD9oHJjVvguqQQP8YBbGkhxaFutFQ"></script>

    <title>Document</title>
    
</head>
<body>

<%


if(request.getParameter("page")!=null){
    session.removeAttribute("email"); 
    session.removeAttribute("nom"); 
    session.removeAttribute("prenom"); 
    session.removeAttribute("id");
}
%>
 
    <div class="container-fluid" >
        <div class="row" style="background-color:white;">
            <div class="col-11"></div>
            <div class="col-1">
              <a href="connexion.jsp?page=deconnexion" >
                <img src="images/index/login.png" alt="login"></a>

            </div>

        </div>>
       
        <div class="row">
          <div class="head" ></div>
       </div>
        <section class="head2" >
            <div class="row" >
                <div class="col-2">
                    <a class="navbar-brand" href="index.jsp" style="position: absolute;top: -75px; left: -30px;display: run-in;">
                        <img src="images/index/logo.png" width="200" height="200" alt="" loading="lazy">
                      </a>
                </div>
                <div class="col-10">
                        <nav class="navbar navbar-expand-lg mt-2" >
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                              <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                              <ul class="navbar-nav ">
                                <li class="nav-item ">
                                  <a class="nav-link font-weight-normal  " href="page_economy.jsp">Expédier en ligne </a>
                                </li>
                                <li class="nav-item  ml-5 pl-5">
                                  <a class="nav-link font-weight-normal" href="page_suivie.jsp">Suivi de mon colis</a>
                                </li>
                                <li class="nav-item  ml-5 pl-5">
                                    <a class="nav-link font-weight-normal" href="page_offres.jsp">Nos offres <span class="sr-only">(current)</span></a>
                                  </li>
                                  <li class="nav-item  ml-5 pl-5">
                                    <a class="nav-link font-weight-normal" href="page_contact.jsp">Aides/Contacts <span class="sr-only">(current)</span></a>
                                  </li>
                              </ul>
        
                            </div>
                            <a class="navbar-brand" href="#" >
                                <img src="images/index/icons_chercher.png" width="30" height="30" alt="" loading="lazy">
                              </a>
                          </nav>
                </div> 
            </div> 
        </section> 
        <div id="result"><p></p></div>
   