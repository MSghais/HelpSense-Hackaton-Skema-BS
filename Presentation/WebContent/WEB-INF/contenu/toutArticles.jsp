<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>

<html>
	<head>
		<title> Good POEI </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	
		  
		
	</head>
	
	   		<%@ page import="contenu.enume.StatutArticle" %>
		    <%@ include file="/WEB-INF/headerPhantom.jsp" %>
		    
		    	 
		    
									<h1>Cherchez votre bonheur</h1> <br>	
									
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
									
	<form action="toutArticles" method="post">
	<table >
		
			<thead> <th> Titre </th> <th> Theme </th> <th> Description </th> <th> Contenu </th>
			 <th> Frais </th>   <th> Prix </th> <th> Date </th>      <th> Achat </th> </thead>
			  
			  	<tbody>
			  	
			  	
			  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
			  		<tr>	
			  	
						  	<td><c:out value="${ article.titre}"/></td>
								
								<td><c:out value="${article.theme.theme_intitule}"/></td>
								<td><c:out value="${article.description}"/></td>
								
								<td><c:out value="${article.contenu}"/></td>
								
								
								<td><c:out value="${article.frais}"/></td>
								
								<td><c:out value="${article.prix}"/></td>
								
									<td><c:out value="${article.date}"/></td>
								
					
				
						<c:if test="${!empty sessionScope.utilisateur }">
							<td> <a  href="acheterArticle?acheter=${article.id}" > Acheter </a> </td> 
						 </c:if>
 
							
		
				</tr> 
			  	
			  	
			  	
			  	</c:if>
				<tr>
				
					
		      </c:forEach>
		      
		    
		      </tbody>
		      
		</table>
	
	</form>
										
										
										
										
										<form action="Shopping" method="post">			
								<label for="paysVal"> Actu Nationale ?<span class="requis">* </span> </label>
							
		         <select name="paysName"> 
					
					<c:forEach var="pays" items="${paysListe }">
					<option> <c:out value="${pays}"/> </option>
					
					
							
					</c:forEach>
					
					</select>
					
					
									
		 <input type="submit" value="Selectionner"  name="choixPays"  /> 
		 
		 
					
					
					 
		 		
<table>
						
				<thead> 
				<th> Titre </th> <th> Theme </th> <th> Description </th> <th> Contenu </th> 
				<th> Frais </th>   <th> Prix </th>   <th> Achat </th> <th> Voir </th> </thead>
				 
			  
			  	<tbody>
			  	
			  	
			  	<c:forEach var="article" items="${modelContenuSelect.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
	  		  	
			  		<tr>	
			  	
						  	<td><c:out value="${ article.titre}"/></td>
								
								<td><c:out value="${article.theme}"/></td>
								<td><c:out value="${article.description}"/></td>
								
								<td><c:out value="${article.contenu}"/></td>
								
								
								<td><c:out value="${article.frais}"/></td>
								
								<td><c:out value="${article.prix}"/></td>
					
				
					
							<td> <a  href="acheterArticle?acheter=${article.id}" > Acheter </a> </td> 
					 
 		
 								<td>		<a href="voirArticle?id=${article.id}"> Voir un article</a> </td>
			  	
						</tr> 
			  	
			  
			  	
			  	</c:if>
				
				
					
		      </c:forEach>
		</tbody>
		</table>
					
					</form>
					
					
				<form action="Shopping" method="post">		
			<label for="rubrique_name"> Rubrique de l'Article <span class="requis">* </span> </label>
							
							 <select name="rubriqueName" > 
							 
							 
						<c:forEach var="rubriqueVal" items="${rubriquesListe}">
									
									<option> <c:out value="${rubriqueVal}"/> </option>
									
									
							</c:forEach>
					</select>
					
					
		 <input type="submit" value="Selectionner"  name="choixRubrique"  /> 
		 
		 
		 		
<table>
						
				<thead> 
				<th> Titre </th> <th> Theme </th> <th> Description </th> <th> Contenu </th> 
				<th> Frais </th>   <th> Prix </th>   <th> Achat </th> <th> Voir </th> </thead>
				 
			  
			  	<tbody>
			  	
			  	
			  	<c:forEach var="article" items="${modelContenuSelect.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
	  		  	
			  		<tr>	
			  	
						  	<td><c:out value="${ article.titre}"/></td>
								
								<td><c:out value="${article.theme}"/></td>
								<td><c:out value="${article.description}"/></td>
								
								<td><c:out value="${article.contenu}"/></td>
								
								
								<td><c:out value="${article.frais}"/></td>
								
								<td><c:out value="${article.prix}"/></td>
					
				
					
							<td> <a  href="acheterArticle?acheter=${article.id}" > Acheter </a> </td> 
					 
 		
 								<td>		<a href="voirArticle?id=${article.id}"> Voir un article</a> </td>
			  	
						</tr> 
			  	
			  
			  	
			  	</c:if>
				
				
					
		      </c:forEach>
		</tbody>
		</table>
	
	
				</form>	
					
					
					
					
		
		<form action="Shopping" method="post">
		
		<label>  Choissisez un Theme : </label>
					
					
					 <select name="acronymeTheme"> 
					
					<c:forEach var="theme" items="${modelTheme.themes }">
					<option> <c:out value="${theme.theme_intitule}"/> </option>
					
					
							
					</c:forEach>
					
					</select>
				
		 <input type="submit" value="Selectionner"  name="choixTheme"  /> 
						

			
<table>
						
				<thead> 
				<th> Titre </th> <th> Theme </th> <th> Description </th> <th> Contenu </th> 
				<th> Frais </th>   <th> Prix </th>   <th> Achat </th> <th> Voir </th> </thead>
				 
			  
			  	<tbody>
			  	
			  	
			  	<c:forEach var="article" items="${modelContenuSelect.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
	  		  	
			  		<tr>	
			  	
						  	<td><c:out value="${ article.titre}"/></td>
								
								<td><c:out value="${article.theme}"/></td>
								<td><c:out value="${article.description}"/></td>
								
								<td><c:out value="${article.contenu}"/></td>
								
								
								<td><c:out value="${article.frais}"/></td>
								
								<td><c:out value="${article.prix}"/></td>
					
				
					
							<td> <a  href="acheterArticle?acheter=${article.id}" > Acheter </a> </td> 
					 
 		
 								<td>		<a href="voirArticle?id=${article.id}"> Voir un article</a> </td>
			  	
						</tr> 
			  	
			  
			  	
			  	</c:if>
				
				
					
		      </c:forEach>
		</tbody>
		</table>
		
		</form>
	
					
					
					
							<section>
								<h2>Get in touch</h2>
								<form method="post">
								
								
								
									  	<c:forEach var="article" items="${modelContenu.articles}"> 
			  	
			  	<c:if test="${ article.status == StatutArticle.DISPONIBLE}">
			  	
			  	
			  	<article>
			  	
			  	
			  	  	
					<label> Titre  </label>         	<c:out value="${ article.titre}"/>
								
							
						<label> Titre  </label>   	<c:out value="${article.theme}"/>
							
						<label> Titre  </label>    	<c:out value="${article.description}"/>
								
							
					<label> Titre  </label>   > <c:out value="${article.contenu}"/>
								
								
							
					<label> Titre  </label>   	<c:out value="${article.frais}"/>
								
							
					<label> Titre  </label>    	<c:out value="${article.prix}"/>
					
				
					<a  href="acheterArticle?acheter=${article.id}" > Acheter </a>
					 
 				<a href="voirArticle?id=${article.id}"> Voir un article</a>
			  	
			  
			  	
			  	</c:if>
				
				
					
		      </c:forEach>
			  	
			  	
			  	</article>
	  		  	
			  	
			
		      
		      
			
					

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
					 
 		
	
				
					
		      </c:forEach>
			  	
									
								</article>


</section>
				
					

</div>

</section>
				
				
				

		<!-- Scripts -->
			

   <%@ include file="/WEB-INF/footerPhantom.jsp" %>
	</body>
</html>


