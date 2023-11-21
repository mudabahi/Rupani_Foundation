<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class assToolSec extends Model
{
    use HasFactory;
    protected $fillable = [
        'assToolSecTitle',
        'assToolDescription',
    ];
}
