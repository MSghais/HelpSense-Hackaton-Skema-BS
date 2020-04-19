<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="css/siteStyle.css" />
		<link rel="stylesheet" href="assets/css/main.css" />
			<link rel="stylesheet" href="assetsPhantom/css/main.css" >
			
		<%@ include file="/WEB-INF/headerPhantom.jsp" %>
		<title>Ma vue</title>
	</head>
	<body>
	
	
	
	
		<div>
		
		
		
				<fieldset> Fiche </fieldset>
				
				
	<article class="forecast">
	
	<h4> Titre de l'Article : <c:out value="${ modelVoir.article.titre}"/> </h4>
				  	
						<span class="image">
					<img src="Images-project/book_savoir.jpg" alt="" />
				</span>
			

						
						<article class="day-forecast">
			  	  		<label> Theme  </label>    	<c:out value="${modelVoir.article.theme}"/>				
			  	  	</article>
			  	  	
			  	  		
			  	  		
			  	  		
						<article class="day-forecast">
			  	  		<label> Pays  </label>    	<c:out value="${modelVoir.article.pays}"/>				
			  	  	</article>
						
						
						<article class="day-forecast">
			  	  		<label> Rubrique  </label>    	<c:out value="${modelVoir.article.rubrique}"/>				
			  	  	</article>
			  	  	
			  	  	<article class="day-forecast">
			  	  		<label> Secteur  </label>    	<c:out value="${modelVoir.article.secteur}"/>				
			  	  	</article>
						
						
					
						
						<article class="day-forecast">
			  	  		<label> Description  </label>    	<c:out value="${modelVoir.article.description}"/>				
			  	  	</article>
			  	  	
			  	  	
						
									<article class="day-forecast">
			  	  		<label> Contenu  </label>    	<c:out value="${modelVoir.article.contenu}"/>				
			  	  	</article>
						
								
						
	
					 
		
			  			 <a href="voirArticle?like=${article.id}"> 
									<span class="symbol"><img height="70" width="70" src="Images-Project/like.jpg" alt="" /></span><span class="title"> </span>
								</a>
								
						<a href="voirArticle?dislike=${article.id}">  
									<span class="symbol"><img height="70" width="70" src="Images-Project/dislike.png" alt="" /></span><span class="title"> </span>
								</a>
								</article>
		
		
		</div>
		
		
		<fieldset>   Test 2 articles</fieldset>
		
			<article class="forecast">
	
	<h4> Titre de l'Article : <c:out value="${ modelVoir.article.titre}"/> </h4>
				  	
						<span class="image">
					<img src="Images-project/book_savoir.jpg" alt="" />
				</span>
			
							
			  	
			  	  	<article class="day-forecast">
			  	  			<fieldset>     Titre </fieldset>       	<c:out value="${ modelVoir.article.titre}"/>			
			  	  	</article>

								
					
			
			  	  		<label> Theme  </label>    	<c:out value="${modelVoir.article.theme}"/>				
		
			  	  		<label> rubrique  </label>    	<c:out value="${modelVoir.article.rubrique}"/>				
			  	  	</article>
						
			  	  		
			  	  		
						
			  	  		<label> pays  </label>    	<c:out value="${modelVoir.article.pays}"/>				
			  
						
		
				
			  	  		<label> description  </label>    	<c:out value="${modelVoir.article.description}"/>				
			  	
						
									
			  	  		<label> contenu  </label>    	<c:out value="${modelVoir.article.contenu}"/>				
			  	 
						
				  	  		
							

  	
  			 <a href="voirArticle?like=${article.id}"> 
						<span class="symbol"><img height="70" width="70" src="Images-Project/like.jpg" alt="" /></span><span class="title"> </span>
					</a>
					
			<a href="voirArticle?dislike=${article.id}">  
						<span class="symbol"><img height="70" width="70" src="Images-Project/dislike.png" alt="" /></span><span class="title"> </span>
					</a>
						
				
		
		
		</div>
		
		
		
	
	<form action="voirArticle" method="post" > 
	<fieldset>
			<label for="commentaireTest"> Commentez <span class="requis">*</span> </label>
                <input type="text" id="commentaireText" name="commentaireText"   size="250" maxlength="250" />
                 <span class="erreur">${form.erreurs['art_frais']}</span>
                <br />


			<div class="field">
			<textarea name="commentaire" id="commentaire" placeholder="Commenter"></textarea>
		</div>
           

                <input type="submit" value="Envoyez"  name="commentaireArticle" id="commentaireArticle" /> 
                
                <br>
                
                  
                <!--   <button type="button" value="Déposer"  name="acheterArticleButton">  
                  </button> -->
                 <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
					
	</fieldset>
		</form>	
	
			
		
	<div>
	
	
	
	
		
		<h3> Posez un commentaire</h3>
	
	<form action="voirArticle" method="post" > 
	<fieldset>
			<label for="commentaireTest"> Commentez <span class="requis">*</span> </label>
                <input type="text" id="commentaireText" name="commentaireText"   size="250" maxlength="250" />
                 <span class="erreur">${form.erreurs['art_frais']}</span>
                <br />


			<div class="field">
			<textarea name="commentaire" id="commentaire" placeholder="Commenter"></textarea>
		</div>
           

                <input type="submit" value="Envoyez"  name="commentaireArticle" id="commentaireArticle" /> 
                
                <br>
                
                  
                <!--   <button type="button" value="Déposer"  name="acheterArticleButton">  
                  </button> -->
                 <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
					
	</fieldset>
	
	
	

	
	
		<div>
	
			<table class="alt">
		
		
		
	
		 	<h3> Liste des commentaires </h3>
		 	
		 	
		 
  	<c:forEach var="commentaire" items="${modelCommentaire.articleAchat.commentaires}"> 
  	
  	<c:if test="${ articleAchat.status == StatutArticle.DISPONIBLE}">
  	
  	
		<thead> <th> Utilisateur </th><th> Commentaire </th> 	  	<tbody>
			  	
			  	<c:if test="${ !empty articleAchat.commentaires }">
			  	
				<tr>
				
					<td><c:out value="${commentaire.user}"/></td>
					
					<td><c:out value="${ commentaire.contenu}"/></td>
					
		       </c:if>
		      
		      </tbody>
		      
		     
		       
		      </c:if>
		      
		      </c:forEach>
		      
		      
		     
		</table>
		
	
	</div>
		
		
			
	
		</form>	
		
		
	<h4> Article Tableau</h4>
	<div class="table-wrapper">
										<table class="alt">
		
		<thead> <th> Titre </th> <th> Rubrique </th>  <th> Pays </th>
		<th> Description </th> <th> Contenu </th>   <th> Like </th> <th> Dislike  </th></thead>
			  
			  	<tbody>
			  	
			  	
				<tr>
				
					<td><c:out value="${ modelVoir.article.titre}"/></td>
					<td><c:out value="${modelVoir.article.rubrique}"/></td>
					
					
					<td><c:out value="${modelVoir.article.pays}"/></td>
					
					<td><c:out value="${modelVoir.article.description}"/></td>
					
					<td><c:out value="${modelVoir.article.contenu}"/></td>
					
					
				
				
 	
 				<td> <a href="voirArticle?like=${article.id}"> 
					<span class="symbol"><img height="70" width="70" src="Images-Project/like.jpg" alt="" /></span><span class="title"> </span>
				</a>
				
				<td> <a href="voirArticle?dislike=${article.id}">  
					<span class="symbol"><img height="70" width="70" src="Images-Project/dislike.jpg" alt="" /></span><span class="title"> </span>
				</a>
				</tr> 
		     
		      
		      </tbody>
		      
		</table>
		
		</div>
		
		
		<h4> <c:out value="${ modelVoir.article.titre}"/> </h4>
	<div class="table-wrapper">
										<table class="alt">
		
		<thead><th> Titre </th> <th> Rubrique </th>  <th> Pays </th>
		<th> Description </th> <th> Contenu </th>   <th> Like </th> <th> Dislike  </th></thead>
			  
			  	<tbody>
			  	
			  	
				<tr>
				
					<td><c:out value="${ modelVoir.article.titre}"/></td>
					
					<td><c:out value="${modelVoir.article.description}"/></td>
					
					<td><c:out value="${modelVoir.article.contenu}"/></td>
					
					
					<td><c:out value="${modelVoir.article.frais}"/></td>
					
					<td><c:out value="${modelVoir.article.prix}"/></td>
				
					
						<td> <a href="voirArticle?like=${article.id}"> Like
									<span class="symbol"><img height="70" width="70" src="Images-Project/like.jpg" alt="" /></span><span class="title"> </span>
								</a>
								
								<td> <a href="voirArticle?dislike=${article.id}">  Dislike
									<span class="symbol"><img height="70" width="70" src="Images-Project/dislike.jpg" alt="" /></span><span class="title"> </span>
								</a>
				
				</tr> 
		     
		      
		      </tbody>
		      
		</table>
		
		</div>
		
		
			
	<form action="voirArticle" method="post" > 
	<fieldset>
			<label for="commentaireTest"> Commentez <span class="requis">*</span> </label>
                <input type="text" id="commentaireText" name="commentaireText"  size="20" maxlength="10" />
                 <span class="erreur">${form.erreurs['art_frais']}</span>
                <br />


			<div class="field">
			<textarea name="commentaire" id="commentaire" placeholder="Commenter"></textarea>
		</div>
           
              <br>
              
                 
                
                <input type="submit" value="Envoyez"  name="commentaireArticle" id="commentaireArticle" /> 
                
                <br>
                
                  
                <!--   <button type="button" value="Déposer"  name="acheterArticleButton">  
                  </button> -->
                 <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
					
	</fieldset>
		</form>	
		
		
		
	
        <div id="bloc_page">
            
            	<div id="main">
						<div class="inner">
							<h1>Generic Page</h1>
							<span class="image main"><img src="images/pic13.jpg" alt="" /></span>
							<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibuset dolorm diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fergiat. Pellentesque in mi eu massa lacinia malesuada et a elit. Donec urna ex, lacinia in purus ac, pretium pulvinar mauris. Curabitur sapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis entum. Mauris risus lacus, blandit sit amet venenatis non, bibendum vitae dolor. Nunc lorem mauris, fringilla in aliquam at, euismod in lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In non lorem sit amet elit placerat maximus. Pellentesque aliquam maximus risus, vel venenatis mauris vehicula hendrerit.</p>
							<p>Interdum et malesuada fames aue leo mauris, consectetur id ipsum sit amet, fersapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique lorem ipsum dolor.</p>
						</div>
					</div>
					
					
					
					
			<div> 
		

		
		</div>
		
		
		
	</body>
			<%@ include file="/WEB-INF/footerPhantom.jsp" %>
	
</html>