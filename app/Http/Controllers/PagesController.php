<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;
class PagesController extends Controller
{
    public function getIndex(){
      $products=Product::orderBy('created_at','desc')->limit(5)->get();
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
}
