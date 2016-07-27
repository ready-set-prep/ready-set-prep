// ALL THIS CODE IS FOR THE DROP-DOWN MENU //
$( document ).ready(function() {


$(".positions").click(function(){
  console.log("test");
  $(".jobcat").toggle();
  });
// $(".jobcat").animate({ scrollTop: $(".jobcat")[0].scrollHeight}, 1000);
$(".jobcat").on("click", ".kinds-of", function(){
    // event.stopPropagation();
    // $("#chosen-catagory").get( 0 );
    console.log($(this).text());
    $( ".chosen-catagory" ).text( $(this).val());
    // $(".chosen-catagory").val(function(index,val){
      return $(this).val();

    });
    // $(".kinds-of").text();
    // console.log("wee");
    $(this).remove();
  });

  // console.log(this);
  // $("#chosen-catagory").text();//  getting close; still need to tweek //
  // console.log('#chosen-text');
  // $( ".kinds-of" )[ 0 ];
  // $(".jobcat :selected").val("0");
  // console.log("wee");
  // $(".kinds-of")[0].selectedIndex = 0;
// });
//   console.log("test again");
