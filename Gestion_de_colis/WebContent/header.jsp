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
    <title>Document</title>
    <script type="text/javascript">
      $(document).ready(function(){
$('#buttonCloseID').click(function(){
  var databack = $("#myModalidentification #nameUserId").val().trim();
    $('#result').html(databack);
   
      console.log(databack);
});

});
      </script>
</head>
<body>
  <!--Modal: Login / Register Form-->
  <div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog cascading-modal modal-lg" role="document">
      <!--Content-->
      <div class="modal-content">

        <!--Modal cascading tabs-->
        <div class="modal-c-tabs">

          <!-- Nav tabs -->
          <ul class="nav nav-tabs md-tabs tabs-3 light-blue darken-3" role="tablist">
            <li class="nav-item">
              <a class="nav-link active " data-toggle="tab" href="#panel7" role="tab"><i class="fas fa-user mr-1"></i>
                S'identifier</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#panel8" role="tab"><i class="fas fa-user-plus mr-1"></i>
                S'inscrire</a>
            </li>
          </ul>
        <!--modal identification-->
          <!-- Tab panels -->
          <div class="tab-content">
            <!--Panel 7-->
            <div class="tab-pane fade in show active" id="panel7" role="tabpanel">

              <!--Body-->
              <div class="modal-header text-center">
                <h4 class="modal-title white-text w-100  font-weight-bold py-3">S'identifier</h4> 
              </div>
              
              <div class="modal-body" id="myModalidentification">
                <div class="form-group">
                  <div class="row">
                    <div class="col-6">
                      <div class="row">
                        <div class="col-6 ">
                          <img src="images/login/identifier.png" alt="" width="400px" height="400px">
                        </div>
                      </div>
                    </div>
                    <div class="col-6 mt-5 pt-5 pl-4">
                      <div class="row ">
                        <div class="col-1 pt-1 border-bottom">
                          <img src="images/login/perso.png" width="30px" height="30px" alt="">
                          </div>
                          <div class="col-8 border-bottom ">
                            <input class="multisteps-form__input form-control border-0 pl-3" name="nameUserId" id="nameUserId" type="text" placeholder="Votre nom"/>
                          </div> 
                      </div>
                      <div class="row mt-5 ">
                        <div class="col-1 pt-1 border-bottom">
                          <img src="images/login/key.png" width="30px" height="30px" alt="">
                          </div>
                          <div class="col-8 border-bottom ">
                            <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Mot de passe"/>
                          </div> 
                      </div>
                      <div class="row mt-5 ">
                        <div class="col-8  ">
                          <a type="button" class="btn btn-outline-warning waves-effect">Send <i class="fas fa-paper-plane-o ml-1"></i></a>
                        </div> 
                      </div>
                      <div class="row mt-5 ">
                        <div class="col-8  ">
                          <h5>Ou connectez-vous avec</h5>
                        </div> 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--Footer-->
              <div class="modal-footer">
                <div class="options text-center text-md-right mt-1">
                  <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal"id="buttonCloseID">Close</button>
                </div>            
              </div>
            </div>
            <!--/.Panel 7-->

            <!--Panel 8-->
            <div class="tab-pane fade" id="panel8" role="tabpanel">
              <!--modal inscription-->
              <!--Body-->
              <div class="modal-header text-center">
                <h4 class="modal-title white-text w-100  font-weight-bold py-3">S'inscrire</h4> 
              </div>
              <div class="modal-body">
                <div class="row">
                  <div class="col-6 ">
                    <div class="row mt-3 ">
                      <div class="col-1 pt-1 border-bottom">
                        <img src="images/login/perso.png" width="30px" height="30px" alt="">
                        </div>
                        <div class="col-8 border-bottom ">
                          <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Votre nom"/>
                        </div> 
                    </div>
                    <div class="row mt-4">
                      <div class="col-1 pt-1 border-bottom">
                        <img src="images/login/perso.png" width="30px" height="30px" alt="">
                        </div>
                        <div class="col-8 border-bottom ">
                          <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Votre Prénom"/>
                        </div> 
                    </div>
                    <div class="row mt-4">
                      <div class="col-1 pt-1 border-bottom">
                        <img src="images/login/email.png" width="30px" height="30px" alt="">
                        </div>
                        <div class="col-8 border-bottom ">
                          <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Votre e-mail"/>
                        </div> 
                    </div>
                    <div class="row mt-4">
                      <div class="col-1 pt-1 border-bottom">
                        <img src="images/login/home.png" width="30px" height="30px" alt="">
                        </div>
                        <div class="col-8 border-bottom ">
                          <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Votre adresse"/>
                        </div> 
                    </div>
                    <div class="row mt-4">
                      <div class="col-1 pt-1 border-bottom">
                        <img src="images/login/home.png" width="30px" height="30px" alt="">
                        </div>
                        <div class="col-4 border-bottom ">
                          <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Ville"/>
                        </div>
                        <div class="col-1 pt-1 "></div>
                        <div class="col-1 pt-1 border-bottom">
                          <img src="images/login/home.png" width="30px" height="30px" alt="">
                          </div>
                          <div class="col-4 border-bottom ">
                            <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Cp"/>
                          </div> 
                      </div> 
                    <div class="row  mt-4">
                      <div class="col-1 pt-1 border-bottom">
                        <img src="images/login/key.png" width="30px" height="30px" alt="">
                        </div>
                        <div class="col-8 border-bottom ">
                          <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Mot de passe"/>
                        </div> 
                    </div>
                    <div class="row mt-4 ">
                      <div class="col-1 pt-1 border-bottom">
                        <img src="images/login/open.png" width="30px" height="30px" alt="">
                        </div>
                        <div class="col-8 border-bottom ">
                          <input class="multisteps-form__input form-control border-0 pl-3"  type="text" placeholder="Répétez votre mot de passe"/>
                        </div> 
                    </div>
                    <div class="row mt-5 ">
                      <div class="col-8  ">
                        <a type="button" class="btn btn-outline-warning waves-effect">Valider <i class="fas fa-paper-plane-o ml-1"></i></a>
                      </div> 
                    </div>
                  </div>
                  <div class="col-6 ">
                    <div class="row mt-5">
                      <div class="col-6 ">
                        <img src="images/login/s'inscrire.png" alt="" class="pr-5 " width="420px" height="300px">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--Footer-->
              <div class="modal-footer">
                <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!--/.Panel 8-->
          </div>

        </div>
      </div>
      <!--/.Content-->
    </div>
  </div>
  <!--******************************************
    **********Modal: Login / Register Form******
    ********************************************
  -->
    <div class="container-fluid" >
        <div class="row" style="background-color:white;">
            <div class="col-11"></div>
            <div class="col-1">
              <a href="" class="btn"data-toggle="modal" data-target="#modalLRForm">
                <img src="images/index/login.png" alt="login"></a>
            </div>
            
        </div>
       
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
   