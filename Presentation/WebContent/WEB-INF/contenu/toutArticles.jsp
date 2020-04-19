<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>

<html>
	<head>
		<title> Good POEI </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	
		<%@ page import="contenu.enume.Pays" %>
		  
		
	</head>
	
	   		<%@ page import="contenu.enume.StatutArticle" %>
		    <%@ include file="/WEB-INF/headerPhantom.jsp" %>
		    
		    	 
		    
									<h1>Cherchez votre bonheur</h1> <br>	
									
	<body class="is-preload">
		<!-- Wrapper -->
		

				<!-- Main -->
	<div id="main">
	
	
	
							
				
				
							
							
								<h4> Tout les News </h4>
								
								<c:if test="${empty sessionScope.utilisateur }">
								
								<a href="Connexion" > </a>
								
								</c:if>
	<div >
									
	<form action="toutArticles" method="post">
	<table >
		
			<thead>  				 <th> Titre </th> 	<th> Pays </th>
				 <th> Rubrique </th> <th> Secteur </th>
				  <th> Theme </th> <th> Description </th> <th> Contenu </th> 
				   <th> Voir </th> 
				   
				   <th> Like </th> <th> Dislike </th></thead>
				 </thead>
			  
			  	<tbody>
			  	
			  	
			  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
			  		<tr>	
			  	
			  			
						  	<td><c:out value="${ article.titre}"/></td>
								
						  	<td><c:out value="${article.pays.valueOfLabel(pays)}"/></td>
				
								<td><c:out value="${article.rubrique}"/></td>
					
								
								<td><c:out value="${article.secteur}"/></td>
								
								
								<td><c:out value="${article.theme}"/></td>
								
								<td><c:out value="${article.description}"/></td>
								
								<td><c:out value="${article.contenu}"/></td>
								
		
					
				
						 
					
						 <td>	<a href="voirArticle?id=${article.id}"> Voir un article</a> </td>
						 
				
		
	
 				<td> <a href="voirArticle?like=${article.id}"> 
					<span class="symbol"><img height="70" width="70" src="Images-Project/like.jpg" alt="" /></span><span class="title"> </span>
				</a>
				
				<td> <a href="voirArticle?dislike=${article.id}">  
					<span class="symbol"><img height="70" width="70" src="Images-Project/dislike.png" alt="" /></span><span class="title"> </span>
				</a>
				</tr> 
				
				
				</tr> 
			  	

			  	</c:if>
				<tr>
				
					
		      </c:forEach>
		      
		    
		      </tbody>
		      
		</table>
	
	</form>
										
								
		
		
					</div>
					
					
					<div class="inner">	
						<h1>Help Sense Square
						
								</h1>
						  	
						  	
						  	
			  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
	  		  	<fieldset> Titre : <c:out value="${ article.titre}"/>   </fieldset>
	  		  	
	  		  		<fieldset> Description : <c:out value="${ article.description}"/>   </fieldset>
	  		  	

					<section >
						<article >
					<span class="image">
						<img src="images/pic01.jpg" alt="" />
		
		
			
						
					</span>
					
					
						<aside>
						
						<br>
								
								
					 
						</aside>
							
					  
	
						</article>
						
						<a href="voirArticle?id=${article.id}"> Voir un article</a>
	  	
					
					<a href="voirArticle?like=${article.id}"> 
									<span class="symbol"><img height="70" width="70" src="Images-Project/like.jpg" alt="" /></span><span class="title"> </span>
								</a>
								
				<a href="voirArticle?dislike=${article.id}"> 
									<span class="symbol"><img height="70" width="70" src="Images-Project/dislike.png" alt="" /></span><span class="title"></span>
								</a>
		
						</section>
						
					
						
				</c:if>
				</c:forEach>
					
					</div>
				
					
					
		
		
			
					<div class="inner">	
						<h1>Help Sense TESTING
						
								</h1>
						  	
						  	
						  	
			  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
	  		  	<fieldset> Titre : <c:out value="${ article.titre}"/>   </fieldset>
	  		  	

					<section >
						<article >
					<span class="image">
						<img src="images/pic01.jpg" alt="" />
						<a href="voirArticle?id=${article.id}"> Voir un article</a>
	  	
			
						
					</span>
					
					
						<aside>
						
						<br>
								
								
					 
						</aside>
							
					  
	
						</article>
						
						<a href="voirArticle?id=${article.id}"> Voir un article</a>
	  	
					<a href="voirArticle?like=${article.id}"> 
									<span class="symbol"><img height="70" width="70" src="Images-Project/like.jpg" alt="" /></span><span class="title"> Sense</span>
								</a>
								
				<a href="voirArticle?dislike=${article.id}"> 
									<span class="symbol"><img height="70" width="70" src="Images-Project/dislike.png" alt="" /></span><span class="title"> </span>
								</a>
		
						</section>
						
					
						
				</c:if>
				</c:forEach>
					
					</div>
				
	
		      
			
					

<section>

<div>
	<article class="style1">
	
		  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
	
			  	
						
	<article class="forecast">
	
	<h4> Titre de l'Article : <c:out value="${ article.titre}"/> </h4>
				  	
						<span class="image">
					<img src="Images-project/book_savoir.jpg" alt="" />
				</span>
			

						
						<article class="day-forecast">
			  	  		<label> Theme  </label>    	<c:out value="${article.theme}"/>				
			  	  	</article>
			  	  	
			  	  		
			  	  		
			  	  		
						<article class="day-forecast">
			  	  		<label> Pays  </label>    	<c:out value="${article.pays}"/>				
			  	  	</article>
						
						
						<article class="day-forecast">
			  	  		<label> Rubrique  </label>    	<c:out value="${article.rubrique}"/>				
			  	  	</article>
			  	  	
			  	  	<article class="day-forecast">
			  	  		<label> Secteur  </label>    	<c:out value="${article.secteur}"/>				
			  	  	</article>
						
						
					
						
						<article class="day-forecast">
			  	  		<label> Description  </label>    	<c:out value="${article.description}"/>				
			  	  	</article>
			  	  	
			  	  	
						
									<article class="day-forecast">
			  	  		<label> Contenu  </label>    	<c:out value="${article.contenu}"/>				
			  	  	</article>
						
								
						
	
					 
		
			  			 <a href="voirArticle?like=${article.id}"> 
									<span class="symbol"><img height="70" width="70" src="Images-Project/like.jpg" alt="" /></span><span class="title"> </span>
								</a>
								
						<a href="voirArticle?dislike=${article.id}">  
									<span class="symbol"><img height="70" width="70" src="Images-Project/dislike.png" alt="" /></span><span class="title"> </span>
								</a>
								</article>
		
		</c:forEach>
	
		
								

			</div>
			
			</section>
				
				
				

		<!-- Scripts -->
			

   <%@ include file="/WEB-INF/footerPhantom.jsp" %>
	</body>
</html>


