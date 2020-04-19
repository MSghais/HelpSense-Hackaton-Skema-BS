<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>

<html>
	<head>
		<title> Sense  Actualités </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	
		<%@ page import="contenu.enume.Pays" %>
		  
		
	</head>
	
	   		<%@ page import="contenu.enume.StatutArticle" %>
		    <%@ include file="/WEB-INF/headerPhantom.jsp" %>
		    
		    	 
		    
									<h1> Donnez du sens a vos News²
						
								</h1>	
									
	<body class="is-preload">
		<!-- Wrapper -->
		

				<!-- Main -->
	<div id="main">
	
	
	
							
				<form>
					<div class="inner">	
						
						  	
						  	
						  	
			  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
			  	  	<h4> Titre de l'Article : <c:out value="${ article.titre}"/> </h4>
	  		 
	  		  	
	  		  		
	  		  	<fieldset> Description : <c:out value="${ article.description}"/>   </fieldset>

					<section >
						<article >
					<span class="image">
					<img src="images/labo-pointer.png" alt="" />
		
				<a href="voirArticle?id=${article.id}"> Voir un article</a>
			
						
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
					
					</form>
				
				
							
							
							
										
								
		
		
					</div>
					
					
				
					
					
		
		
			<form>
					<div class="inner">	
						<h1>Help Sense TESTING
						
								</h1>
						  	
						  	
						  	
			  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
	  		  	<fieldset> Titre : <c:out value="${ article.titre}"/>   </fieldset>
	  		  	

					<section >
						<article >
					<span class="image">
						<img src="images/labo-pointer.png" alt="" />
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
					</form>
				
	
		      
			
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

				
				
				

		<!-- Scripts -->
			

   <%@ include file="/WEB-INF/footerPhantom.jsp" %>
	</body>
</html>


