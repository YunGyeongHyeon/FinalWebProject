<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/jquery-3.4.1.min.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css">
		<script type="text/javascript" src="<%=application.getContextPath() %>/resources/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7fc91c58f8e6b8882e86ec0f088ab95b"></script>
		<script async defer
	   	 	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA6QqekZ1wnL7A8e0nPlnEsHowprAdcm8c&callback=initMap">
	    </script>

		<script>
		 var labels = 'F';
	      var labelIndex = 0;
			// Initialize and add the map
			function initMap() {
			  // The location of Uluru
			  var uluru = {lat: 37.495068, lng: 127.122448};
			  // The map, centered at Uluru
			  var map = new google.maps.Map(
			      document.getElementById('map'), {zoom: 15, center: uluru});

			  google.maps.event.addListener(map, 'click', function(event) {
		          addMarker(event.latLng, map);
		        });

		        // Add a marker at the center of the map.
		        addMarker(uluru, map);
		        
		        
		      }
			// Adds a marker to the map.
		      function addMarker(location, map) {
		    	//Marker remove
		    	  if(labelIndex != 0){
			    	  marker.setMap(null);
				}
		    	
		        // Add the marker at the clicked location, and add the next-available label
		        // from the array of alphabetical characters.
		        marker = new google.maps.Marker({
		          position: location,
		          label: labels[labelIndex++ % labels.length],
		          map: map
		        });
		        
		      }
	     </script>
	</head>
	<body>
		<div id="map" style="width:1080px;height:1600px;"></div>
	</body>
</html>