@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4" id="dashboard"></div>
        <div class="col-md-8" id="profile">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>

                <div class="card-body">
                    <form method="POST" action="#">
                     
                         <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">Token</label>

                            <div class="col-md-6">
                                <input type="text" id="token"  class="form-control " name="token" required >

                            </div>
                        </div>

                       

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="button" class="btn btn-primary" onclick="validate();">
                                    {{ __('Login') }}
                                </button>

                                <div id="resp"></div>
                            </div>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-12" id="github" style="margin-top: 20px;"></div>
        

</div>


<script type="text/javascript">
function validate(){var e=$("#token").val();""==e?($("#resp").html(),$("#resp").html("Please enter Token.")):$.ajax({type:"GET",url:"{{ route('userLogin') }}",cache:!1,async:!0,headers:{Authorization:"Bearer "+e},data:{_token:"<?php echo csrf_token()?>"},success:function(t){console.log(t),$("#resp").html(),$("#resp").html("success"),localStorage.clear(),localStorage.setItem("auth_token","Bearer "+e);var o="Bearer "+e;getDetails(o),getHome(o),getGithub(o)}})}function logout(){var e=localStorage.getItem("auth_token");$.ajax({url:"{{ route('logout') }}",type:"POST",data:{_token:"<?php echo csrf_token()?>"},headers:{Authorization:e},success:function(e){localStorage.clear(),location.reload()}})}function getDetails(e){$.ajax({url:"{{ route('getDetails') }}",type:"GET",headers:{Authorization:e},success:function(e){$("#profile").html(""),$("#profile").html(e)}})}function getHome(e){$.ajax({url:"{{ route('home') }}",type:"GET",headers:{Authorization:e},success:function(e){$("#dashboard").html(""),$("#dashboard").html(e)}})}function getGithub(e){$.ajax({url:"{{ route('getGithub') }}",type:"GET",headers:{Authorization:e},success:function(e){$("#github").html(""),$("#github").html(e)}})}$(document).ready(function(){var e=localStorage.getItem("auth_token");""!=e&&null!=e&&(getDetails(e),getHome(e),getGithub(e))});

</script>
@endsection
