<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function rates()
    {
      return $this->hasMany('App\Rate');
    }
}
