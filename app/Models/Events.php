<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Events extends Model
{
    use HasFactory;

    protected $fileable  = [
        'E_titles',
        'E_discriptions',
        'E_images',
    ];
}
