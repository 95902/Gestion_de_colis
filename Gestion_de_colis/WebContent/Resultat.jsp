<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="controleur.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>


<%
    String chaine ="";
	Commande uneCommande= Controleur.selectCommaneWhere(Integer.parseInt(session.getAttribute("id").toString()));
	Colis unColis=Controleur.selectColisWhere(Integer.parseInt(session.getAttribute("id").toString()));
	System.out.print(unColis.getId_categorie());
	
	Adresse uneAdresse = Controleur.selectAdresseExp(uneCommande.getId_adresse());
	Adresse unAdressedest =Controleur.selectAdresseExp(uneCommande.getId_adresse());
	
            chaine += "<div class='form-row mt-5'>"; 
            chaine += "<div class='col-2'>";
            chaine += "<h6>Adresse d’expédition</h6>";
            chaine += "</div>";
            chaine += "<div class='col-1 mt-4'>";
            chaine += "<img src='images/offres/Trace.png' alt='' width='75px'height='3px' style='transform: rotate(90deg);'>"; 
            chaine += "</div>";
            chaine += " <div class='col-3'>"; 
            chaine += "<p>"+uneAdresse.getNom()+"<br>"+uneAdresse.getAddresse_id_user()+"<br>"+uneAdresse.getCode_postale()+""+uneAdresse.getVille()+"<br>"+uneAdresse.getEmail()+""+uneAdresse.getTelephone()+"</p>";
            chaine += "</div>";
            chaine += "<div class='col-2'>";
            chaine += "<h6>Adresse de reception</h6>";
            chaine += "</div>";
            chaine += "<div class='col-1 mt-4'>";
            chaine += "<img src='images/offres/Trace.png' alt='' width='75px' height='3px' style='transform: rotate(90deg);'>";
            chaine += "</div>";
            chaine += "<div class='col-3'>";
            chaine += "<p>"+unAdressedest.getNom()+"<br>"+unAdressedest.getAddresse_id_user()+"<br>"+unAdressedest.getCode_postale()+""+unAdressedest.getVille()+"<br>"+unAdressedest.getEmail()+""+unAdressedest.getTelephone()+"</p>";
            chaine += "</div>";
            chaine += "</div>";
            chaine += "<div class='row mt-3 ml-5'>";
            chaine += "<div class='col-2' style='background-color: #D6D6D6'>"; 
            chaine += "<p>Nb Colis:</p>"; 
            chaine += "</div>"; 
            chaine += "<div class='col-2' style='background-color: #D6D6D6'>"; 
            chaine += "<p>"+uneCommande.getNbcolis()+"</p>"; 
            chaine += "</div>"; 
            chaine += "</div>"; 
            chaine += "<div class='row  ml-5'>"; 
            chaine += "<div class='col-2' style='background-color: #D6D6D6'>"; 
            chaine += "<p>Type envoie:</p>"; 
            chaine += "</div>"; 
            chaine += "<div class='col-2' style='background-color: #D6D6D6'>"; 
            chaine += "<p>"+unColis.getId_type_envoie()+"</p>";
            chaine += "</div>"; 
            chaine += "</div>";
            chaine += "<div class='row  ml-5'>"; 
            chaine += "<div class='col-2' style='background-color: #D6D6D6'>"; 
            chaine += "<p>Type service:</p>"; 
            chaine += "</div>"; 
            chaine += "<div class='col-2' style='background-color: #D6D6D6'>"; 
            chaine += "<p>"+unColis.getId_categorie()+"</p>";
            chaine += "</div>"; 
            chaine += "</div>";
            chaine += "<div class='row ml-5 '>"; 
            chaine += "<div class='col-2' style='background-color: #D6D6D6'>";
            chaine += " <p>TOTAL TTC:</p>"; 
            chaine += "</div>";
            chaine += "<div class='col-2' style='background-color: #D6D6D6'>"; 
            chaine += "<p>"+uneCommande.getMontant()+"</p>";
            chaine += "</div>"; 
            chaine += "</div>";        
         

            out.print(chaine);
%>
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
 <div class="row justify-content-end ">
     <div class="col-2 mr-5">
        <a href="index.jsp" class="btn btn-primary   js-btn-prev" type="button"title="Retour">Retour</a>  
     </div>
   
 </div>

<%@ include file="footer.jsp"%>