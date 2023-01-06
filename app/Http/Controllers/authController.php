<?php

namespace App\Http\Controllers;

use Auth;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Laravel\Socialite\Facades\Socialite;

class authController extends Controller
{
    function index(){

        return view("auth/index");
    }
    //redirect ke google
    function redirect()
    {
        return Socialite::driver('google')->redirect();
    }

    
    //callback dari google
    function callback(){

        $user = Socialite::driver('google')->user();
        $id = $user->id;
        $email = $user->email;
        $name = $user->name;
        $avatar = $user->avatar;


        // cek email google 
        $cek = User::where('email', $email)->count();
        if($cek > 0){
            $avatar_file = $id . ".jpg";
            $fileContent = file_get_contents($avatar);
            File::put(public_path("admin/images/faces/$avatar_file"), $fileContent);
            $user = User::updateOrCreate(
                ['email' =>$email],
                [
                    'name' =>$name,
                    'google_id' =>$id,
                    'avatar' => $avatar_file
                ]
            );
            Auth::login($user);
            return redirect()->to('dashboard');
        }
        else{
            return redirect()->to('auth')->with('error', 'Akun yang kamu masukkan tidak diizinkan untuk menggunakan halaman admin');
        }
        
    }

     public function logout(){

        Auth::logout();
        return redirect()->to('auth');
     }   
}
