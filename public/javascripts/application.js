$(document).ready( function() {
    $('#add_new').click( function() {
        $('#new_form').slideToggle("slow");
    });
    $('#imp_new').click( function() {
        $('#import_form').slideToggle("slow");
    });
    //
});


// Facebox render
jQuery(document).ready( function($) {
    $('a[rel*=facebox]').facebox({
        loadingImage : '/images/facebox/loading.gif',
        closeImage   : '/images/facebox/closelabel.png'
      })

});
// preventing the facebox to close outside
$(document).bind('loading.facebox', function() {
    $(document).unbind('keydown.facebox');
    $('#facebox_overlay').unbind('click');
});
//face box draggable
$(document).bind('reveal.facebox', function() {
    $('#facebox').draggable();
});

