<?php

namespace App\Http\Controllers;

use App\Models\User;
use Auth;
use Illuminate\Http\Request;
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
        // cek email google 
        $cek = User::where('email', $email)->count();
        if($cek > 0){
            $user = User::updateOrCreate(
                ['email' =>$email],
                [
                    'name' =>$name,
                    'google_id' =>$id
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
