<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<img src="images/index/carouselle_image.png" class="img-fluid"
	alt="Responsive image" style="width: 100%; height: 400px;">
<div class="row">
	<div class="col-3"></div>
	<div class="col-6">
		<div class="recherche shadow-lg  rounded ">
			<div class="row">
				<div class="col mt-3  ml-3 pl-4 ">
					<h5>E-Logistique</h5>
				</div>
				<div class="col-9 mt-2">
					<form class="form-inline pl-5 ml-5 ">
						<input
							class="form-control mr-sm-2 pl-4 ml-4 shadow  bg-white rounded"
							type="search" placeholder="Entrez votre numéro d'expédition ici"
							aria-label="Search">
						<button class="btn  btn-info  my-1 my-sm-0  ml-5 shadow  rounded"
							type="submit">Search</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-3"></div>
</div>
<div class="row">
	<div class="col-12"></div>
	<div class="triangle_bleu"></div>
</div>
<section class="offre">
	<div class="row">
		<div class="col-4">
			<p class="text-center  font-italic  ">
				Nous garantissons <br> Nos conditions de transport <br>
				Nos délai de livraison <br> Ou nous remboursons la livraison !!
				<br>
			</p>
		</div>
		<div class="col-2">
			<div class="block">
				<div class="hovicon effect-3 sub-b">
					<h5 class="card-title ">C'est parti</h5>
					<a href="page_economy.jsp"> <img src="images/index/envoie.png"
						style="width: 100px; height: 100px; margin-top: 70px;" alt="">

					</a>

				</div>
			</div>
		</div>
		<div class="col-2">
			<div class="block">
				<div class="hovicon effect-3 sub-b">
					<h5 class="card-title ">Suivi</h5>
					<a href="page_suivie.jsp"> <img src="images/index/suivie.png"
						style="width: 100px; height: 100px; margin-top: 60px;" alt="">
					</a>
				</div>
			</div>
		</div>
		<div class="col-2">
			<div class="block">
				<div class="hovicon effect-3 sub-b">
					<h5 class="card-title ">Urgence</h5>
					<a href="page_express.jsp"> <img
						src="images/index/urgence.png"
						style="width: 100px; height: 100px; margin-top: 60px;" alt="">
					</a>
				</div>
			</div>
		</div>
		<div class="col-2">
			<div class="block">
				<div class="hovicon effect-3 sub-b">
					<h5 class="card-title ">Hors gabarit</h5>
					<a href="page_outzise.jsp"> <img
						src="images/index/hors_gabarit.png"
						style="width: 100px; height: 100px; margin-top: 60px;" alt="">
					</a>
				</div>
			</div>
		</div>

	</div>

</section>
<div class="row">
	<div class="triangle_jaune2"></div>
</div>
<div class="row mt-5">
	<div class="col-12">
		<h2 class="text-center"
			style="color: #129BEC; letter-spacing: .1rem; font-family: Segoe UI, Menlo, Monaco, Consolas,"
			Liberation Mono", "CourierNew", monospace !important;">News</h2>
	</div>
</div>
<section class="news mt-5">
	<div class="row">
		<div class="col-5">
			<div class="card mb-3">
				<img src="images/news/image1.png" class="card-img-top" alt="...">
				<div class="card-body">
					<small> <cite title="Source Title"> Communiqué de
							presse du Ministère du Transport du 27 juillet 2020</cite>
					</small>
					<h5 class="card-title pt-2">Coronavirus (COVID-19) : 3 mesures
						pour relancer le fret ferroviaire Afin de soutenir le secteur du
						fret ferroviaire, le Gouvernement a des mesures</h5>
					<img style="margin-left: 180px; height: 2.5px; width: 200px;"
						src="images/news/Trace.png" alt="">
					<p class="card-text">
						<small class="text-muted">Le secteur du fret ferroviaire a
							été particulièrement impacté par la crise sanitaire liée à la
							covid-19. C’est pourquoi le Gouvernement vient d’annoncer
							quelques mesures qui viennent spécifiquement le soutenir. Que
							prévoient-elles ? </small>
					</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>
		<div class="col-3">
			<div class="card">
				<img src="images/news/image2.png" class="card-img-top" alt="...">
				<div class="card-body">
					<small> <cite title="Source Title ">
							Actu-transport-logistique.fr Aérien 23.09.2020</cite>
					</small>
					<h5 class="card-title pt-2">Fret Aérien : l’IATA anticipe le
						transport en masse du vaccin contre la Covid-19</h5>
					<img style="margin-left: 100px; height: 2.5px; width: 100px;"
						src="images/news/Trace.png" alt="">
					<p class="card-text">
						<small class="text-muted">L’Association du transport
							aérien international (IATA) anticipe toutes les difficultés...</small>
					</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>
		<div class="col-4">
			<div class="card">
				<img src="images/news/image3.png" class="card-img-top" alt="...">
				<div class="card-body">
					<small> <cite title="Source Title text-lowercase">
							Actu-transport-logistique.fr Aérien 25.06.2020</cite>
					</small>
					<h5 class="card-title pt-2">L'aéroport de Paris-Vatry s’ouvre
						de nouvelles perspectives grâce à l’e-commerce</h5>
					<img style="margin-left: 140px; height: 2.5px; width: 150px;"
						src="images/news/Trace.png" alt="">
					<p class="card-text">
						<small class="text-muted">La plateforme marnaise a
							accueilli son premier vol de fret e-commerce le 22 juin. Ce
							nouveau type...</small>
					</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>