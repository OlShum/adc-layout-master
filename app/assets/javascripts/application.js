//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  $(".A_DipFace").on("click", function() {
    console.log("Click");
    $(".M_MenuBar").css("display", "block");
  });
});
