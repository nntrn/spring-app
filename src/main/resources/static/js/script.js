//format phone number fields
$('.js-format-phone').mask('(000)-000-0000')

// filter tables using the topbar search input 
$(".js-input-table-search").on("keyup", function () {
  var value = $(this).val().toLowerCase();
  $("table tr").filter(function () {
    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
  })
})


$('[data-toggle=confirmation]').confirmation({
  rootSelector: '[data-toggle=confirmation]',
  container: 'body'
});
$('[data-toggle=confirmation-singleton]').confirmation({
  rootSelector: '[data-toggle=confirmation-singleton]',
  container: 'body'
});
$('[data-toggle=confirmation-popout]').confirmation({
  rootSelector: '[data-toggle=confirmation-popout]',
  container: 'body'
});

$('#confirmation-delegate').confirmation({
  selector: 'button'
});

$('[data-toggle=custom-confirmation-events]')
  .confirmation({
    rootSelector: '[data-toggle=custom-confirmation-events]',
    container: 'body'
  })
  .on('mouseenter', function () {
    $(this).confirmation('show');
  })
  .on('myevent', function () {
    alert('"myevent" triggered');
  });
