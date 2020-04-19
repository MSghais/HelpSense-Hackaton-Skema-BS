<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	   <%@ include file="/WEB-INF/headerPhantom.jsp" %>
<title>TCHAT</title>
</head>
<body>

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



<form>
	
		
		
		
  <fieldset>
    <legend> Poster vos messages dans le Tchat sélectionné </legend>
    <input id="txtMessage" type="text"><br>
    <input onclick="doCloseConnection();" value="Disconnect" type="button">
    <input onclick="doSendMessage();" value="Send" type="button">
    <br>
    
    <fieldset> Tapez votre message ici Echo : </fieldset>
    <textarea  id="txtAreaEcho" rows="4" cols="50">
    </textarea>
  </fieldset>
</form> 
<script type="text/javascript">
var webSocket;
var msg;
window.addEventListener("load", function(event) { 
	
	webSocket = new WebSocket("ws://localhost:8080/Presentation/wsTchatRubrique");
	var txtAreaEcho = document.getElementById("txtAreaEcho");
	txtAreaEcho.value = "";
	msg = document.getElementById("txtMessage");
	
	webSocket.onopen = function(msgEvent) { 
		txtAreaEcho.value += "Connected ... \n";
	};
	webSocket.onmessage = function(msgEvent) { 
		txtAreaEcho.value += "Server 2 : " + msgEvent.data + "\n";
	};
	webSocket.onclose = function(msgEvent) {
		txtAreaEcho.value += "Disconnect ... \n";
	};
	webSocket.onerror = function(msgEvent) { 
		txtAreaEcho.value += "Error ... \n";
	};
}); 
function doSendMessage() {
    webSocket.send(msg.value);
    msg.value = "";
}
function doCloseConnection(){
    webSocket.close();
}
</script>

         <%@ include file="/WEB-INF/footerPhantom.jsp" %>
</body>
</html>