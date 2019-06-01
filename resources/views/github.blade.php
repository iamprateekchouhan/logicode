
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Github</div>
                <form method="POST" id="add_github">
                    <label>Github Username</label>
                    <input type="text" name="github_username" id="github_username" value="{{$user->github_username}}">
                    <button type="button" onclick="addGithub();">Submit</button>
                </form>
            </div>


        <div class="container">
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home" style="padding: 10px;">Repositories</a></li>
    <li><a data-toggle="tab" href="#menu1"  style="padding: 10px;">Issues</a></li>
    <li><a data-toggle="tab" href="#menu2"  style="padding: 10px;">Commit</a></li>
   
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>Repositories</h3>
      <div id="repositories"></div>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Issues</h3>
      <form>
        <select id="all_repo">
            
        </select>
          <input type="text" name="new_issue" id="new_issue">
          <input type="button" name="save" value="save" onclick="addIssue();">
      </form>
      <div id="issues"></div>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Commits</h3>
      <div id="commits"></div>
    </div>
    
  </div>
    </div>
        </div>
    </div>
</div>

<script type="text/javascript">
   function addGithub(){var e=localStorage.getItem("auth_token"),t=new FormData($("#add_github")[0]);t.append("_token","{{csrf_token()}}"),$.ajax({type:"POST",url:"{{route('addGithub')}}",data:t,headers:{Authorization:e},processData:!1,contentType:!1,success:function(e){location.reload()}})}function addIssue(){var e=$("#all_repo").val(),t=$("#new_issue").val();$.ajax({type:"POST",url:"https://api.github.com/repos/"+e+"/issues",processData:!1,contentType:!1,data:{title:t},success:function(e){}})}$(document).ready(function(){""!=$("#github_username").val()&&null!=$("#github_username").val()&&($.ajax({type:"GET",url:"https://api.github.com/users/{{$user->github_username}}/repos",processData:!1,contentType:!1,success:function(e){console.log(e),$.each(e,function(e,t){$("#repositories").append("<p>"+t.full_name+"</p>"),$("#all_repo").append('<option value="'+t.full_name+'">'+t.full_name+"</option>"),$.ajax({type:"GET",url:"https://api.github.com/repos/"+t.full_name+"/issues",processData:!1,contentType:!1,success:function(e){$.each(e,function(e,t){$("#issues").append("<p>"+t.repository_url+" - "+t.body+"</p>")})}})})}}),$.ajax({type:"GET",url:"https://api.github.com/users/{{$user->github_username}}/events",processData:!1,contentType:!1,success:function(e){console.log(e)}}))});
</script>

