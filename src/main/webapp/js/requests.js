
$(document).ready(function () {
        $('input[name=j_username]').keyup(function () {
            $('#statusError').html('');
            $('input[name=j_username]').css('border', '1px solid #d7d7d7');
            $('input[name=j_username]').css('border-radius', '5px');
            $('#statusError').remove();
        });
        $('input[name=j_password]').keyup(function () {
            $('#statusError').html('');
            $('input[name=j_password]').css('border', '1px solid #d7d7d7');
            $('input[name=j_password]').css('border-radius', '5px');
            $('#statusError').remove();
        });
    $("#Phone1").keyup(function () {
        $('#statusError').html('');
        $('#Phone1').css('border', '1px solid #ccc');
    });
    $("#Name1").keyup(function () {
        $('#statusError').html('');
        $('#Name1').css('border', '1px solid #ccc');
    });
    $("#PhoneFree").keyup(function () {
        $('#statusErrorFree').html('');
        $('#PhoneFree').css('border', '1px solid #ccc');
    });
    $("#NameFree").keyup(function () {
        $('#statusErrorFree').html('');
        $('#NameFree').css('border', '1px solid #ccc');
    });
    $("#PhoneModal").keyup(function () {
        $('#statusErrorModal').html('');
        $('#PhoneModal').css('border', '1px solid #ccc');
    });
    $("#NameModal").keyup(function () {
        $('#statusErrorModal').html('');
        $('#NameModal').css('border', '1px solid #ccc');
    });

    $('form[id="addcontent"]').find('input').each(function() {
        $(this).keyup(function () {
            $(this).css("box-shadow", "none");
            $(this).prev().html(' ');
        });
    });
    $("#Email1").keyup(function () {
        $('#statusError').html('');
        $('#Email1').css('border', '1px solid #ccc');
        var email = $("#Email1").val();
        if (email != 0) {
            if (isValidEmailAddress(email)) {
                $("#validEmailIndexTest").css({
                    "background-image": "url('images/yes.png')"
                });
                $('#Email1').css('border', '1px solid #ccc');
            } else {
                $("#validEmailIndexTest").css({
                    "background-image": "url('images/no.png')"
                });
            }

        } else {
            $("#validEmailIndexTest").css({
                "background-image": "none"
            });
        }
    });
    $("#EmailModal").keyup(function () {
        $('#statusErrorModal').html('');
        $('#EmailModal').css('border', '1px solid #ccc');
        var email = $("#EmailModal").val();
        if (email != 0) {
            if (isValidEmailAddress(email)) {
                $("#validEmailModal").css({
                    "background-image": "url('images/yes.png')"
                });
                $('#EmailModal').css('border', '1px solid #ccc');
            } else {
                $("#validEmailModal").css({
                    "background-image": "url('images/no.png')"
                });
            }

        } else {
            $("#validEmailModal").css({
                "background-image": "none"
            });
        }
    });
    $('form[id="formTyres"]').find('input').each(function() {
        $(this).keyup(function () {
            $(this).css("box-shadow", "none");
            $(this).prev().html(' ');
            $('#statusErrorTyres').html('');
        });
    });
    $("#EmailTyres").keyup(function () {
        $('#statusErrorTyres').html('');
        $('#EmailTyres').css('border', '1px solid #ccc');
        var email = $("#EmailTyres").val();
        if (email != 0) {
            if (isValidEmailAddress(email)) {
                $("#validEmailTyres").css({
                    "background-image": "url('images/yes.png')"
                });
                $('#EmailTyres').css('border', '1px solid #ccc');
            } else {
                $("#validEmailTyres").css({
                    "background-image": "url('images/no.png')"
                });
            }

        } else {
            $("#validEmailModal").css({
                "background-image": "none"
            });
        }
    });
    $("#EmailFree").keyup(function () {
        $('#statusErrorFree').html('');
        $('#EmailFree').css('border', '1px solid #ccc');
        var email = $("#EmailFree").val();
        if (email != 0) {
            if (isValidEmailAddress(email)) {
                $("#validEmailFree").css({
                    "background-image": "url('images/yes.png')"
                });
                $('#EmailFree').css('border', '1px solid #ccc');
            } else {
                $("#validEmailFree").css({
                    "background-image": "url('images/no.png')"
                });
            }

        } else {
            $("#validEmailFree").css({
                "background-image": "none"
            });
        }
    });
    $(document).ajaxStart(function () {
        $(".modalWaiting").css("display", "block");
    });
    $(document).ajaxComplete(function () {
        $(".modalWaiting").css("display", "none");
    });
});

function sendOrder() {
    $('#statusError').html(' ');

    var name = $('input[name=Name]').val();
    if (name == 0) {
        $('input[name=Name]').css('border', '2px solid #FF0026');
        $('input[name=Name]').css('border-radius', '2px');
        $('#statusError').html('имя не указано<br>');
    } else {
        $('input[name=Email]').css('border', '1px solid #ccc');
        $('input[name=Email]').css('border-radius', '4px');
        $("#validEmailIndexTest").css({
            "background-image": "none"
        });
    }

    var phone = $('input[name=Phone]').val();
    if (phone == 0) {
        $('input[name=Phone]').css('border', '2px solid #FF0026');
        $('input[name=Phone]').css('border-radius', '2px');
        $('#statusError').append('телефон не указан<br>');
    } else {
        $('input[name=Email]').css('border', '1px solid #ccc');
        $('input[name=Email]').css('border-radius', '4px');
        $("#validEmailIndexTest").css({
            "background-image": "none"
        });
    }

    var email = $('input[name=Email]').val();
    if (email == 0) {
        $('input[name=Email]').css('border', '2px solid #FF0026');
        $('input[name=Email]').css('border-radius', '2px');
        $('#statusError').append('email не указан');
        return;
    } else {
        $('input[name=Email]').css('border', '1px solid #ccc');
        $('input[name=Email]').css('border-radius', '4px');
        $("#validEmailIndexTest").css({
            "background-image": "none"
        });
    }

    if (isValidEmailAddress(email)) {
        if (phone != 0 && name != 0) {
            var formData = $('#formOrder');
            $.ajax({
                type: "POST",
                url: '/orderBy',
                data: formData.serialize(),
                success: function (data) {
                    $('input[name=Phone]').val('');
                    $('input[name=Email]').val('');
                    $('input[name=Name]').val('');
                    $("#Email1").css({
                        "background-image": "none"
                    });
                    $('#statusError').html(data);
                    $("#statusError").css('display', 'block');
                }
            });

        }
    } else {
        $('input[name=Email]').css('border', '2px solid #FF0026');
        $('input[name=Email]').css('border-radius', '2px');
        $('#statusError').append('email не корректный!');
    }
}

function sendOrderByName() {
    $('#statusErrorModal').html(' ');

    var name = $('input[name=NameModal]').val();
    if (name == 0) {
        $('input[name=NameModal]').css('border', '2px solid #FF0026');
        $('input[name=NameModal]').css('border-radius', '2px');
        $('#statusErrorModal').html('имя не указано<br>');
    } else {
        $('input[name=EmailModal]').css('border', '1px solid #ccc');
        $('input[name=EmailModal]').css('border-radius', '4px');
        $("#validEmailModal").css({
            "background-image": "none"
        });
    }

    var phone = $('input[name=PhoneModal]').val();
    if (phone == 0) {
        $('input[name=PhoneModal]').css('border', '2px solid #FF0026');
        $('input[name=PhoneModal]').css('border-radius', '2px');
        $('#statusErrorModal').append('телефон не указан<br>');
    } else {
        $('input[name=EmailModal]').css('border', '1px solid #ccc');
        $('input[name=EmailModal]').css('border-radius', '4px');
        $("#validEmailModal").css({
            "background-image": "none"
        });
    }

    var email = $('input[name=EmailModal]').val();
    if (email == 0) {
        $('input[name=EmailModal]').css('border', '2px solid #FF0026');
        $('input[name=EmailModal]').css('border-radius', '2px');
        $('#statusErrorModal').append('email не указан');
        return;
    } else {
        $('input[name=EmailModal]').css('border', '1px solid #ccc');
        $('input[name=EmailModal]').css('border-radius', '4px');
        $("#validEmailIndexTest").css({
            "background-image": "none"
        });
    }

    if (isValidEmailAddress(email)) {
        if (phone != 0 && name != 0) {
            var formData = $('#formModal');
            $.ajax({
                type: "POST",
                url: '/ordermodal',
                data: formData.serialize(),
                success: function (data) {
                    $('input[name=PhoneModal]').val('');
                    $('input[name=EmailModal]').val('');
                    $('input[name=NameModal]').val('');
                    $("#EmailModal").css({
                        "background-image": "none"
                    });
                    $('#statusErrorModal').html(data);
                    $("#statusErrorModal").css('display', 'block');
                }
            });

        }
    } else {
        $('input[name=EmailModal]').css('border', '2px solid #FF0026');
        $('input[name=EmailModal]').css('border-radius', '2px');
        $('#statusErrorModal').append('email не корректный!');
    }
}
function enter() {
    var name = $('input[name=j_username]').val();
    if (name == 0) {
        $('input[name=j_username]').css('border', '2px solid #FF0026');
        $('input[name=j_username]').css('border-radius', '5px');
    } else {
        $('input[name=j_username]').css('border', '1px solid #d7d7d7');
        $('input[name=j_username]').css('border-radius', '5px');
    }

    var password = $('input[name=j_password]').val();
    if (password == 0) {
        $('input[name=j_password]').css('border', '2px solid #FF0026');
        $('input[name=j_password]').css('border-radius', '5px');
    } else {
        $('input[name=j_password]').css('border', '1px solid #d7d7d7');
        $('input[name=j_password]').css('border-radius', '5px');
    }
    if(password!=0 && name!=0){
        var form=document.getElementById('enterform');
        $('input[name=j_password]').css('border', '1px solid #d7d7d7');
        $('input[name=j_password]').css('border-radius', '5px');
        $('input[name=j_username]').css('border', '1px solid #d7d7d7');
        $('input[name=j_username]').css('border-radius', '5px');
        form.submit();
    }
}
function addContent() {
    var chek=true;
    var formData =  new FormData($('#addcontent')[0]);
    $('#addcontent').find('input').not($('#uploadedphoto')).not($("input[type='hidden']")).each(function() {
        if (this.value == 0){
            $(this).css("box-shadow", "0 0 5px red");
            $(this).prev().append('<span>заполните это поле</span>');
            chek=false;
        }
    });
    if(chek==true){
        $.ajax({
            type: "POST",
            url: '/add-content',
            enctype: "multipart/form-data",
            contentType: false,
            processData: false,
            cache: false,
            data: formData,
            success:function(data){
                $('#addcontent').find('input').not($('#uploadedphoto')).not($("input[type='hidden']")).each(function() {
                    $(this).val(' ');
                    $(this).prev().html(' ');
                });
            },
            error:function(e){

            }
        })


    }
}
function payTyres(image, name, price, size, id) {
$('#tyresid').val(id);
    $('#brend').text('бренд - '+name);
    $('#price').text('цена - '+price+' грн');
    $('#size').text('размер - '+size);
    $('#imagetyres').attr('src', '/tyresimage?image='+image);
}
function sendTyresOrder() {
    var chek=true;
    var formData =  $('#formTyres');
    $('#formTyres').find('input').not($("input[type='hidden']")).each(function() {
        if (this.value == 0){
            $(this).css("box-shadow", "0 0 5px red");
            $(this).prev().append('заполните это поле');
            chek=false;
        }
    });
    if(chek==true && isValidEmailAddress(email)){
        $.ajax({
            type: "POST",
            url: '/pay-tyres',
            data: formData.serialize(),
            success:function(data){
                $('#formTyres').find('input').not($("input[type='hidden']")).each(function() {
                    $(this).val(' ');
                    $(this).prev().html(' ');
                });
            },
            error:function(e){

            }
        })


    }
}
function freeConsulting() {
    $('#statusErrorFre').html(' ');

    var name = $('input[name=NameFree]').val();
    if (name == 0) {
        $('input[name=NameFree]').css('border', '2px solid #FF0026');
        $('input[name=NameFree]').css('border-radius', '2px');
        $('#statusErrorFree').html('имя не указано<br>');
    } else {
        $('input[name=EmailFree]').css('border', '1px solid #ccc');
        $('input[name=EmailFree]').css('border-radius', '4px');
        $("#validEmailFree").css({
            "background-image": "none"
        });
    }

    var phone = $('input[name=PhoneFree]').val();
    if (phone == 0) {
        $('input[name=PhoneFree]').css('border', '2px solid #FF0026');
        $('input[name=PhoneFree]').css('border-radius', '2px');
        $('#statusErrorFree').append('телефон не указан<br>');
    } else {
        $('input[name=EmailFree]').css('border', '1px solid #ccc');
        $('input[name=EmailFree]').css('border-radius', '4px');
        $("#validEmailFree").css({
            "background-image": "none"
        });
    }

    var email = $('input[name=EmailFree]').val();
    if (email == 0) {
        $('input[name=EmailFree]').css('border', '2px solid #FF0026');
        $('input[name=EmailFree]').css('border-radius', '2px');
        $('#statusErrorFree').append('email не указан');
        return;
    } else {
        $('input[name=EmailFree]').css('border', '1px solid #ccc');
        $('input[name=EmailFree]').css('border-radius', '4px');
        $("#validEmailFree").css({
            "background-image": "none"
        });
    }

    if (isValidEmailAddress(email)) {
        if (phone != 0 && name != 0) {
            var formData = $('#formFreeConsulting');
            $.ajax({
                type: "POST",
                url: '/freeConsulting',
                data: formData.serialize(),
                success: function (data) {
                    $('input[name=PhoneFree]').val('');
                    $('input[name=EmailFree]').val('');
                    $('input[name=NameFree]').val('');
                    $("#EmailFree").css({
                        "background-image": "none"
                    });
                    $('#statusErrorFree').html(data);
                    $("#statusErrorFree").css('display', 'block');
                }
            });

        }
    } else {
        $('input[name=EmailFree]').css('border', '2px solid #FF0026');
        $('input[name=EmailFree]').css('border-radius', '2px');
        $('#statusErrorFree').append('email не корректный!');
    }
}
function isValidEmailAddress(emailAddress) {
    var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
    return pattern.test(emailAddress);
}
function submitName(name) {
    document.getElementById("myModalLabel").textContent=name;
    document.getElementById("nameZ").value=name;
}
function closeModal() {

    $('input[name=NameModal]').val('');
    $('input[name=EmailModal]').val('');
    $('input[name=PhoneModal]').val('');
    $('input[name=EmailModal]').css('border', '1px solid #ccc');
    $('form[id="formTyres"]').find('input').each(function() {
            $(this).css("box-shadow", "none");
        $(this).val('');
            $(this).prev('span').html(' ');
    });
    $('#statusErrorModal').html('');
    $('input[name=NameModal]').css('border', '1px solid #ccc');
    $('input[name=PhoneModal]').css('border', '1px solid #ccc');
    $("#validEmailModal").css({
        "background-image": "none"
    });

}
