import $ from "jquery";

$(document).ready(function() {
  $(".A_DipFace").click(function(e) {
    e.preventDefault();
    $(".M_MenuBar").slideToggle();
    $(this).toggleClass("open");
  });
});
