<!DOCTYPE HTML>
<html>
  <head>
  	<script type="text/javascript" src="//code.jquery.com/jquery-2.2.4.min.js"></script>
    <script type="text/javascript">
    	function wslog(message) {
    		$('#ws').append('<p>' + message + '</p>');
    	}
		function wstest() {
			// Constructs the URL
			var loc = window.location;
			var wsuri;
			var timeoutId ;
			if (loc.protocol === "https:") {
			    wsuri = "wss:";
			} else {
			    wsuri = "ws:";
			}
			wsuri += "//" + loc.host;
			wsuri += "/wsocket";
			// Connects
			var ws = new WebSocket(wsuri);
			// Hooks
			ws.onopen = function() {
			   ws.send("Message to send");
			   wslog("Message sent");
			};
			ws.onmessage = function (evt) { 
			   var received_msg = evt.data;
			   wslog("Message received: " + received_msg);
			   timeoutId = window.setTimeout(function() {
				   ws.send("heartbeat");   
				   wslog("Message sent: heartbeat");
			   }, 1000);
			};
			ws.onclose = function() {
				wslog("Connection closed.");
				clearTimeout(timeoutId);
			};
		}
    </script>
  </head>
  <body onload="javascript:wstest()">
	<div id="ws">
	</div>
</body>
</html>

