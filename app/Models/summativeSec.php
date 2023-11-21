<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class summativeSec extends Model
{
    use HasFactory;
    protected $fillable = [
        'summativeTitle',
        'summativeDescription',
    ];
}
