
   $.ajax({
      dataType: "json",
       url: "https://api.pinterest.com/v1/boards/readysetprep/fashionable-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
       method: 'GET',
     }) .done(function(json) {
         $('.category-function-bar-items').append('<li id="fashionable">'+ json + '</li>');

    $.each(json.data, function(index,item) {
        $(".pintrestStuff").append("<figure><a href=" + item.url + "><img src=" + item.image.original.url + "></img></a><figcaption>" + item.note + "</figcaption></figure>")
    });
      });

     $.ajax({
         dataType: "json",
         url: "https://api.pinterest.com/v1/boards/readysetprep/conservative-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
         method: 'GET',
       }) .done(function(json) {
           $('.category-function-bar-items').append('<li id="conservative">' + json + '</li>');

           $.each(json.data, function(index,item) {
             $(".pintrestStuff").append("<figure><a href=" + item.url + "><img src=" + item.image.original.url + "></img></a><figcaption>" + item.note + "</figcaption></figure>")
           });
    });

   $.ajax({
      dataType: "json",
       url: "https://api.pinterest.com/v1/boards/readysetprep/business-casual-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
       method: 'GET',
     }) .done(function(json) {
         $('.category-function-bar-items').append('<li id="bizcas">' + json + '</li>');

         $.each(json.data, function(index,item) {
           $(".pintrestStuff").append("<figure><a href=" + item.url + "><img src=" + item.image.original.url + "></img></a><figcaption>" + item.note + "</figcaption></figure>")
         });
  });

 $.ajax({
    dataType: "json",
     url: "https://api.pinterest.com/v1/boards/readysetprep/casual-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
     method: 'GET',
   }) .done(function(json) {
        $('.category-function-bar-items').append('<li id="casual">' + json + '</li>');

        $.each(json.data, function(index,item) {
          $(".pintrestStuff").append("<figure><a href=" + item.url + "><img src=" + item.image.original.url + "></img></a><figcaption>" + item.note + "</figcaption></figure>")
        });
});
