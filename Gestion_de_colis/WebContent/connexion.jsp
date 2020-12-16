<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="style/style_connexion.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,600&display=swap"
	rel="stylesheet">
<title>Document</title>

</head>
<body>
	<div class="content">

		<!-- cascading tabs-->
		<div class="c-tabs">

			<!-- Nav tabs -->
			<ul class="nav nav-tabs md-tabs tabs-3 light-blue darken-3"
				role="tablist">
				<li class="nav-item"><a class="nav-link active "
					data-toggle="tab" href="#panel7" role="tab"><i
						class="fas fa-user mr-1"></i> S'identifier</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#panel8" role="tab"><i class="fas fa-user-plus mr-1"></i>
						S'inscrire</a></li>
			</ul>
			<!-- identification-->
			<!-- Tab panels -->
			<div class="tab-content">
				<!--Panel 7-->
				<div class="tab-pane fade in show active" id="panel7"
					role="tabpanel">
					<!--Body-->
					<div class="-header text-center">
						<h4 class="-title white-text w-100  font-weight-bold py-3">S'identifier</h4>
					</div>
					<form method="POST" class="register-form" id="register-form">
						<div class="body" id="myidentification">
							<div class="form-group">
								<div class="row">
									<div class="col-6">
										<div class="row">
											<div class="col-12 ">
												<img src="images/login/identifier.png" alt="" width="600px"
													height="600px">
											</div>
										</div>
									</div>
									<div class="col-6 mt-5 pt-5 pl-4">
										<!-- <div class="form-group"> -->
										<div class="row ">
											<div class="col-2 pt-1 border-bottom">
												<img src="images/login/perso.png" width="30px" height="30px"
													alt="">
											</div>
											<div class="col-8 border-bottom ">
												<input
													class="multisteps-form__input form-control border-0 pl-3"
													name="nameUserId" id="nameUserId" type="text"
													placeholder="Votre nom" />
											</div>
										</div>
										<!-- </div> -->
										<div class="row mt-5 ">
											<div class="col-2 pt-1 border-bottom">
												<img src="images/login/key.png" width="30px" height="30px"
													alt="">
											</div>
											<div class="col-8 border-bottom ">
												<input
													class="multisteps-form__input form-control border-0 pl-3"
													type="text" placeholder="Mot de passe" />
											</div>
										</div>
										<div class="row mt-5 ">
											<div class="col-8  ">
												<input type="submit" name="signup" id="signup"
													class="form-submit" value="Connexion" />
												<!-- <a type="button" class="btn btn-outline-warning waves-effect">Send <i class="fas fa-paper-plane-o ml-1"></i></a> -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>

					<!--Footer-->

				</div>
				<div class="tab-pane fade" id="panel8" role="tabpanel">
					<!-- inscription-->
					<!--Body-->
					<div class="-header text-center">
						<h4 class="-title white-text w-100  font-weight-bold py-3">S'inscrire</h4>
					</div>
					<div class="-body">
						<div class="row">
							<div class="col-6  pl-5">
								<div class="row mt-3 ">
									<div class="col-2 pt-1 border-bottom">
										<img src="images/login/perso.png" width="30px" height="30px"
											alt="">
									</div>
									<div class="col-4 border-bottom ">
										<input class="multisteps-form__input form-control border-0 "
											type="text" placeholder="Votre nom" />
									</div>
									<div class="col-5 border-bottom ">
										<input class="multisteps-form__input form-control border-0 "
											type="text" placeholder="Votre Prénom" />
									</div>
								</div>
								<div class="row mt-4">
									<div class="col-2 pt-1 border-bottom">
										<img src="images/login/email.png" width="30px" height="30px"
											alt="">
									</div>
									<div class="col-8 border-bottom ">
										<input
											class="multisteps-form__input form-control border-0 pl-3"
											type="text" placeholder="Votre e-mail" />
									</div>
								</div>
								<div class="row mt-4">
									<div class="col-2 pt-1 border-bottom">
										<img src="images/login/home.png" width="30px" height="30px"
											alt="">
									</div>
									<div class="col-8 border-bottom ">
										<input
											class="multisteps-form__input form-control border-0 pl-3"
											type="text" placeholder="Votre adresse" />
									</div>
								</div>
								<div class="row mt-4">
									<div class="col-2 pt-1 border-bottom">
										<img src="images/login/tel.png" width="30px" height="30px"
											alt="">
									</div>
									<div class="col-8 border-bottom ">
										<input
											class="multisteps-form__input form-control border-0 pl-3"
											type="text" placeholder="Votre téléphone" />
									</div>
								</div>
								<div class="row mt-4">
									<div class="col-2 pt-1 border-bottom">
										<img src="images/login/home.png" width="30px" height="30px"
											alt="">
									</div>
									<div class="col-4 border-bottom ">
										<input
											class="multisteps-form__input form-control border-0 pl-3"
											type="text" placeholder="Ville" />
									</div>

									<div class="col-5 border-bottom ">
										<input
											class="multisteps-form__input form-control border-0 pl-3"
											type="text" placeholder="Code postale" />
									</div>
								</div>
								<div class="row  mt-4">
									<div class="col-2 pt-1 border-bottom">
										<img src="images/login/key.png" width="30px" height="30px"
											alt="">
									</div>
									<div class="col-8 border-bottom ">
										<input
											class="multisteps-form__input form-control border-0 pl-3"
											type="text" placeholder="Mot de passe" />
									</div>
								</div>
								<div class="row mt-4 ">
									<div class="col-2 pt-1 border-bottom">
										<img src="images/login/open.png" width="30px" height="30px"
											alt="">
									</div>
									<div class="col-8 border-bottom ">
										<input
											class="multisteps-form__input form-control border-0 pl-3"
											type="text" placeholder="Répétez votre mot de passe" />
									</div>
								</div>
							</div>
							<div class="col-6 ">
								<div class="row mt-5">
									<div class="col-12 ">
										<img src="images/login/s'inscrire.png" alt="" class="pr-5 ">
									</div>
								</div>
								<div class="row mt-5 justify-content-center">
									<div class="col-8 ml-5 pl-5">
										<a type="button"
											class="btn btn-lg btn-outline-warning waves-effect">Valider
											<i class="fas fa-paper-plane-o ml-1"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--Footer-->
				</div>



			</div>
		</div>
	</div>
	<script src="javascript/script.js"></script>
	<link rel="stylesheet" type="text/css"
		href="https://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" />
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>