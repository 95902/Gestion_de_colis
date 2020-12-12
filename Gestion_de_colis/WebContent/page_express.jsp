
<%@ include file="header.jsp"%>
<section class="express">
	<div class="row mt-5">
		<div class="col-10 mt-4">
			<h2>Service Espress</h2>
			<h5 class="mt-5 mb-5">Besoin d’envoyer rapidement vos colis ?
				Avec Chrono Express, bénéficiez d’une livraison rapide de tous vos
				colis, depuis la France métropolitaine vers l’Europe</h5>
		</div>
		<div class="col-2">
			<img src="images/offres/express.png" width="200" height="200" alt="">
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
						type="button" title="User Info">User Info</button>
					<button class="multisteps-form__progress-btn" type="button"
						title="Address">Address</button>
					<button class="multisteps-form__progress-btn" type="button"
						title="Order Info">Order Info</button>
					<button class="multisteps-form__progress-btn" type="button"
						title="Comments">Comments</button>
				</div>
			</div>
		</div>
		<!--FORM-->
		<div class="row">
			<div class="col-12  m-auto">
				<form class="multisteps-form__form">
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
									<select class="multisteps-form__select form-control">
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
										class="multisteps-form__input form-control" type="text"
										placeholder="Nom*" />
								</div>
								<div class="col-12 col-sm-5 mt-4  mt-sm-0">
									<label for="input_Prenom">Prénom*</label> <input
										class="multisteps-form__input form-control" type="text"
										placeholder="Prénom*" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-6">
									<label for="input_address">Addresse* </label> <input
										class="multisteps-form__input form-control" type="text"
										placeholder="22 rue jean" />
								</div>
								<div class="col-12 col-sm-6 mt-4 mt-sm-0">
									<label for="input_adress_complément">Addresse
										complément</label> <input class="multisteps-form__input form-control"
										type="email" placeholder="Apartment, studio,code" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-6">
									<label for="input_Cp">Code postale*</label> <input
										class="multisteps-form__input form-control" type="text"
										placeholder="Code postale" />
								</div>
								<div class="col-12 col-sm-6 mt-4 mt-sm-0">
									<label for="input_ville">Ville*</label> <input
										class="multisteps-form__input form-control" type="email"
										placeholder="Ville" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-5">
									<label for="input_email">Email*</label> <input
										class="multisteps-form__input form-control" type="email"
										placeholder="Email" />
								</div>
								<div class="col-12 col-sm-5  mt-sm-0">
									<label for="input_telephone">Téléphone*</label> <input
										class="multisteps-form__input form-control" type="telephone"
										placeholder="06-33-56-89-78" />
								</div>
								<div class="col-12 col-sm-2 mt-sm-0">
									<label for="input_poste">Poste</label> <input
										class="multisteps-form__input form-control" type="telephone"
										placeholder="22" />
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
									<label for="exampleFormControlSelect1">Pays expéditeur*</label>
									<select class="multisteps-form__select form-control">
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
										class="multisteps-form__input form-control" type="text"
										placeholder="Nom*" />
								</div>
								<div class="col-12 col-sm-5 mt-4  mt-sm-0">
									<label for="input_Prenom">Prénom*</label> <input
										class="multisteps-form__input form-control" type="text"
										placeholder="Prénom*" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-6">
									<label for="input_address">Addresse* </label> <input
										class="multisteps-form__input form-control" type="text"
										placeholder="22 rue jean" />
								</div>
								<div class="col-12 col-sm-6 mt-4 mt-sm-0">
									<label for="input_adress_complément">Addresse
										complément</label> <input class="multisteps-form__input form-control"
										type="email" placeholder="Apartment, studio,code" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-6">
									<label for="input_Cp">Code postale*</label> <input
										class="multisteps-form__input form-control" type="text"
										placeholder="Code postale" />
								</div>
								<div class="col-12 col-sm-6 mt-4 mt-sm-0">
									<label for="input_ville">Ville*</label> <input
										class="multisteps-form__input form-control" type="email"
										placeholder="Ville" />
								</div>
							</div>
							<div class="form-row mt-5 mb-5">
								<div class="col-12 col-sm-5">
									<label for="input_email">Email*</label> <input
										class="multisteps-form__input form-control" type="email"
										placeholder="Email" />
								</div>
								<div class="col-12 col-sm-5  mt-sm-0">
									<label for="input_telephone">Téléphone*</label> <input
										class="multisteps-form__input form-control" type="telephone"
										placeholder="06-33-56-89-78" />
								</div>
								<div class="col-12 col-sm-2 mt-sm-0">
									<label for="input_poste">Poste</label> <input
										class="multisteps-form__input form-control" type="telephone"
										placeholder="22" />
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
												class="multisteps-form__input form-control" type="number"
												step="any" />
										</div>
										<div class="col-12 col-md-3 mt-4">
											<label for="input_poste">Largeur(cm)*</label> <input
												class="multisteps-form__input form-control" type="number"
												step="any" />
										</div>
										<div class="col-12 col-md-3 mt-4">
											<label for="input_poste">Hauteur(cm)*</label> <input
												class="multisteps-form__input form-control" type="number"
												step="any" />
										</div>
										<div class="col-12 col-md-2 mt-4">
											<label for="input_poste">Poids(Kg)*</label> <input
												class="multisteps-form__input form-control" type="number"
												step="any" />
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
												class="multisteps-form__input form-control" type="text" />
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-6 col-sm-12">
											<label for="input_Référence">Référence (Information
												pour le destinataire) *</label> <input
												class="multisteps-form__input form-control" type="text" />
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-6 col-sm-3">
											<div class="form-check border rounded-pill pl-5 ">
												<input class="form-check-input" type="radio"
													name="flexRadioDefault" id="flexRadioDefault1"> <label
													class="form-check-label" for="flexRadioDefault1">
													Standard </label>
											</div>
										</div>
										<div class="col-6 col-sm-3 ">
											<div class="form-check border rounded-pill pl-5 ">
												<input class="form-check-input" type="radio"
													name="flexRadioDefault" id="flexRadioDefault2" checked>
												<label class="form-check-label" for="flexRadioDefault2">
													Fragile </label>
											</div>
										</div>
										<div class="col-6 col-sm-3">
											<div class="form-check border rounded-pill pl-5 ">
												<input class="form-check-input" type="radio"
													name="flexRadioDefault" id="flexRadioDefault3" checked>
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
												class="multisteps-form__input form-control" type="date" />
										</div>
										<div class="col-6 col-sm-4 mt-4 pt-2 ">
											<input type="radio" name="depart" class="depart demoyes"
												id="depart-a" checked> <label for="depart-a">Départ
												avant 12h00</label>
										</div>
										<div class="col-6 col-sm-4 mt-4 pt-2 ">
											<input type="radio" name="depart" class="depart demono"
												id="depart-b"> <label for="depart-b">Départ
												après 12h00</label>
										</div>
									</div>
									<div class="form-row mt-4 mb-5">
										<div class="col-6 col-sm-4 ml-5 pl-2  mt-2">
											<input type="radio" name="formule" class="formule demoyes"
												id="formule-a" checked> <label class="pt-4"
												for="formule-a">ECONOMY</label>
										</div>
										<div class="col-6 col-sm-4 mt-2">
											<input type="radio" name="formule" class="formule demono"
												id="formule-b"> <label class="pt-4" for="formule-b">EXPRESS</label>
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
					<!--single form panel-->
					<div class="multisteps-form__panel shadow p-4 rounded bg-white"
						data-animation="scaleIn">
						<h3 class="multisteps-form__title">Additional Comments</h3>
						<div class="multisteps-form__content">
							<div class="form-row mt-4">
								<textarea class="multisteps-form__textarea form-control"
									placeholder="Additional Comments and Requirements"></textarea>
							</div>
							<div class="button-row d-flex mt-4">
								<button class="btn btn-primary js-btn-prev" type="button"
									title="Prev">Prev</button>
								<button class="btn btn-success ml-auto" type="button"
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