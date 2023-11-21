<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class addCard1 extends Model
{
    use HasFactory;
    protected $fillble = [
        'addCard1Image',
        'addCard1Title',
        'addCard1Description',
    ];
}
