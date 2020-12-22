<%@ include file="header.jsp"%>
<%@ page import="controleur.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>


<section class="suivie">
	<div class="row mt-5">
		<div class="col-10 mt-4">
			<h2>Suivie</h2>
			<h5 class="mt-5 mb-5">Besoin d'information concernent votre
				expï¿½dition ? Notre suivie par ï¿½tapes vous offre toute les
				informations de votre colis</h5>
		</div>
		<div class="col-2">
			<img src="images/offres/suivie.png" width="200" height="200" alt="">
		</div>
	</div>
</section>
<div class="row">
	<div class="triangle_bleu_form"></div>
</div>
<div class="row mt-5">
	<div class="col-10 mt-4 ml-5 pl-5 ">
		<h3>Suivre</h3>
	</div>
</div>
<div class="row mt-5">
	<div class="col-10 mt-4 ml-5 pl-5 ">
		<p>Le bon de transport est de 16 chiffres au national et de 9
			chiffres ï¿½ l'international</p>
	</div>
</div>
<form class="form-inline pl-5 ml-5 " name="form" >
<div class="form-row mt-4 mb-5 ">
	<div class="ml-5 pl-5 col-5">
		<input class="multisteps-form__input form-control" type="text" id="suivie" name="suivie"
			placeholder="Tapez votre numï¿½ro(s) de bon de transport" />
	</div>
	<div class="col-5">
		<button class="btn  btn-info  my-1 my-sm-0  ml-5 shadow  rounded" name="validationsuivie"type="submit">Search</button>

	</div>
	
</div>
</form>
<div class="row mt-5">
	<div class=" ml-5 pl-5 col-10 mt-4">

		<label for="exampleFormControlTextarea1" class="form-label">Example
			textarea</label>
		<textarea class="form-control" id="exampleFormControlTextarea1"rows="3">
			
			<%

				String chaine = "";
            if(request.getParameter("suivie")!=null){
                Commande uneCommande= Controleur.selectCommaneWhereIdCommande(Integer.parseInt(request.getParameter("suivie")));
                chaine += uneCommande.getEtats();
                out.print(chaine);
                }
            
            else if (request.getParameter("validationsuivie")==null)  {
            	 chaine += "Veuillez taper un numéro de suivie";
                 
                 out.print(chaine);
            }
            

           %>
			</textarea>
<div class="card border-info mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h5 class="card-title">Info card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
			
		
	</div>
</div>
<div class="button-row d-flex mt-4">
	<button class="btn btn-primary js-btn-prev" type="button" title="Prev">Prï¿½cï¿½dent</button>
</div>
<%@ include file="footer.jsp"%>