jQuery(document).ready(function($) {
  $(".alert" ).fadeOut(3000);
  $(".flash" ).fadeOut(3000);
  $(".ytp-copylink-button").remove();
  $(".media-youtube-player").contents().find(".ytp-pause-overlay").remove();

  $("#myVideo").bind("ended", function() {
    $("#myVideo").remove();
    $('.one-time').removeClass("d-none");
  });
});
