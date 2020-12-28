

 
adresse_exp = new google.maps.places.Autocomplete(document.getElementById('adresse_exp'), { types: [ 'geocode' ] });
google.maps.event.addListener(adresse_exp, 'place_changed', function() {
  fillInAddress();
});

adresse_compl_exp = new google.maps.places.Autocomplete(document.getElementById('adresse_compl_exp'), { types: [ 'geocode' ] });
google.maps.event.addListener(adresse_compl_exp, 'place_changed', function() {
  fillInAddress();
});

cp_exp = new google.maps.places.Autocomplete(document.getElementById('cp_exp'), { types: [ 'geocode' ] });
google.maps.event.addListener(cp_exp, 'place_changed', function() {
  fillInAddress();
});

ville_exp = new google.maps.places.Autocomplete(document.getElementById('ville_exp'), { types: [ 'geocode' ] });
google.maps.event.addListener(ville_exp, 'place_changed', function() {
  fillInAddress();
});

adresse_dest = new google.maps.places.Autocomplete(document.getElementById('adresse_dest'), { types: [ 'geocode' ] });
google.maps.event.addListener(adresse_dest, 'place_changed', function() {
  fillInAddress();
});

adresse_compl_dest = new google.maps.places.Autocomplete(document.getElementById('adresse_compl_dest'), { types: [ 'geocode' ] });
google.maps.event.addListener(adresse_compl_dest, 'place_changed', function() {
  fillInAddress();
});

cp_dest = new google.maps.places.Autocomplete(document.getElementById('cp_dest'), { types: [ 'geocode' ] });
google.maps.event.addListener(cp_dest, 'place_changed', function() {
  fillInAddress();
});

ville_dest = new google.maps.places.Autocomplete(document.getElementById('ville_dest'), { types: [ 'geocode' ] });
google.maps.event.addListener(ville_dest, 'place_changed', function() {
  fillInAddress();
});



    $(function() {
        // add input listeners
        google.maps.event.addDomListener(window, 'load', function () {
            var ville_exps = new google.maps.places.Autocomplete(document.getElementById('ville_exp'));
            var ville_dests = new google.maps.places.Autocomplete(document.getElementById('ville_dest'));
              
            google.maps.event.addListener(ville_exps, 'place_changed', function () {
                var ville_exp = ville_exps.getPlace();
                var from_address = ville_exp.formatted_address;
                $('#origin').val(from_address);
				
            });

            google.maps.event.addListener(ville_dests, 'place_changed', function () {
                var ville_dest = ville_dests.getPlace();
                var to_address = ville_dest.formatted_address;
                $('#destination').val(to_address);
				
            });

        });
        // calculate distance
        function calculateDistance() {
            var origin = $('#origin').val();
            var destination = $('#destination').val();
            var service = new google.maps.DistanceMatrixService();
            service.getDistanceMatrix(
                {
                    origins: [origin],
                    destinations: [destination],
                    travelMode: google.maps.TravelMode.DRIVING,
                    unitSystem: google.maps.UnitSystem.metric, // kilometers and meters.
                    avoidHighways: false,
                    avoidTolls: false
                }, callback);
        }
        // get distance results
        function callback(response, status) {
            if (status != google.maps.DistanceMatrixStatus.OK) {
                $('#result').html(err);
            } else {
                var origin = response.originAddresses[0];
                var destination = response.destinationAddresses[0];
                if (response.rows[0].elements[0].status === "ZERO_RESULTS") {
                    $('#result').html("Better get on a plane. There are no roads between "  + origin + " and " + destination);
                } else {
                    var distance = response.rows[0].elements[0].distance;
                    console.log(response.rows[0].elements[0].distance);
                    var distance_in_kilo = distance.value / 1000; // the kilom
                   
                    document.forms[0].kilometre.value = distance_in_kilo;
                    console.log( distance_in_kilo);
                    console.log( document.forms[0].kilometre.value);
                   
                }
            }
        }
        // print results on submit the form
         $('#distance_form').submit(function(e){
          
            
             calculateDistance();
         });

    })
    

