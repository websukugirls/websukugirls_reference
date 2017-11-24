// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require_tree .
//= require marked

// $(".hover").mouseleave(
//   function () {
//     $(this).removeClass("hover");
//   }
// );

console.log(marked("##hello"))

$(window).on("load", function() {
  $(function() {
    $("#editor textarea").each(function() {
      $(this).bind('keyup', previewMarkdown(this));
    });

    function previewMarkdown(elm) {
      var v, old = elm.value;
      return function() {
        if(old != (v=elm.value)) {
          old = v
          str = $(this).val();
          $("#preview").html(marked(str));
        }
      }
    }
  });
});
