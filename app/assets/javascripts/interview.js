
if (navigator.geolocation) {
       navigator.geolocation.getCurrentPosition(success, error);
     } else {
       error('not supported');
     }

var directionDisplay;
var directionsService = new google.maps.DirectionsService();
var map;


window.onload = function() {

  var startPos;

  var geoSuccess = function(position) {
    directionsDisplay = new google.maps.DirectionsRenderer();
        var latlng = new google.maps.LatLng(" ");
        var mapOptions = {
          zoom:15,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          center: latlng
        }
        map = new;
        google.maps.Map(document.getElementById('map'), mapOptions);
        directionsDisplay.setMap(map);



        var start = current;
        var end =  position.coords.latitude + ',' + position.coords.longitude;
        var mode;

        switch ( 'driving' )
        {
          case 'bicycling' :
            mode = google.maps.DirectionsTravelMode.BICYCLING;
            break;
          case 'driving':
            mode = google.maps.DirectionsTravelMode.DRIVING;
            break;
          case 'walking':
            mode = google.maps.DirectionsTravelMode.WALKING;
            break;
        }

        var request = {
            origin:from,
            destination:to,
            travelMode: mode
        };

        directionsService.route(request, function(response, status) {
          if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
          }
        });

      }

      function error(msg) {
              var s = document.querySelector('#status');
              s.innerHTML = typeof msg == 'string' ? msg : "failed";
              s.className = 'fail';

              console.log(arguments);
             }
    startPos = position;
    document.getElementById('map').innerHTML = startPos.coords.latitude;
    document.getElementById('map').innerHTML = startPos.coords.longitude;
  };
  var current = navigator.geolocation.getCurrentPosition(geoSuccess);
};
