<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;
use Mail;
use Session;

class PagesController extends Controller
{
    public function getIndex(){
      $products=Product::orderBy('created_at','desc')->paginate(5);
      return view('pages.welcome')->withProducts($products);
    }

    public function getContact(){
      return view ('pages.contact');
    }

    public function getAbout(){
      return view('pages.about');
    }

    public function getSingle($serial){
      $product=Product::where('serial','=',$serial)->first();

      return view('product.single')->withProduct($product);
    }

    public function postContact(Request $request)
    {
      $this->validate($request, [
        'email'=>'required|email',
        'subject'=>'min:3',
        'message'=>'min:10'
      ]);

      $data=array(
        'email'=>$request->email,
        'subject'=>$request->subject,
        'bodyMessage'=>$request->message
      );

      Mail::send('emails.contact', $data, function($message) use ($data){
        $message->from($data['email']);
        $message->to('denisdzafo@gmail.com');
        $message->subject($data['subject']);
      });

      Session::flash('success', 'your email has been send');

      return  redirect()-> route('contact');
    }
}
