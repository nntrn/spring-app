!function(e) {
  "use strict";
  e(".confirm-delete").on("click", function(event) {
       event.preventDefault();
   confirm("are you sure you want to delete?");
  })
}(jQuery);

$(document).ready(function () {
    $('.format-phone').mask('(000)-000-0000')
})

$(document).ready(function(){
  $("#global-search").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("table tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
})
