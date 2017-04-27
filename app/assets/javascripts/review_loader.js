/**
 * Created by alexander on 27.04.17.
 */
var loaded_pages = 1;
$(document).ready(function () {
    var tag = $("#reviews_list");

    load_reviews_list(tag, loaded_pages);

    $("#add_review_btn").click(function () {
        add_review(this);
    });
    $("#load_review_list_btn").click(function () {
        var tag = $("#reviews_list");

        load_reviews_list(tag, loaded_pages);
    });
});

function load_reviews_list(obj, num) {
    $.get({
        url: $(obj).data('ajax-path'),
        data: { page: num },
        success: function( data, textStatus, jqXHR ) {
            $(obj).append(data);
            loaded_pages += 1;
        }
    });
}

function add_review(obj) {
    $.post({
        url: $(obj).data('ajax-path'),
        data: {user_id: $("#review_user_id").value,
                hotel_id: $("#review_hotel_id").value,
                text: $("#review_text").value},
        success: function( data, textStatus, jqXHR ) {
            $(obj).append( data );
            $("#review_text").value = "";
        }
    });
}
