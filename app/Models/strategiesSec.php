<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class strategiesSec extends Model
{
    use HasFactory;
    protected $fillable = [
        'strategiesImage',
        'strategiesTitle',
        'strategiesDescription',
    ];
}
