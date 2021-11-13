/*
window.addEventListener('DOMContentLoaded', function(e) {
    $('input[name="check"]').change(function() {
        if ($('#menu_ham').prop('checked')) {

        }
    });

    $(document).on('click',function(e) {
        console.log($('input[name="check"]').prop('checked'))
        if(!$(e.target).closest('.menu').length) {
            if($('input[name="check"]').prop('checked')) {
                console.log("AAAAA")
                $('#menu_ham').prop('checked', false);
            }
        }
        else {
            console.log("Adidasho")
        }
    });
    $(document).on('click',function(e) {
        if($('input[name="check"]').prop('checked')) {
            if($(e.target).closest('#menu_nav, #menu_logo').length) {
                console.log("やあ")
            }
        }
    });
    
});
*/