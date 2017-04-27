/**
 * Created by alexander on 26.04.17.
 */
$(document).ready(function () {
    $("#image_load").change(function () {
        upload_new_file(this);
    });
});

function upload_new_file(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#image_show').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}
