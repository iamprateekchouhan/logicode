
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">Profile</div>

                <form action="" method="post" id="updateProfile">
            <div class="preview text-center">
                <img class="preview-img" src="{{ asset('public/uploads/'.$user->avatar) }}" alt="Preview Image" width="50" height="50"/>
                <div class="browse-button">
                    <i class="fa fa-pencil-alt"></i>
                    <input class="browse-input" type="file" required name="avatar" id="UploadedFile"/>
                </div>
                <span class="Error"></span>
            </div>

            <div class="form-group">
                <label>Full Name:</label>
                <input class="form-control" type="text" name="name" required placeholder="Enter Your Full Name" value="{{$user->name}}" id="name" />
                <span class="Error"></span>
            </div>
            
            <div class="form-group">
                <label>Phone</label>
                <input class="form-control numberControl" type="text" name="phone" required placeholder="Enter Your Phone" value="{{$user->phone}}" id="phone" maxlength="10" />
                <span class="Error"></span>
            </div
            
            <div class="form-group">
                <input class="btn btn-primary btn-block" type="button" value="Submit" onclick="updateProfile();" />
            </div>
            <div id="resp_profile"></div>
        </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function updateProfile(){var e=$("#name").val().trim(),t=$("#phone").val().trim();if(""==e)$("#resp_profile").html(),$("#resp_profile").html("Please enter name.");else if(""!=e&&10!=t.length)$("#resp_profile").html(),$("#resp_profile").html("Please enter valid phone.");else{var l=localStorage.getItem("auth_token"),a=new FormData($("#updateProfile")[0]);a.append("_token","{{csrf_token()}}"),$.ajax({type:"POST",url:"{{route('updateProfile')}}",data:a,headers:{Authorization:l},processData:!1,contentType:!1,success:function(e){location.reload()}})}}$(".numberControl").on("keypress keyup blur",function(e){$(this).val($(this).val().replace(/[^\d].+/,"")),(e.which<48||e.which>57)&&e.preventDefault()}),$("#UploadedFile").bind("change",function(){this.files[0].size>2e6&&(alert("file size must be less than 2MB"),$("#UploadedFile").val(""))});

</script>

