<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Rate;
use App\Product;
use Session;

class RateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $rates=Rate::all();
      $products=Product::all();


        $cats=array();
        foreach ($products as $product) {
          $cats[$product->id]=$product->name;
        }

      return view('rates.show')->withRates($rates)->withProducts($products);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products=Product::all();
        return view('rates.create')->withProducts($products);
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
          'description'=>'required',
          'product_id'=>'required|integer'
        ));

        $rate=new Rate;
        $rate->name=$request->name;
        $rate->description=$request->description;
        $rate->product_id=$request->product_id;

        $rate->save();
        $products=Product::all();
        Session::flash('success', 'Rates has successfully added');

        $products=Product::all();
        return view('rates.create')->withProducts($products);



    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $rate=Rate::find($id);
      $product=Product::all();
        return view('rates.show')->withRates($rate)->withProducts($product);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
