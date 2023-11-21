<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class enroll extends Model
{
    use HasFactory;
    protected $fillable = ['enroll_image1', 'enroll_title', 'enroll_image2'];
}
