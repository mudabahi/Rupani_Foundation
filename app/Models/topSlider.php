<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class topSlider extends Model
{
    use HasFactory;
    protected $fillable = [
        'topSliderImage', 
        'topSlidertitle', 
        'topSliderDescription', 
    ];
}
