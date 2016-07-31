function myFunction() {
  console.log("refresh")
    location.reload();
}




         $.ajax({
            dataType: "json",
             url: "https://api.pinterest.com/v1/boards/readysetprep/fashionable-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
             method: 'GET',
           }) .done(function(json) {
               $('.category-function-bar-items').append('<li id="fashionable">'+ json + '</li>');

            console.log(json);
            console.log("thank you");
            });//  $('input').val("");



    console.log("please God");

           $.ajax({
               dataType: "json",
               url: "https://api.pinterest.com/v1/boards/readysetprep/conservative-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
               method: 'GET',
             }) .done(function(json) {
                 $('.category-function-bar-items').append('<li id="conservative">' + json + '</li>');

            console.log(json);
            console.log("now");
          });





  console.log("just maybe");

         $.ajax({
            dataType: "json",
             url: "https://api.pinterest.com/v1/boards/readysetprep/buisness-casual-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
             method: 'GET',
           }) .done(function(json) {
               $('.category-function-bar-items').append('<li id="bizcas">' + json + '</li>');

          console.log(json);
        });




  console.log("I know it's possible");

       $.ajax({
          dataType: "json",
           url: "https://api.pinterest.com/v1/boards/readysetprep/casual-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
           method: 'GET',
         }) .done(function(json) {
              $('.category-function-bar-items').append('<li id="casual">' + json + '</li>');

        console.log(json);
      });
