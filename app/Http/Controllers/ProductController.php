<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Session;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $product = Post::orderBy('id','desc')-> paginate(5);

      return view('product.index')->withProducts($product);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, array(
          'name'=>'required|max:255',
          'manufacturer'=>'required|max:255',
          'serial'=>'required|Numeric|digits_between:8,11|unique:products,serial',
          'country'=>'required|max:255',
          'description'=>'required'
        ));

        $product =new Product;

        $product->name=$request->name;
        $product->manufacturer=$request->manufacturer;
        $product->serial=$request->serial;
        $product->country=$request->country;
        $product->description=$request->description;

        $product->save();

        Session::flash('success', 'Product has been added');

        return redirect()->route('products.show', $product->id);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $product = Product::find($id);
      return view('products.single')->withProduct($product);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product=Product::find($id);

        return view('products.edit')->withProduct($product);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

      $product=Product::find($id);
      if($request->input('serial')==$product->serial){
        $this->validate($request, array(
          'name'=>'required|max:255',
          'manufacturer'=>'required|max:255',

          'country'=>'required|max:255',
          'description'=>'required'
        ));
      }
      else{
        $this->validate($request, array(
          'name'=>'required|max:255',
          'manufacturer'=>'required|max:255',
          'serial'=>'required|Numeric|digits_between:8,11|unique:products,serial',
          'country'=>'required|max:255',
          'description'=>'required'
        ));
      }


      $product->name=$request->name;
      $product->manufacturer=$request->manufacturer;
      $product->serial=$request->serial;
      $product->country=$request->country;
      $product->description=$request->description;

      $product->save();

      Session::flash('success', 'Product has been modified');

      return redirect()->route('products.show', $product->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product=Product::find($id);

        $product->delete();

        Session::flash('success', 'Product has been deleted');
        return redirect()->route('index');
    }
}
