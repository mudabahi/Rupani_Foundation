<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class aboutSec1 extends Model
{
    use HasFactory;
    protected $fillable = [
        'aboutTopTitle',
        'aboutSec1Image1',
        'aboutSec2Image2',
    ];
}
