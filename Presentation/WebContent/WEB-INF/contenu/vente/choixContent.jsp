<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>

<html>
	<head>
		<title> Help Sense Selection </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	
		<%@ page import="contenu.enume.Pays" %>
		    
    		<%@ page import="contenu.enume.Secteur" %>
		  
		
	</head>
	
	   		<%@ page import="contenu.enume.StatutArticle" %>
		    <%@ include file="/WEB-INF/headerPhantom.jsp" %>
		    
		    	 
		    
									<h1>Selectionner vos Envies </h1> <br>	
					
					
									
	<form>
	<nav>
	
	<ul>
	

	<li>
	<div class="pays"	>	
			<label for="paysVal"> Actu Nationale ?<span class="requis">* </span> </label>
							
		         <select name="paysName"> 
					
					<c:forEach var="pays" items="${paysListe }">
					<option> <c:out value="${pays}"/> </option>
					
					
							
					</c:forEach>
					
					</select>
					
					
									
		 <input type="submit" value="Selectionner"  name="choixPays"  /> 
		 </div>
		 </li>
		 
		 
		 <li>
		 <div class="rubriques"	>	
		 <label for="rubrique_name"> Rubrique de l'Article <span class="requis">* </span> </label>
							
							 <select name="choixRubrique" > 
							 
							 
						<c:forEach var="rubriqueVal" items="${rubriquesListe}">
									
									<option> <c:out value="${rubriqueVal}"/> </option>
									
									
							</c:forEach>
					</select>
		 <input type="submit" value="Selectionner"  name="choixRubrique"  /> 
			
					</div>
			</li>		
					
					
					
		<li>
		<div class="theme">
		
			<label>  Choissisez un Theme : </label>
					
					
					 <select name="acronymeTheme"> 
					
					<c:forEach var="theme" items="${modelTheme.themes }">
					<option> <c:out value="${theme.theme_intitule}"/> </option>
					
					
							
							
					</c:forEach>
					
					</select>
				
		 <input type="submit" value="Selectionner"  name="choixTheme"  /> 
						
		
		</div>
	</li>
	
	</ul>
	
	</nav>
			
	</form>		
					
									
	<body class="is-preload">
		<!-- Wrapper -->
		

				<!-- Main -->
	<div id="main">
	
	
		<section >
							
						<div class="inner">
				
							
							
								<h4>Tableau des Articles </h4>
								
								<c:if test="${empty sessionScope.utilisateur }">
								
								<a href="Connexion" > </a>
								
								</c:if>
	<div >
									
	
										
										
		
	
		
	
					
					 
		 		
<table>
						
				<thead> 
				<th> Pays </th> <th> Titre </th> 	
				 <th> Rubrique </th> <th> Secteur </th>
				  <th> Theme </th> <th> Description </th> <th> Contenu </th> 
				   <th> Achat </th> <th> Voir </th> </thead>
				 
			  
			  	<tbody>
			  	
			  	
			  	<c:forEach var="article" items="${modelContenuSelect.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
	  		  	
			  		<tr>	
			  	
			  			<td><c:out value="${article.pays}"/></td>
			  			
						  	<td><c:out value="${ article.titre}"/></td>
								
				
								<td><c:out value="${article.rubrique}"/></td>
					
								
								<td><c:out value="${article.secteur}"/></td>
								
								
								<td><c:out value="${article.theme}"/></td>
								
								<td><c:out value="${article.description}"/></td>
								
								<td><c:out value="${article.contenu}"/></td>
								
								
							
				
					
							<td> <a  href="acheterArticle?acheter=${article.id}" > Acheter </a> </td> 
					 
 		
							<td>		<a href="voirArticle?id=${article.id}"> Voir un article</a> </td>
			  	
						</tr> 
			  	
			  
			  	
			  	</c:if>
				
				
					
		      </c:forEach>
		</tbody>
		</table>
					
					</form>
					
					
				
					
		
		<form action="choixContenu" method="post">
		

					
					
					
							<section>
								<h2>Get in touch</h2>
								<form method="post">
								
								
								
									  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	
			  	  	<article>
			  	  	
			  	  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
			  	
			
			  	
			  	
			  	  	
					<label> Titre  </label>         	<c:out value="${ article.titre}"/>
								
							
						<label> Titre  </label>   	<c:out value="${article.theme}"/>
							
						<label> Titre  </label>    	<c:out value="${article.description}"/>
								
							
					<label> Titre  </label>   > <c:out value="${article.contenu}"/>
								
								
							
					<label> Titre  </label>   	<c:out value="${article.frais}"/>
								
							
					<label> Titre  </label>    	<c:out value="${article.prix}"/>
					
				
					<a  href="acheterArticle?acheter=${article.id}" > Acheter </a>
					 
 				<a href="voirArticle?id=${article.id}"> Voir un article</a>
			  	
			  
			  	
			  	</c:if>
				
							  	
			  	</article>
					
		      </c:forEach>
			  	

	  		  	
			  	
			
		      </form>
		      
		      </section>
		      
			
					

<section>

	<article class="style1">
									  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
	
			  	
			
			  						<span class="image">
										<img src="Images-project/book_savoir.jpg" alt="" />
									</span>
									<a href="voirArticle?id="${article.id }"></a>
												
			  	
			  	  	
					<label> Titre  </label>         	<c:out value="${ article.titre}"/>
								
					
							
						<label> Titre  </label>    	<c:out value="${article.description}"/>
					
								
					
				
					<a  href="acheterArticle?acheter=${article.id}" > Acheter </a>
					 
 		
 		
					
						 <td>	<a href="voirArticle?id=${article.id}"> Voir un article</a> </td>
 
							
	
				
					
		      </c:forEach>
			  	
									
								</article>


</section>
				
					

</div>

</section>
				
				
				

		<!-- Scripts -->
			

   <%@ include file="/WEB-INF/footerPhantom.jsp" %>
	</body>
</html>


