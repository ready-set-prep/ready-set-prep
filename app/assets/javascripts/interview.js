 $(document).ready(function(){

     $('.ajax-control').on('keyup',function(){
        var charCount = $(this).val().length;
        if(charCount===3){
         var str1='<%=JSON.parse(HTTParty.get("https://api.pinterest.com/v1/boards/readysetprep/business-casual-interview-attire/pins?access_token=AWpsFBiCHYAcu15mAxj6h2h-BkWhFGSLUnqXuFFDRdlMEeBA0gAAAAA&fields=id%2Clink%2Cnote%2Curl%2Cimage%2Cboard%2Coriginal_link))%>'
         $(".result").text(str1);
        }
     });
   });
