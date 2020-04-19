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
		
			<thead>  				<th> Pays </th> <th> Titre </th> 	
				 <th> Rubrique </th> <th> Secteur </th>
				  <th> Theme </th> <th> Description </th> <th> Contenu </th> 
				   <th> Achat </th> <th> Voir </th> </thead>
				 </thead>
			  
			  	<tbody>
			  	
			  	
			  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
			  		<tr>	
			  	
						  	<td><c:out value="${article.pays.valueOfLabel(pays)}"/></td>
			  			
						  	<td><c:out value="${ article.titre}"/></td>
								
				
								<td><c:out value="${article.rubrique}"/></td>
					
								
								<td><c:out value="${article.secteur}"/></td>
								
								
								<td><c:out value="${article.theme}"/></td>
								
								<td><c:out value="${article.description}"/></td>
								
								<td><c:out value="${article.contenu}"/></td>
								
		
					
				
						<c:if test="${!empty sessionScope.utilisateur }">
							<td> <a  href="acheterArticle?acheter=${article.id}" > Acheter </a> </td> 
						 </c:if>
						 
					
						 <td>	<a href="voirArticle?id=${article.id}"> Voir un article</a> </td>
 
							
		
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
					
	  		<a href="voirArticle?id=${article.id}"> Voir un article</a>
			
						
					</span>
					
					
						<aside>
						
						<br>
								
								
					 
						</aside>
							
					  
	
						</article>
						
						<a href="voirArticle?id=${article.id}"> Voir un article</a>
	  	
					
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
	  	
					
						</section>
						
					
						
				</c:if>
				</c:forEach>
					
					</div>
				
	
		      
			
					

<section>

	<article class="style1">
									  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
	
			  	
			
			  						<span class="image">
										<img src="images/pic01.jpg" alt="" />
									</span>
									<a href="voirArticle?id="${article.id }"></a>
												
			  	
			  	  	
					<label> Titre  </label>         	<c:out value="${ article.titre}"/>
								
					
							
						<label> Titre  </label>    	<c:out value="${article.description}"/>
					
								
					
				
					<a  href="acheterArticle?acheter=${article.id}" > Acheter </a>
					 
 		
	
				
					
		      </c:forEach>
			  	
									
								</article>


</section>
				
					

</div>

</section>
				
				
				

		<!-- Scripts -->
			

   <%@ include file="/WEB-INF/footerPhantom.jsp" %>
	</body>
</html>


