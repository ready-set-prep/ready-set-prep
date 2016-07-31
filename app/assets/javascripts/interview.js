   $.ajax({
      dataType: "json",
       url: "https://api.pinterest.com/v1/boards/readysetprep/fashionable-interview-attire/pins?access_token=KEYGOESHERE&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
       method: 'GET',
     }) .done(function(json) {
         $('.category-function-bar-items').append('<li id="fashionable">'+ json + '</li>');

//this eaches over the data and console.logs it. we need to do soemthing with it thouhg.
//also I took out the key cause im going to push this so you'll need to stick it back in when you are ready to test it. :)
    $.each(json.data, function(index,item) {
        console.log(item.note+" "+item.link+" "+item.url+""+item.image.original.url)
    });
    //YASSSSSSSSSSSSSSSSSSSSSSSSSS
      console.log("fashion");
      });

     $.ajax({
         dataType: "json",
         url: "https://api.pinterest.com/v1/boards/readysetprep/conservative-interview-attire/pins?access_token=KEYGOESHERE&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
         method: 'GET',
       }) .done(function(json) {
           $('.category-function-bar-items').append('<li id="conservative">' + json + '</li>');

           $.each(json.data, function(index,item) {
               console.log(item.note+" "+item.link+" "+item.url+""+item.image.original.url)
           });
      console.log("consirv");
    });

   $.ajax({
      dataType: "json",
       url: "https://api.pinterest.com/v1/boards/readysetprep/business-casual-interview-attire/pins?access_token=KEYGOESHERE&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
       method: 'GET',
     }) .done(function(json) {
         $('.category-function-bar-items').append('<li id="bizcas">' + json + '</li>');

         $.each(json.data, function(index,item) {
             console.log(item.note+" "+item.link+" "+item.url+""+item.image.original.url)
         });
    console.log("bizcas");
  });

 $.ajax({
    dataType: "json",
     url: "https://api.pinterest.com/v1/boards/readysetprep/casual-interview-attire/pins?access_token=KEYGOESHERE&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link",
     method: 'GET',
   }) .done(function(json) {
        $('.category-function-bar-items').append('<li id="casual">' + json + '</li>');

        $.each(json.data, function(index,item) {
            console.log(item.note+" "+item.link+" "+item.url+""+item.image.original.url)
        });
  console.log("cas");
});
