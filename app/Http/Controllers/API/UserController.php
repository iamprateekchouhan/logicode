<?php
namespace App\Http\Controllers\API;
use Illuminate\Http\Request; 
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input; 
use App\User; 
use Session;
use Illuminate\Support\Facades\Auth; 
use Validator;
class UserController extends Controller 
{
    public $successStatus = 200;
/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
public function login(){ 

    try {
    $user = Auth::user(); 
    return response()->json(['success' => $user], $this-> successStatus); 
    }
    catch(\Exception $e)
    {
        echo "Unauthenticated";
    }
}
/** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
public function register(Request $request) 
{ 
    $validator = Validator::make($request->all(), [ 
        'name' => 'required', 
        'email' => 'required|string|email|max:255|unique:users', 
         
      
    ]);
    if ($validator->fails()) { 
         
        return redirect('/register')->withErrors($validator->errors());          
    }
    $input = $request->all(); 
    
    $user = User::create($input); 
    $success['token'] =  $user->createToken('MyApp')->accessToken; 
    $success['name'] =  $user->name;
    $message = array('message'=>'Success');
    return redirect()->back()->with('message', 'Use Below token to login  -   '.$success['token']);
    
}
/** 
     * details api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
public function details() 
{ 
    $user = Auth::user(); 
    return view('profile',compact('user'));
} 

public function getProfile()
{

    $user = Auth::user();

    return view('profile',compact('user'));
}

public function home()
{
        $user = Auth::user();
        return view('home',compact('user'));
}

public function logout()
{

        $request->user('api')->token()->revoke();

}

public function updateProfile(Request $request)
{

        $postdata = Input::all();
        $auth_user = Auth::user();
        

        $user = User::find($auth_user->id);
 
        $user->phone          = $postdata['phone'];
        $user->name            = $postdata['name'];
        $user->updated_at         = date('Y-m-d H:i:s');        

        if($request->hasfile('avatar'))
        {
            $file_size = $request->file('avatar')->getSize();
            if($file_size<2000000)
            {
            $image = $request->file('avatar');            
            $imageName   = 'avatar'.time().'.'.$image->getClientOriginalExtension();
            $destination = public_path('uploads/');
            $image->move($destination, $imageName);
            $user->avatar         = $imageName;
            }   

            
        }

        $user->save();
    }


    public function getGithub()
    {
        $user = Auth::user();
        return view('github',compact('user'));
    }

    public function addGithub(Request $request)
    {
        $postdata = Input::all();
        $auth_user = Auth::user();
        

        $user = User::find($auth_user->id);

             
        $user->github_username   = $postdata['github_username'];
        
        $user->save();
    }
}