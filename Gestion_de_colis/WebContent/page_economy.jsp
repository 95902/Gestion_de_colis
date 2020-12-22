
<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="controleur.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>


 <%
	if(request.getParameter("envoyer")!=null){
		
	
		Adresse uneAdresse =  new Adresse(
		
		Integer.parseInt(request.getParameter("id")),
		request.getParameter("nom_exp"),
		request.getParameter("prenom_exp"),
		request.getParameter("emai_exp"),
		request.getParameter("tel_exp"),
		request.getParameter("adresse_compl_exp"),
		request.getParameter("adresse_exp"),
		request.getParameter("ville_exp"),
		request.getParameter("cp_exp"),
		request.getParameter("pays_expedition"),
		request.getParameter("type_exp")
		);
		
		Controleur.insertAdresse(uneAdresse);
		
		Adresse uneAdresse2 =  new Adresse(
		
		Integer.parseInt(request.getParameter("id")),
		request.getParameter("nom_dest"),
		request.getParameter("prenom_dest"),
		request.getParameter("emai_dest"),
		request.getParameter("tel_dest"),
		request.getParameter("adresse_compl_dest"),
		request.getParameter("adresse_dest"),
		request.getParameter("ville_dest"),
		request.getParameter("cp_dest"),
		request.getParameter("pays_dest"),
		request.getParameter("type_dest")
		
	
		);
		//Insertion dans la base de données : table  Adresse
	 uneAdresse2.setAddresse_id_user(uneAdresse.getAddresse_id_user());
		
		Controleur.insertAdresse(uneAdresse2);
	
		
		
		User unUser= new User();
		Colis unColis =  new Colis(
		
		Integer.parseInt(request.getParameter("longueur")),
		Integer.parseInt(request.getParameter("largeur")),
		Integer.parseInt(request.getParameter("valeur_déclarée")),
		Integer.parseInt(request.getParameter("hauteur")),
		Float.parseFloat(request.getParameter("poids")),
		request.getParameter("reférence"),
		Integer.parseInt(request.getParameter("type_colis")),
		Integer.parseInt(request.getParameter("largeur")),
		Integer.parseInt(request.getParameter("tarif")),
		Integer.parseInt(request.getParameter("formule")),
		unUser.getId_user()
		
		);
		//Insertion dans la base de données : table  Colis
		unColis.setId_user(Integer.parseInt(session.getAttribute("id").toString()));
		
		Controleur.insertColis(unColis);
		
		
		ArrayList<Colis> lesColis = new ArrayList<Colis>();
		   lesColis.add(unColis);
	lesColis.size();
	
		
		Commande uneCommande = new Commande(	
				
		unColis.getId_colis(),
		Integer.parseInt(request.getParameter("nbcolis")),
		request.getParameter("etat_envoie"),
		request.getParameter("date"),
		request.getParameter("libelle_etats_envoie"),
		request.getParameter("description_envoie"),
		request.getParameter("Contenue_envoie"),
		Float.parseFloat(request.getParameter("montant")),
		unUser.getId_user(),
		uneAdresse.getAddresse_id_user()
				
		);
	
		///Partie DATE 
		uneCommande.setId_colis(unColis.getId_colis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		Date date_comande = sdf.parse(uneCommande.getDate()); 
		Date date_now = sdf.parse("2020-12-20"); 
		if (date_comande.compareTo(date_now) > 0) {
			uneCommande.setEtats("envoyer");
		}
		
		if (date_comande.compareTo(date_now) < 0) {
			uneCommande.setEtats("livrée");
		}
		 
		if (date_now.compareTo(date_comande) == 0) {
			uneCommande.setEtats("en attente");
		}
		
		///Partie MONTANT
		Transporteur unTransporteur = new Transporteur();
		
		Float montant = 0f;
		Float km = 0f;
		 
		if(unColis.getId_type_envoie()==1){
			montant += 5;
		}
		if(unColis.getId_type_envoie()==2){
			montant += 7;
		}
		if(unColis.getId_type_envoie()==3){
			montant += 0;
		}
		if(unColis.getId_categorie()==1){
			montant += 8;
		}
		if(unColis.getId_categorie()==2){
			montant += 10;
		}
		if(unColis.getId_categorie()==2){
			montant += 12;
		}
		if (unColis.getPoids()<5){
			montant += 5;
		}
		if (unColis.getPoids()>10){
			montant += 8;
		}
		
	uneCommande.setId_user(Integer.parseInt(session.getAttribute("id").toString()));
		
		 uneCommande.setMontant(montant);	
		Controleur.insertCmd(uneCommande);
		
		%>
		<% response.sendRedirect("Resultat.jsp"); %>
		<%
		
		
	
	}
%> 








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
				<form class="multisteps-form__form" id="distance_form" 
					name="form" method="GET" >
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
										name="pays_expedition"id="pays_expedition">
										<option value="France" selected="selected">France</option>
										<option value="Allemagne">Allemagne</option>
										<option value="Italie">Italie</option>
										<option value="Espagne">Espagne</option>
										<option value="Italie">Italie</option>
										<option value="Norvège">Norvège</option>
									</select>
								</div>
							</div>
							<div class="form-row mt-4 mb-5">
								<div class="col-6 col-sm-5">
									<label for="input_Nom">Nom*</label> <input
										class="multisteps-form__input form-control" id="nom_exp"
										name="nom_exp" type="text" placeholder="Nom*" />
										<input id="type_exp" name="type_exp"  type="hidden" value="expediteur"/>
										<input id="id" name="id"  type="hidden" value="0"/>
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
										<input id="origin" name="origin"  type="hidden" required/>
										<input id="montant" name="montant" value="0"  type="hidden" required/>
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
						</div>
						<div class="multisteps-form__content">
							<div class="form-row mt-4">
								<div class="col">
									<label for="exampleFormControlSelect1">Pays
										destinataire*</label> <select
										class="multisteps-form__select form-control"
										name="pays_destinataire" id="pays_destinataire">
										<option value="France" selected="selected">France</option>
										<option value="Allemagne">Allemagne</option>
										<option value="Italie">Italie</option>
										<option value="Espagne">Espagne</option>
										<option value="Italie">Italie</option>
										<option value="Norvège">Norvège</option>
									</select>
								</div>
							</div>
							<div class="form-row mt-4 mb-5">
								<div class="col-6 col-sm-5">
									<label for="input_Nom">Nom*</label> <input
										class="multisteps-form__input form-control" id="nom_dest"
										name="nom_dest" type="text" placeholder="Nom*" />
										<input id="type_dest" name="type_dest"  type="hidden" value="destinataire"/>
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
										
										<input id="destination" name="destination" required="" type="hidden" />
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
						</div>
						<div class="multisteps-form__content"style="height:750px;">
							<div class="row">
								<div class="col-12 col-md-6 mt-4">
									<div class="row">
										<div class="ml-3 col-5" >
											<label for="input_poste">Nombre de colis</label> 
											<input class="multisteps-form__input form-control" id="nbcolis"
												name="nbcolis" value="0"  onkeyup="set_colis(this.value)" />
										</div>
									</div>
									<div class="row ml-2" id="colis_div">
									
									</div>
									
									<div class="form-row mt-4 mb-5">
										<div class="col-12">
											<label for="input_Valeur">Valeur déclarée *</label> <input
												class="multisteps-form__input form-control"
												id="valeur_déclarée" name="valeur_déclarée" type="text" />
												<input id="transporteur" name="transporteur"  type="hidden" value="1"/>
										<input id="tarif" name="tarif"  type="hidden" value="1"/>
										<input id="libelle_etats_envoie" name="libelle_etats_envoie"  type="hidden" value="envoyer_2"/>
										<input
												class="multisteps-form__input form-control" id="etat_envoie"
												name="etat_envoie" type="hidden"  value="" />
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
													name="type_colis" id="flexRadioDefault1" checked value="3">
												<label class="form-check-label pl-4" for="flexRadioDefault1">
													Standard </label>
											</div>
										</div>
										<div class="col-6 col-sm-3 ">
											<div class="form-check border rounded-pill pl-5 ">
												<input class="form-check-input" type="radio"
													name="type_colis" id="flexRadioDefault2" value="1">
												<label class="form-check-label pl-4" for="flexRadioDefault2">
													Fragile </label>
											</div>
										</div>
										<div class="col-6 col-sm-3">
											<div class="form-check border rounded-pill pl-5 ">
												<input class="form-check-input" type="radio"
													name="type_colis" id="flexRadioDefault3" value="2">
												<label class="form-check-label pl-4" for="flexRadioDefault3">
													Lourd </label>
											</div>
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
								<h3 class="multisteps-form__title">Mode d’expédition</h3>
							</div>
						</div>
						<div class="multisteps-form__content">
							<div class="form-row mt-4">
								<div class="col">
									<label for="exampleFormControlSelect1">Qu’est-ce qui
										décrit le mieux cet envoi ? *</label> <select
										class="multisteps-form__select form-control"
										id="description_envoie" name="description_envoie">
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
										name="Contenue_envoie" type="text" /> <small
										id="valeurdescription" class="form-text text-muted">
										Courte description du contenu de l’envoi pour l’étiquette. </small>
								</div>
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
												id="formule-a" value="1" checked> <label
												class="pt-4" for="formule-a">ECONOMY</label>
										</div>
										<div class="col-6 col-sm-4 mt-2">
											<input type="radio" name="formule" class="formule demono"
												id="formule-b" value="2"> <label class="pt-4"
												for="formule-b">EXPRESS</label>
												<html:hidden id="kilometre"name="kilometre" value="" />
										</div>
									</div>
						
							<div class="button-row d-flex mt-4">
								<button class="btn btn-primary js-btn-prev" type="button"
									title="Prev">Prev</button>
								 <button class="btn  btn-success ml-auto" name="envoyer" type="submit"
									title="Send" >Send</button>
									
							
						</div>
						<script>
console.log(document.getElementById("kilometre").value);
</script>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>