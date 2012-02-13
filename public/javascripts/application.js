$(document).ready( function() {
    $('#add_new').click( function() {
        $('#new_form').slideToggle("slow");
    });
    $('#imp_new').click( function() {
        $('#import_form').slideToggle("slow");
    });
    //
});

// tipTip functions
$(document).ready(function() {
    $(".tipTip").tipTip({maxWidth: '250px', edgeOffset: 10,delay: 0});
    $(".tipTipRight").tipTip({maxWidth: '300px', edgeOffset: 10,defaultPosition: 'right',delay: 0});
    $(".tipTipLeft").tipTip({maxWidth: '250px', edgeOffset: 10,defaultPosition: 'left',delay: 0});
    $(".tipTipTop").tipTip({maxWidth: '250px', edgeOffset: 10,defaultPosition: 'top',delay: 0});
});


//Javascript for Facebox
jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox()
})
//Javascript for Binding Facebox
$(document).bind('reveal.facebox', function() {
    $('#facebox').draggable();
})
