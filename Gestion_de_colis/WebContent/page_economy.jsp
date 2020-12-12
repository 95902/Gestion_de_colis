<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section class="economy">
	<div class="row mt-5">
		<div class="col-10 mt-4">
			<h2>Service Economy</h2>
			<h5 class="mt-5 mb-5  ">Besoin d’envoyer rapidement vos colis ?
				Avec Chrono Classic, bénéficiez d’une livraison rapide et économique
				de tous vos colis, depuis la France métropolitaine vers l’Europe</h5>
		</div>
		<div class="col-2">
			<img src="images/offres/economy.png" width="200" height="200" alt="">
		</div>
	</div>
</section>
<div class="row">
	<div class="col-12"></div>
	<div class="triangle_bleu_form"></div>
</div>
<!-- **************************************
              *********FORMULAIRE*******************
              ************************************** -->
<div class="container overflow-hidden">
	<!--multisteps-form-->
	<div class="multisteps-form">
		<!--progress bar-->
		<div class="row">
			<div class="col-12 col-lg-8 ml-auto mr-auto mt-5 mb-4">
				<div class="multisteps-form__progress">
					<button class="multisteps-form__progress-btn js-active"
						type="button" title="User Info">Expéditeur</button>
					<button class="multisteps-form__progress-btn" type="button"
						title="Address">Destinataire</button>
					<button class="multisteps-form__progress-btn" type="button"
						title="Order Info">Info colis</button>
					<button class="multisteps-form__progress-btn" type="button"
						title="Comments">Comments</button>
				</div>
			</div>
		</div>
		<!--FORM-->
		<div class="row">
			<div class="col-12  m-auto">
				<form class="multisteps-form__form" action="requete.html"
					name="form" method="GET">
					<!--*******************************
                          ***********PAGE 1*************
                          *******************************
                        -->
					<div
						class="multisteps-form__panel shadow p-4 rounded bg-white js-active">
						<h3 class="multisteps-form__title mt-5 mb-5">Commencez à
							expédier maintenant</h3>
						<div class="multisteps-form__content">
							<div class="form-row mt-4">
								<div class="col">
									<label for="exampleFormControlSelect1">Pays expéditeur*</label>
									<select class="multisteps-form__select form-control"
										id="pays_expedition">
										<option selected="selected">France...</option>
										<option>Allemagne</option>
										<option>Italie</option>
										<option>Espagne</option>
										<option>Italie</option>
										<option>Norvège</option>
									</select>
								</div>
							</div>
							<div class="form-row mt-4 mb-5">
								<div class="col-6 col-sm-5">
									<label for="input_Nom">Nom*</label> <input
										class="multisteps-form__input form-control" id="nom_exp"
										name="nom_exp" type="text" placeholder="Nom*" />
								</div>
								<div class="col-12 col-sm-5 mt-4  mt-sm-0">
									<label for="input_Prenom">Prénom*</label> <input
										class="multisteps-form__input form-control" id="prenom_exp"
										name="prenom_exp" type="text" placeholder="Prénom*" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-6">
									<label for="input_adress">Adresse* </label> <input
										class="multisteps-form__input form-control" id="adresse_exp"
										name="adresse_exp" type="text" placeholder="22 rue jean" />
								</div>
								<div class="col-12 col-sm-6 mt-4 mt-sm-0">
									<label for="input_adress">Adresse complément</label> <input
										class="multisteps-form__input form-control"
										id="adresse_compl_exp" name="adresse_compl_exp" type="text"
										placeholder="Apartment, studio,code" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-6">
									<label for="input_Cp">Code postale*</label> <input
										class="multisteps-form__input form-control" id="cp_exp"
										name="cp_exp" type="text" placeholder="Code postale" />
								</div>
								<div class="col-12 col-sm-6 mt-4 mt-sm-0">
									<label for="input_ville">Ville*</label> <input
										class="multisteps-form__input form-control" id="ville_exp"
										name="ville_exp" type="text" placeholder="Ville" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-5">
									<label for="input_email">Email*</label> <input
										class="multisteps-form__input form-control" id="emai_exp"
										name="emai_exp" type="email" placeholder="Email" />
								</div>
								<div class="col-12 col-sm-5  mt-sm-0">
									<label for="input_telephone">Téléphone*</label> <input
										class="multisteps-form__input form-control" id="tel_exp"
										name="tel_exp" type="telephone" placeholder="06-33-56-89-78" />
								</div>
								<div class="col-12 col-sm-2 mt-sm-0">
									<label for="input_poste">Poste</label> <input
										class="multisteps-form__input form-control" id="poste_exp"
										name="poste_exp" type="telephone" placeholder="22" />
								</div>
							</div>
							<div class="row pt-5 mt-4">
								<div class="col-9">
									<p>*L’adresse e-mail et/ou le numéro de téléphone mobile
										que vous avez fournis seront utiliser pour informer votre
										destinataire sur l’état de son colis.</p>
								</div>
							</div>
							<div class="button-row d-flex mt-4">
								<button class="btn btn-primary ml-auto js-btn-next"
									type="button" title="Next">Suivant</button>
							</div>
						</div>
					</div>

					<!--****************************
                          **********PAGE 2**************
                          *******************************
                        -->
					<div class="multisteps-form__panel shadow p-4 rounded bg-white">
						<div class="form-row mt-4">
							<div class="col-4 mr-4">
								<h3 class="multisteps-form__title">Destination de votre
									envoi</h3>
							</div>
							<div class="col-2 ml-4">
								<h6>Adresse d’expédition</h6>
							</div>
							<div class="col-1 mt-4">
								<img src="images/offres/Trace.png" alt="" width="75px"
									height="3px" style="transform: rotate(90deg);">
							</div>
							<div class="col-4">
								<p>
									Hervé Gille <br> 103 Rue Saint Germain,<br> 93230
									ROMAINVILLE,<br> hvr.m@hotmail.fr, 0658231545
								</p>
							</div>
						</div>
						<div class="multisteps-form__content">
							<div class="form-row mt-4">
								<div class="col">
									<label for="exampleFormControlSelect1">Pays
										destinataire*</label> <select
										class="multisteps-form__select form-control"
										id="pays_destinataire">
										<option selected="selected">France...</option>
										<option>Allemagne</option>
										<option>Italie</option>
										<option>Espagne</option>
										<option>Italie</option>
										<option>Norvège</option>
									</select>
								</div>
							</div>
							<div class="form-row mt-4 mb-5">
								<div class="col-6 col-sm-5">
									<label for="input_Nom">Nom*</label> <input
										class="multisteps-form__input form-control" id="nom_dest"
										name="nom_dest" type="text" placeholder="Nom*" />
								</div>
								<div class="col-12 col-sm-5 mt-4  mt-sm-0">
									<label for="input_Prenom">Prénom*</label> <input
										class="multisteps-form__input form-control" id="prenom_dest"
										name="prenom_dest" type="text" placeholder="Prénom*" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-6">
									<label for="input_adress">Adresse* </label> <input
										class="multisteps-form__input form-control" id="adresse_dest"
										name="adresse_dest" type="text" placeholder="22 rue jean" />
								</div>
								<div class="col-12 col-sm-6 mt-4 mt-sm-0">
									<label for="input_adress_complément">Adresse complément</label>
									<input class="multisteps-form__input form-control"
										id="adresse_compl_dest" name="adresse_compl_dest" type="text"
										placeholder="Apartment, studio,code" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-6">
									<label for="input_Cp">Code postale*</label> <input
										class="multisteps-form__input form-control" id="cp_dest"
										name="cp_dest" type="text" placeholder="Code postale" />
								</div>
								<div class="col-12 col-sm-6 mt-4 mt-sm-0">
									<label for="input_ville">Ville*</label> <input
										class="multisteps-form__input form-control" id="ville_dest"
										name="ville_dest" type="text" placeholder="Ville" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-5">
									<label for="input_email">Email*</label> <input
										class="multisteps-form__input form-control" id="email_dest"
										name="email_dest" type="email" placeholder="Email" />
								</div>
								<div class="col-12 col-sm-5  mt-sm-0">
									<label for="input_telephone">Téléphone*</label> <input
										class="multisteps-form__input form-control" id="tel_dest"
										name="tel_dest" type="telephone" placeholder="06-33-56-89-78" />
								</div>
								<div class="col-12 col-sm-2 mt-sm-0">
									<label for="input_poste">Poste</label> <input
										class="multisteps-form__input form-control" id="poste_dest"
										name="poste_dest" type="telephone" placeholder="22" />
								</div>
							</div>
							<div class="row pt-5 mt-4">
								<div class="col-9">
									<p>*L’adresse e-mail et/ou le numéro de téléphone mobile
										que vous avez fournis seront utiliser pour informer votre
										destinataire sur l’état de son colis.</p>
								</div>
							</div>
							<div class="button-row d-flex mt-4">
								<button class="btn btn-primary js-btn-prev" type="button"
									title="Prev">Précédent</button>
								<button class="btn btn-primary ml-auto js-btn-next"
									type="button" title="Next">Suivant</button>
							</div>
						</div>
					</div>
					<!--******************************
                              ************PAGE3***********
                              ***************************
                          -->
					<div class="multisteps-form__panel shadow p-4 rounded bg-white"
						data-animation="scaleIn">
						<div class="form-row mt-4">
							<div class="col-4 mr-4">
								<h3 class="multisteps-form__title">Poids et dimensions</h3>
							</div>
							<div class="col-2 ml-4">
								<h6>Adresse d’expédition</h6>
							</div>
							<div class="col-1 mt-4">
								<img src="images/offres/Trace.png" alt="" width="75px"
									height="3px" style="transform: rotate(90deg);">
							</div>
							<div class="col-4">
								<p>
									Hervé Gille <br> 103 Rue Saint Germain,<br> 93230
									ROMAINVILLE,<br> hvr.m@hotmail.fr, 0658231545
								</p>
							</div>
						</div>
						<div class="multisteps-form__content">
							<div class="row">
								<div class="col-12 col-md-6 mt-4">
									<div class="row">
										<div class="col-12 pl-4 col-md-1 mt-4">
											<label for="input_poste">N°</label> <input
												class="multisteps-form__input form-control" type="texte"
												placeholder="N°1" />
										</div>
										<div class="col-12 col-md-3 mt-4">
											<label for="input_poste">Longueur(cm)*</label> <input
												class="multisteps-form__input form-control" id="longueur"
												name="longueur" type="number" step="any" />
										</div>
										<div class="col-12 col-md-3 mt-4">
											<label for="input_poste">Largeur(cm)*</label> <input
												class="multisteps-form__input form-control" id="largeur"
												name="largeur" type="number" step="any" />
										</div>
										<div class="col-12 col-md-3 mt-4">
											<label for="input_poste">Hauteur(cm)*</label> <input
												class="multisteps-form__input form-control" id="hauteur"
												name="hauteur" type="number" step="any" />
										</div>
										<div class="col-12 col-md-2 mt-4">
											<label for="input_poste">Poids(Kg)*</label> <input
												class="multisteps-form__input form-control" id="poids"
												name="poids" type="number" step="any" />
										</div>
									</div>
									<div class="form-row mt-5 pl-3 mb-5">
										<div class="col-12 col-sm-3">
											<img src="images/offres/add.png" alt="">
										</div>
										<div class="col-12 col-sm-3 mt-4 mt-sm-0">
											<p>Ajouter</p>
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-12">
											<label for="input_Valeur">Valeur déclarée *</label> <input
												class="multisteps-form__input form-control"
												id="valeur_déclarée" name="valeur_déclarée" type="text" />
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-6 col-sm-12">
											<label for="input_Référence">Référence (Information
												pour le destinataire) *</label> <input
												class="multisteps-form__input form-control" id="reférence"
												name="reférence" type="text" />
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-6 col-sm-3">
											<div class="form-check border rounded-pill pl-5 ">
												<input class="form-check-input" type="radio"
													name="type_colis" id="flexRadioDefault1" checked value="0">
												<label class="form-check-label" for="flexRadioDefault1">
													Standard </label>
											</div>
										</div>
										<div class="col-6 col-sm-3 ">
											<div class="form-check border rounded-pill pl-5 ">
												<input class="form-check-input" type="radio"
													name="type_colis" id="flexRadioDefault2" value="1">
												<label class="form-check-label" for="flexRadioDefault2">
													Fragile </label>
											</div>
										</div>
										<div class="col-6 col-sm-3">
											<div class="form-check border rounded-pill pl-5 ">
												<input class="form-check-input" type="radio"
													name="type_colis" id="flexRadioDefault3" value="2">
												<label class="form-check-label" for="flexRadioDefault3">
													Lourd </label>
											</div>
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-6 col-sm-12">
											<h3>Mode d’expédition</h3>
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-6 col-sm-4">
											<label for="input_date">Date d'envoi estimée </label> <input
												class="multisteps-form__input form-control" id="date"
												name="date" type="date" />
										</div>
										<div class="col-6 col-sm-4 mt-4 pt-2 ">
											<input type="radio" name="depart" class="depart demoyes"
												id="depart-a" value="0" checked> <label
												for="depart-a">Départ avant 12h00</label>
										</div>
										<div class="col-6 col-sm-4 mt-4 pt-2 ">
											<input type="radio" name="depart" class="depart demono"
												id="depart-b" value="1"> <label for="depart-b">Départ
												après 12h00</label>
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-6 col-sm-4 ml-5 pl-2  mt-2">
											<input type="radio" name="formule" class="formule demoyes"
												id="formule-a" value="0" checked> <label
												class="pt-4" for="formule-a">ECONOMY</label>
										</div>
										<div class="col-6 col-sm-4 mt-2">
											<input type="radio" name="formule" class="formule demono"
												id="formule-b" value="1"> <label class="pt-4"
												for="formule-b">EXPRESS</label>
										</div>
									</div>
								</div>
								<div class="col-12 col-md-1 offset-md-2 mt-4 ">
									<img src="images/offres/outsize2.png" width="300px"
										height="300px" alt="">
								</div>
							</div>
							<div class="row">
								<div class="button-row d-flex mt-4 col-12">
									<button class="btn btn-primary js-btn-prev" type="button"
										title="Prev">Prev</button>
									<button class="btn btn-primary ml-auto js-btn-next"
										type="button" title="Next">Next</button>
								</div>
							</div>
						</div>
					</div>
					<!--******************************
                              ************PAGE4***********
                              ***************************
                          -->
					<div class="multisteps-form__panel shadow p-4 rounded bg-white"
						data-animation="scaleIn">
						<div class="form-row mt-4">
							<div class="col-4 mr-4 mb-4">
								<h3 class="multisteps-form__title">Achèvement</h3>
							</div>
						</div>
						<div class="form-row mt-5">
							<div class="col-2 ">
								<h6>Adresse d’expédition</h6>
							</div>
							<div class="col-1 mt-4">
								<img src="images/offres/Trace.png" alt="" width="75px"
									height="3px" style="transform: rotate(90deg);">
							</div>
							<div class="col-3">
								<p>
									Hervé Gille <br> 103 Rue Saint Germain,<br> 93230
									ROMAINVILLE,<br> hvr.m@hotmail.fr, 0658231545
								</p>
							</div>
							<div class="col-2 ">
								<h6>Adresse de reception</h6>
							</div>
							<div class="col-1 mt-4">
								<img src="images/offres/Trace.png" alt="" width="75px"
									height="3px" style="transform: rotate(90deg);">
							</div>
							<div class="col-3">
								<p>
									Hervé Gille <br> 103 Rue Saint Germain,<br> 93230
									ROMAINVILLE,<br> hvr.m@hotmail.fr, 0658231545
								</p>
							</div>
						</div>
						<div class="multisteps-form__content">
							<div class="form-row mt-4">
								<div class="col">
									<label for="exampleFormControlSelect1">Qu’est-ce qui
										décrit le mieux cet envoi ? *</label> <select
										class="multisteps-form__select form-control"
										id="description_envoie">
										<option selected="selected">Cadeaux pour offrir...</option>
										<option>Réparation article</option>
										<option>Document professionel</option>
										<option>Autres</option>
									</select>
								</div>
							</div>
							<div class="form-row mt-4 mb-5">
								<div class="col-12">
									<label for="input_Valeur">Qu’elle est la nature de
										l'envoi ? * </label> <input
										class="multisteps-form__input form-control" id="nature_envoie"
										name="nature_envoie" type="text" /> <small
										id="valeurdescription" class="form-text text-muted">
										Courte description du contenu de l’envoi pour l’étiquette. </small>
								</div>
							</div>
							<div class="form-row mt-4">
								<h3>Total de l'expédition</h3>

							</div>

							<div class="row mt-3 ml-5">
								<div class="col-2" style="background-color: #D6D6D6">
									<p>TOTAL H.T:</p>
								</div>
								<div class="col-1" style="background-color: #D6D6D6">
									<p>32,92€</p>
								</div>
							</div>
							<div class="row ml-5 ">
								<div class="col-2" style="background-color: #D6D6D6">
									<p>TOTAL TTC:</p>
								</div>
								<div class="col-1" style="background-color: #D6D6D6">
									<p>36,92€</p>
								</div>
							</div>
							<div class="form-row mt-5">
								<h3>Mode de payment</h3>
							</div>
							<div class="form-row mt-4 ml-5 mb-5">
								<div class="col-2  mt-2">
									<input type="radio" name="mode_payment" class="formule demoyes"
										id="mode_payment-a" value="0" checked> <label
										class="pt-4" for="mode_payment-a">Carte de crédit </label>
								</div>
								<div class="col-8  mt-2 mr-5">
									<input type="radio" name="mode_payment" class="formule demono"
										id="mode_payment-b" value="1"> <label class="pt-4"
										for="mode_payment-b">Payment paypal</label>
								</div>
							</div>

							<div class="button-row d-flex mt-4">
								<button class="btn btn-primary js-btn-prev" type="button"
									title="Prev">Prev</button>
								<button class="btn btn-success ml-auto" type="submit"
									title="Send">Send</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>