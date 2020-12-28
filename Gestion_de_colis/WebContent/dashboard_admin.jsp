<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="controleur.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style/style2.css">
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
	<div id="content " class="content   bg-dark">
		<div id="content-header">
			<div class="row justify-content-end">
				<div class="col-2 mt-3 mb-3">
					<a href="#" title="Go to Home"
						class="deconexion  btn-sm rounded-pill"><i class="icon-home"></i>
						Déconnexion</a>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-3">
					<div class="row">
						<div class="profil col-10 ml-4">
							<div class="row">
								<div class=" col-2 pt-2 pl-2">
									<img src="images/admin/kisspng-computer-icons-avatar-.png"
										width="50px" height="50px" />
								</div>
								<div class="col-4 ml-2 pt-3 h6 text-light">
									<p>Kevin Gillot</p>
								</div>
								<div class="col-3 ml-1 pt-2 h6 text-light">
									<p>Poste:</p>
									<p class="text-white-50">Gestionaires</p>
								</div>
							</div>


						</div>
					</div>
					<div class="row mt-5">
						<div class=" col-10 mt-5">

							<div class=" btnd d-grid gap-2 col-12 mx-auto btn-group-vertical">
								<button type="button" class=" btn pb-2 ">
									<img src="images/admin/search.png">&emsp;&emsp;Recherche
								</button>
								<button type="button" class="btn pb-2 border-top border-dark">
									<img src="images/admin/bar-chart_1.png">&emsp;&emsp;Statistique
								</button>
								<button type="button" class="btn pb-2 border-top border-dark">
									<img src="images/admin/shipped_2.png">&emsp;&emsp;Transporteur
								</button>
								<button type="button" class="btn pb-2 border-top border-dark">
									<img src="images/admin/plus.png">&emsp;&emsp;&emsp;&emsp;Ajout
								</button>
							</div>
							<!-- <li><a href="index.html" class="btn  rounded-0 " ><img src="image/search.png"></i> <span>Recherche</span></a> </li>
                                    <li><a href="charts.html"class="btn   "><i class="icon icon-signal"></i> <span>Statistique</span></a> </li>
                                    <li><a href="widgets.html"class="btn  " ><i class="icon icon-inbox"></i> <span>Transporteur</span></a> </li>
                                    <li><a href="tables.html"class="btn  "><i class="icon icon-th"></i> <span>Ajout</span></a></li> -->
						</div>
					</div>
				</div>
				<div class="view col-9 "
					style="border-top-left-radius: 30px 30px; border-bottom-left-radius: 30px 30px; height: 690px; background-color: #EBEBEB;">
					<div class="recherche_input row mt-5 ml-5">
						<div class="col-2 ">
							<input type="text" class="rounded-pill text-center border "
								id="suivie" placeholder="n°suvis" size="15">
						</div>
						<div class="col-2">
							<input type="text" class="rounded-pill text-center border "
								id="nom" placeholder="nom" size="15">
						</div>
						<div class="col-2">
							<input type="text" class="rounded-pill text-center border "
								id="date" placeholder="date" size="15">
						</div>
						<div class="col-2">
							<select name="type" class="rounded-pill text-center border"
								style="color: #2E4765; width: 150px">
								<option value="">Standar</option>
								<option value="dog">Express</option>
								<option value="cat">Outsize</option>
							</select>
						</div>
						<div class="col-3">
							<select name="city"
								class="localite rounded-pill text-end border "
								style="color: #2E4765; width: 150px">
								<option value="">city</option>
								<option value="dog">Paris</option>
								<option value="cat">Londre</option>
								<option value="hamster">Milan</option>
							</select>
						</div>
					</div>
					<div class="container vertical-scrollable">
						<%
		String chaine =""; 
		
		
		
		ArrayList<Transporteur> lesTransporteurs=  Controleur.selectAllTransporteur();
		chaine += "<div class='overflow-auto'style='height:600px'>";
		for (Transporteur unTransporteur: lesTransporteurs)
		{

			chaine += "<div class='recherche row mt-1  pt-3'>"; 
			chaine += "<table class='table'>";
			chaine += "<div class='col-1 '>"; 
			chaine += "<a href='dashboard_admin_detail_transporteur.jsp?id_transport="+unTransporteur.getId_transport()+" 'class='btn  btn-sm btn-outline-info ml-1'>Info</a>"; 
			chaine += "</div>"; 
			chaine += "<div class='col-10'>"; 
			chaine += "<div class='row pt-3 bg-light border rounded'>"; 
			chaine += " <div class='col-2 h6'>"; 
			chaine += " <p>"+unTransporteur.getNom_transporteur()+"</p>"; 
			chaine += "</div>"; 
			chaine += "<div class='col-2 h6'>";
			chaine += "<p>N°Suivie</p>";
			chaine += " <p>"+unTransporteur.getVille_transporteur()+"</p>";
			chaine += "</div>";
			chaine += " <div class='col-1 h6'>";
			chaine += "<p>NbColis</p>";
			chaine += "<p>"+unTransporteur.getCode_postal()+"</p>";
			chaine += "</div>";
			chaine += "<div class='col-1 h6'>";
			chaine += "<p>Type</p>";
			chaine += "<p>Standard</p>";
			chaine += "</div>";
			chaine += "<div class='col-1 h6 '>";
			chaine += " <p>Etat</p>";
			chaine += "<p>"+unTransporteur.getTarif_au_km()+"</p>";
			chaine += "</div>";		
			chaine += "</table>"; 
			chaine += "</div>"; 
			
		}
		chaine += "</div>"; 
		out.print(chaine);
	%>
					</div>
					<script  src="javascript/script.js"></script>
			        <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" />
			        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
			        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>