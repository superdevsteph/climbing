<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>


<html lang="en">
	<style><%@include file="/resources/css/style.css"%></style>

<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
$('.navbar-light .dmenu').hover(function () {
        $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
    }, function () {
        $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
    });
});
</script>

  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i" rel="stylesheet">
</head>
     
 <body>


    <nav class="navbar navbar-expand-sm   navbar-light bg-light fixed-top">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/infos">About</a>
            </li>
            <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
              Espace membre
            </a>
            <div class="dropdown-menu sm-menu">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/login">Se connecter</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/registration">Créer un compte</a>
              
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/topoList">Les topos</a>
          </li>
          <li class="nav-item">
                      <a class="nav-link" href="${pageContext.request.contextPath}/contact">Nous contacter</a>
          </li>
            <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
              Articles récents
            </a>
            <div class="dropdown-menu sm-menu">
              <a class="dropdown-item" href="#">Article 1</a>
              <a class="dropdown-item" href="#">Article 2</a>
              <a class="dropdown-item" href="#">Article 3</a>
              <a class="dropdown-item" href="#">Article 4</a>
              <a class="dropdown-item" href="#">Article 5</a>
              <a class="dropdown-item" href="#">Article 6</a>
            </div>
          </li> 
          </ul>
          <div class="social-part">
            <i class="fa fa-facebook" aria-hidden="true"></i>
            <i class="fa fa-twitter" aria-hidden="true"></i>
            <i class="fa fa-instagram" aria-hidden="true"></i>
          </div>
        </div>
      </nav>
      
 <header class="h-25 d-inline-block">
	<div class="overlay"></div>
	<video autoplay="autoplay" muted="muted"
		loop="loop">
		<source
			src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4"
			type="video/mp4">
	</video>
	<div class="container h-50">
		<div class="d-flex h-100 text-center align-items-center">
			<div class="w-100 text-white">
				<h1 class="display-3">Les amis de l'escalade</h1>
				<p class="lead mb-0">coucou</p>
			</div>
		</div>
	</div>
</header>

	<section class="my-5">
	
			<div class="row">

			

						<form:form class="my-5 center_div col-6" action="saveTopo" method="POST"
							modelAttribute="userForm">
					
						<h2 class="form-signin-heading text-primary">Ajouter un Topo</h2>

						
							<table>
								<tr>
									<td>Nom</td>
									<td><form:input path="toponame" required="required" /></td>
									<td><form:errors path="toponame" class="error-message" /></td>
								</tr>
								<tr>
									<td>Région</td>
									<td><form:input  path="region" required="required"/></td>
									<td><form:errors path="region" class="error-message" /></td>
								</tr>
								<tr>
									<td>Nombre de sites</td>
									<td><form:input path="nbSites" required="required"/></td>
									<td><form:errors path="nbSites" class="error-message" /></td>
								</tr>
								<tr>
									<td>Nombre de secteurs</td>
									<td><form:input path="nbSecteurs" required="required" /></td>
									<td><form:errors path="nbSecteurs" class="error-message" /></td>

								</tr>

								<tr>
									<td>Nombre de voies</td>
									<td><form:input path="nbVoies" required="required"/></td>
									<td><form:errors path="nbVoies" class="error-message" /></td>
								</tr>

								<tr>
									<td>Description</td>
									<td><form:input path="description" required="required"/></td>
									<td><form:errors path="description" class="error-message" /></td>
								</tr>
								<tr>
									<td>Date de publication</td>
									<td><form:input type="date" path="datePublication" required="required"/></td>
									<td><form:errors path="datePublication" class="error-message" /></td>
								</tr>
								
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" value="Submit" required="required"/> <a
										href="${pageContext.request.contextPath}/topoList">Cancel</a>
									</td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</form:form>
					</div>
				
	
		
	</section>
</body>
</html>