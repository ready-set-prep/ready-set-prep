
$(document).ready(function(){

$(".show").on("click",function(){
  console.log("test");
  // $('.category-function-bar-items').addClass('animated slideInDown');
  $(".category-function-bar-items").css("display", "block");
  $(".show").css("display", "none");
  $(".hide").css("display", "block");
  });
  $(".hide").on("click",function(){
    console.log("again");
    // $('.category-function-bar-items').addClass('animated slideOutUp');
    $(".category-function-bar-items").css("display", "none");
    $(".hide").css("display", "none");
    $(".show").css("display", "block");
    });
});





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
