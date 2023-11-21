<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class addCard2 extends Model
{
    use HasFactory;
    protected $fillble = [
        'addCard2Image',
        'addCard2Title',
        'addCard2FDescription',
    ];
}
