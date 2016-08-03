// ALL THIS CODE IS FOR THE DROP-DOWN MENU //
$( document ).ready(function() {


$(".positions").click(function(){
  console.log("test");
  $(".jobcat").toggle();
  });

$(".jobcat").on("click", ".kinds-of", function(){
    console.log($(this).text());
    var clone = ($(this).text());


  $(".chosen-catagory").val(function(index,val){
      event.stopPropagation();
      return clone;

      $(".chosen-catagory").on("click", function(event){
        $(".chosen-catagory").val("");
    });

    });
    console.log("yes");


  });// end of click function  //


});// end of ready function  //
