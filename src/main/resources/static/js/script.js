!function(e) {
  "use strict";
  e(".confirm-delete").on("click", function(event) {
       event.preventDefault();
   confirm("are you sure you want to delete?");
  })
}(jQuery);

$(document).ready(function () {
    $('.format-phone').mask('(000)-000-0000')
});
