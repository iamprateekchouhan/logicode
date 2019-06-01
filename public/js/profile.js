
            $(".numberControl").on("keypress keyup blur",function (event) {  
                $(this).val($(this).val().replace(/[^\d].+/, ""));
                if ((event.which < 48 || event.which > 57)) {
                    event.preventDefault();
                }
            });


    $('#UploadedFile').bind('change', function() {
    var a=(this.files[0].size);
    
    if(a > 2000000) {
        alert('file size must be less than 2MB');
        $('#UploadedFile').val('');
    };
})

function updateProfile()
{   

    var name = $('#name').val().trim();
    var phone = $('#phone').val().trim();
            if(name==''){

                $('#resp_profile').html();
                $('#resp_profile').html('Please enter name.');
            }
             else if(name!='' && phone.length!=10){

                $('#resp_profile').html();
                $('#resp_profile').html('Please enter valid phone.');
            }
            else{

                        var auth_token =  localStorage.getItem("auth_token");
                        var form = new FormData($('#updateProfile')[0]);

                            form.append('_token', '{{csrf_token()}}');

                            $.ajax({
                                type: "POST",
                                url: "{{route('updateProfile')}}",              
                                data: form,
                                headers: {"Authorization":auth_token},  
                                processData: false,
                                contentType: false,
                                success: function(response) 
                                {                           
                                        //location.reload();
                                }
                            });

                        }

}
