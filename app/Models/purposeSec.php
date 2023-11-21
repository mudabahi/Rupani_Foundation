<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class purposeSec extends Model
{
    use HasFactory;
    protected $fillable = [
        'purposeSecImage',
        'purposeSecTitle',
        'purposeSecDescription',
    ];
}
