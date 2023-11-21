<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class aboutSec3 extends Model
{
    use HasFactory;
    protected $fillable = [
        'aboutSec3Image',
        'aboutSec3Titles',
        'aboutSec3Descriptions',
    ];
}
