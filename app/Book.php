<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $table = 'books';

   	protected $fillable = [
   		'time', 'date', 'numb', 'phone'
   	];
    public function getFieldList()
    {
    	return $this->fillable;
    }
}
