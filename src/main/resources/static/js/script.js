$(document).ready(function () {

    // pop up dialog when a user attempts to delete 
    $('.confirm-delete').on("click", function (e) {
        e.stopPropagation();
        confirm("are you sure you want to delete?");
    })

    // format phone number fields
    $('.format-phone').mask('(000)-000-0000')

    // filter tables using the topbar search input 
    $("#global-search").on("keyup", function () {
        var value = $(this).val().toLowerCase();
        $("table tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        })
    })
})
