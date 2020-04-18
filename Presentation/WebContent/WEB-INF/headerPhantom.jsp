<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<div id="wrapper">
	<title> Help Sense ! </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assetsPhantom/css/main.css" />

		<%@ page import="utilisateurs.entite.Role" %>
		
				<!-- Header -->
				
						
						
						
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a href="Shopping" class="logo">
									<span class="symbol"><img src="images/logo.svg" alt="" /></span><span class="title"> Help Sense</span>
								</a>

							<!-- Nav -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

<div>

<!--  Menu BAR UP  -->
	
                <nav >
                    <ul>
                   	 <li><a href="Accueil"> Accueil</a></li>
                      	

				 			<li><a href="Shopping"> Actualités </a></li>
							 
					
				
						<c:if test="${sessionScope.userRole == Role.Administrateur }">
							<li> <a href="gererCategories"> Creer une Categorie</a>
						<select name="acronymeThemeHeader" value="exploration" > 
														
														<c:forEach var="theme" items="${modelTheme.themes }">
														<option> <c:out value="${theme.theme_intitule}"/> </option>
														
														</c:forEach>
					
														</select>
									</li> 
						</c:if>
				
						<c:if test="${!empty sessionScope.userId}">
					
					
							  
							  
									<ul >
									
										<li> <a  href="addArticleMVC"> Déposer une Analyse </a> </li> 
									
											
											
										<li> <a  href="mesCommandes"> Mes échanges </a> </li> 
										
									
												
										
										<li> <a href="choixContenu"> Explorer par Feeds </a>
											<select name="rubriqueName"  > 
														
														<c:forEach var="rubrique" items="${rubriquesList }">
														<option> <c:out value="${rubrique}"/> </option>
														
														</c:forEach>
					
														</select>
														
														</li>											
										
										
									
									
										
										
										
										<li> <a  href="Forum"> Forum </a> </li> 
														
														
									
									</ul>
							
							</c:if>	
				
			
	 			
							 
							 		
							<c:if test="${empty sessionScope.utilisateur}">
							   
							<ul>										
												 
							 <li > 
							 
							 <a class="dropdown-item bg-dark  text-light"href="Connexion">Connexion</a> </li>
							
								 
							 <li> <a class="dropdown-item bg-dark  text-light" href="Inscription">Incription</a></li>
								
							</ul>
							</c:if>
							
 	
 	
 						  
                 		<c:if test="${!empty sessionScope.utilisateur}">
                    
                   
										<ol>
										
										
											<li value="DashBoard"> 
										
										 ${sessionScope.utilisateur.login} : <a href="deconnexion">Déconnexion</a>
										
											
										<li> <a  href="mesVentes"> Mes Analyses </a> </li> 
									
										<li> <a href="gererCategories"> Creer une Categorie</a>
										<select name="acronymeThemeHeader"  > 
														
														<c:forEach var="theme" items="${modelTheme.themes }">
														<option> <c:out value="${theme.theme_intitule}"/> </option>
														
														</c:forEach>
					
														</select>
														
														</li>
														
										<li> <a href="mesAchats"> Mes Follows </a> </li> 
										
										
										
										
										</ol>
										
										
										
                    		</c:if>
 	
                   	
                   	 </ul>
                    
                    
                    
                    
                  </nav>
                
				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						
					
						<ul>
						<p> <li><a href="Accueil"> Accueil</a></li>    </p>
						 
						 
						 

				 			<li><a href="Shopping"> Shopping </a></li>
							 
												
													<a href="vueArticle.jsp"> Explorer </a>
													<select name="acronymeThemeHeader" value="exploration" > 
														
														<c:forEach var="theme" items="${modelTheme.themes }">
														<option> <c:out value="${theme.theme_intitule}"/> </option>
														
														</c:forEach>
					
														</select>
													
						
						
						</ul>
						 
						
					
				
				
				
				<c:if test="${!empty sessionScope.userId}">
					
					
							  
							  
									<ul >
									
										<li> <a class="dropdown-item bg-dark  text-light" href="addArticleMVC"> Déposer un Article</a> </li> 
											
											
											
										<li> <a class="dropdown-item bg-dark  text-light" href="mesCommandes"> Commandes </a> </li> 
											
										<li> <a class="dropdown-item bg-dark  text-light" href="mesVentes"> Mes Ventes </a> </li> 
												
												
												
										<li> <a class="dropdown-item bg-dark  text-light" href="mesAchats"> Mes Achats</a> </li> 
																						
										<li> ${sessionScope.utilisateur.login} : <a href="deconnexion">Déconnexion</a> </li> 	
													

									
									</ul>
							
							</c:if>	
							
							
					
									<c:if test="${empty sessionScope.userId}">
									
									
									<ul>
													<li> <a href="Connexion">Connexion</a> </li>
							
								 <li> <a href="signUser">Incription</a></li> </li>
								 
									
									</ul>
				
								</c:if>
								
							
										

				
							</nav>
					
			
					
					<div>
					
					
				
                
                </div>
                
                
		</div>			
					
					</html>
					
		