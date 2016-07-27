// ALL THIS CODE IS FOR THE DROP-DOWN MENU //
$( document ).ready(function() {


$(".positions").click(function(){
  console.log("test");
  $(".jobcat").toggle();
  });
// $(".jobcat").animate({ scrollTop: $(".jobcat")[0].scrollHeight}, 1000);
$(".jobcat").on("click", ".kinds-of", function(){
  console.log(this);
  $(".chosen-catagory").text(this.val());//  getting close; still need to tweek //
});
  console.log("test again");
});
