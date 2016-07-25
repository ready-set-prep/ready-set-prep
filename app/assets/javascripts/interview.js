
// if (navigator.geolocation) {
//        navigator.geolocation.getCurrentPosition(success, error);
//      } else {
//        error('not supported');
//      }

// var directionDisplay;
// var directionsService = new google.maps.DirectionsService();
// var map;
//
//
// window.onload = function() {
//   var startPos;
//
//   var geoSuccess = function(position) {
//     directionsDisplay = new google.maps.DirectionsRenderer();
//         var latlng = new google.maps.LatLng(" ");
//         var mapOptions = {
//           zoom:15,
//           mapTypeId: google.maps.MapTypeId.ROADMAP,
//           center: latlng
//         }
//         map = new;
//         google.maps.Map(document.getElementById('map'), mapOptions);
//         directionsDisplay.setMap(map);
//
//
//
//         var start = current;
//         var end =  position.coords.latitude + ',' + position.coords.longitude;
//         var mode;
//
//         switch ( 'driving' )
//         {
//           case 'bicycling' :
//             mode = google.maps.DirectionsTravelMode.BICYCLING;
//             break;
//           case 'driving':
//             mode = google.maps.DirectionsTravelMode.DRIVING;
//             break;
//           case 'walking':
//             mode = google.maps.DirectionsTravelMode.WALKING;
//             break;
//         }
//
//         var request = {
//             origin:from,
//             destination:to,
//             travelMode: mode
//         };
//
//         directionsService.route(request, function(response, status) {
//           if (status == google.maps.DirectionsStatus.OK) {
//             directionsDisplay.setDirections(response);
//           }
//         });
//
//       }
//
//       function error(msg) {
//               var s = document.querySelector('#status');
//               s.innerHTML = typeof msg == 'string' ? msg : "failed";
//               s.className = 'fail';
//
//               console.log(arguments);
//              }
//     startPos = position;
//     document.getElementById('map').innerHTML = startPos.coords.latitude;
//     document.getElementById('map').innerHTML = startPos.coords.longitude;
//   };
//   var current = navigator.geolocation.getCurrentPosition(geoSuccess);
// };

// if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function(position) {
//         var latitude = position.coords.latitude;
//         var longitude = position.coords.longitude;
//         var geolocpoint = new google.maps.LatLng(latitude, longitude);
//
//         var mapOptions = {
//             zoom: 8,
//             center: geolocpoint,
//             mapTypeId: google.maps.MapTypeId.HYBRID
//         }
//         // Place a marker
//         var geolocation = new google.maps.Marker({
//             position: geolocpoint,
//             map: map,
//             title: 'Your geolocation',
//             icon: 'http://labs.google.com/ridefinder/images/mm_20_green.png'
//         });
//         console.log("yes");
//     });
// }

//  finding current location   //
// window.initMap.function() {
//
//   var map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: -34.397, lng: 150.644},
//     zoom: 15
//   });
//   var infoWindow = new google.maps.InfoWindow({map: map});
//
//   var directionsService = new google.maps.DirectionsService;
//   var directionsDisplay = new google.maps.DirectionsRenderer;
//       directionsDisplay.setMap(map);
//
//   var destination = document.getElementById('destination');
//
//   map.controls[google.maps.ControlPosition.TOP_RIGHT].push(destination);
//   map.setDirectionsService(destination);
//   map.setDirectionsRenderer("destination found");
//
//
//   // Try HTML5 geolocation.
//
//   if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function(position) {
//       var pos = {
//         lat: position.coords.latitude,
//         lng: position.coords.longitude
//       };
//       console.log(pos.lat)
//       console.log(pos.lng)
//
//       infoWindow.setPosition(pos);
//
//       infoWindow.setContent('Location found.');
//
//       map.setCenter(pos);
//       console.log("hurray")
//     },
//
//
//      function() {
//       handleLocationError(true, infoWindow, map.getCenter());
//
//     });
//   } else {
//     // Browser doesn't support Geolocation
//     handleLocationError(false, infoWindow, map.getCenter());
//   }

  // function route(destination_place_id, directionsService, directionsDisplay) {
  //         if (!origin_place_id || !destination_place_id) {
  //           return;
  //         }
  //         directionsService.route({
  //           destination: {'placeId': destination_place_id},
  //         }, function(response, status) {
  //           if (status === google.maps.DirectionsStatus.OK) {
  //             directionsDisplay.setDirections(response);
  //           } else {
  //             window.alert('Directions request failed due to ' + status);
  //           }
  //         });
  //       }
  //     }
//  end finding current locations  //

// this is directions to a place by lat and long //

      //  function initMap() {
      //    var directionsDisplay = new google.maps.DirectionsRenderer;
      //    var directionsService = new google.maps.DirectionsService;
      //    var map = new google.maps.Map(document.getElementById('map'), {
      //      zoom: 14,
      //      center: {lat: 37.77, lng: -122.447}
      //    });
      //    directionsDisplay.setMap(map);
       //
      //    calculateAndDisplayRoute(directionsService, directionsDisplay);
      //    document.getElementById('mode').addEventListener('change', function() {
      //      calculateAndDisplayRoute(directionsService, directionsDisplay);
      //    });
      //  }
       //
      //  function calculateAndDisplayRoute(directionsService, directionsDisplay) {
      //    var selectedMode = document.getElementById('mode').value;
      //    directionsService.route({
      //      origin: {lat: 37.77, lng: -122.447},
      //      destination: {lat: 37.768, lng: -122.511},
      //      travelMode: google.maps.TravelMode[selectedMode]
      //    }, function(response, status) {
      //      if (status == google.maps.DirectionsStatus.OK) {
      //        directionsDisplay.setDirections(response);
      //      } else {
      //        window.alert('Directions request failed due to ' + status);
      //      }
      //    });
      //  }
//         end of directions code    //
/////////////////////////////////////////////////////////////////////////////
// var map;
// var geocoder;
// var myLocation;
// var directionsDisplay = new google.maps.DirectionsRenderer();
// var directionsService = new google.maps.DirectionsService();
//
// var userDirection;
// var userPosition;
//
// var locations = [
//     ['A/P LA PAMPA', -0.0425, -78.4558333333, 1],
//     ['A/P PUSUQUI', -0.0647222222, -78.4655555556, 2]
// ];
//
// ///////////////////////////////////////////////////////////////////////////////
// function initialize() {
//     var infoWindow = null;
//     var opts = {
//         center: new google.maps.LatLng(-1.2, -78.58),
//         zoom: 6
//     };
//     map = new google.maps.Map(document.getElementById('map'), opts);
//     directionsDisplay = new google.maps.DirectionsRenderer({map:map});
//     geocoder = new google.maps.Geocoder();
//     // var image = './images/theme-images/mascot_finder.png';
//     infowindow = new google.maps.InfoWindow({
//         content: "holding..."
//     });
//
//     for (i = 0; i < locations.length; i++) {
//         var currentLatLong = new google.maps.LatLng(locations[i][1], locations[i][2]);
//         marker = new google.maps.Marker({
//             position: currentLatLong,
//             map: map /*,
//             icon: image */
//         });
//
//         google.maps.event.addListener(marker, 'click', (function (marker, i) {
//             return function () {
//                 var userDirection = marker.getPosition();
//                 var userPosition = myLocation.getPosition();
//                 infowindow.setContent(locations[i][0]);
//                 infowindow.open(map, marker);
//                 calcRoute(userDirection, userPosition);
//
//
//             };
//         })(marker, i));
//     }
//
//
//     getMyLocation();
//
// }
