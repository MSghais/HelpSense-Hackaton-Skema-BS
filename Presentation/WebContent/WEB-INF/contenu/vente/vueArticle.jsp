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
		
		
		
				<h4> Titre de l'Article : <c:out value="${ modelArticle.article.titre}"/> </h4>
				
				
	<article class="forecast">
				  	
						<span class="image">
					<img src="Images-project/book_savoir.jpg" alt="" />
				</span>
			
							
			  	
			  	  	<article class="day-forecast">
			  	  			<fieldset>     Titre </fieldset>       	<c:out value="${ modelVoir.article.titre}"/>			
			  	  	</article>

								
					
				
						
						<article class="day-forecast">
			  	  		<label> Titre  </label>    	<c:out value="${article.theme}"/>				
			  	  	</article>
						
					
						
						
						<article class="day-forecast">
			  	  		<label> Titre  </label>    	<c:out value="${article.description}"/>				
			  	  	</article>
						
									<article class="day-forecast">
			  	  		<label> Titre  </label>    	<c:out value="${article.contenu}"/>				
			  	  	</article>
						
									<article class="day-forecast">
			  	  		<label> Titre  </label>    	<c:out value="${article.description}"/>				
			  	  	</article>
						
									<article class="day-forecast">
			  	  		<label> Titre  </label>    	<c:out value="${article.frais}"/>				
			  	  	</article>
						
									<article class="day-forecast">
			  	  		<label> Titre  </label>    	<c:out value="${article.prix}"/>				
			  	  	</article>
						
							
				
					<a  href="acheterArticle?acheter=${article.id}" > Acheter </a>
					 

			  	
									
								</article>
		
		
		</div>
		
	
			
		
		<div>
		
		
		
				<h4> <c:out value="${ modelArticle.article.titre}"/> </h4>
				
				
	<article class="forecast">
				  	<c:forEach var="article" items="${modelVoir.article}"> 
	

	

						<span class="image">
					<img src="Images-project/book_savoir.jpg" alt="" />
				</span>
			
							
			  	
			  	  	
					<fieldset>     Titre </fieldset>       	<c:out value="${ modelVoir.article.titre}"/>
								
					
							
						<label> Titre  </label>    	<c:out value="${modelVoir.article.description}"/>
					
								
					<label> Titre  </label>   	<c:out value="${modelVoir.article.theme}"/>
							
						<label> Titre  </label>    	<c:out value="${modelVoir.article.description}"/>
								
							
					<label> Titre  </label>   > <c:out value="${modelVoir.article.contenu}"/>
								
								
							
					<label> Titre  </label>   	<c:out value="${modelVoir.article.frais}"/>
								
							
					<label> Titre  </label>    	<c:out value="${modelVoir.article.prix}"/>
					
				
					<a  href="acheterArticle?acheter=${article.id}" > Acheter </a>
					 
 		
	
				
					
		      </c:forEach>
			  	
									
								</article>
		
		
		</div>
		
		
		
	<h4>Tableau des Articles </h4>
	<div class="table-wrapper">
										<table class="alt">
		
		<thead> <th> Titre </th><th> Description </th> <th> Contenu </th> <th> Frais </th>   <th> Prix </th>    <th> Achat </th> </thead>
			  
			  	<tbody>
			  	
			  	
				<tr>
				
					<td><c:out value="${ modelVoir.article.titre}"/></td>
					
					<td><c:out value="${modelVoir.article.description}"/></td>
					
					<td><c:out value="${modelVoir.article.contenu}"/></td>
					
					
					<td><c:out value="${modelVoir.article.frais}"/></td>
					
					<td><c:out value="${modelVoir.article.prix}"/></td>
				
				</tr> 
		     
		      
		      </tbody>
		      
		</table>
		
		</div>
		
		
		<h4> <c:out value="${ modelVoir.article.titre}"/> </h4>
	<div class="table-wrapper">
										<table class="alt">
		
		<thead> <th> Titre </th><th> Description </th> <th> Contenu </th> <th> Frais </th>   <th> Prix </th>    <th> Achat </th> </thead>
			  
			  	<tbody>
			  	
			  	
				<tr>
				
					<td><c:out value="${ modelVoir.article.titre}"/></td>
					
					<td><c:out value="${modelVoir.article.description}"/></td>
					
					<td><c:out value="${modelVoir.article.contenu}"/></td>
					
					
					<td><c:out value="${modelVoir.article.frais}"/></td>
					
					<td><c:out value="${modelVoir.article.prix}"/></td>
				
				</tr> 
		     
		      
		      </tbody>
		      
		</table>
		
		</div>
		
		
		
	
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