<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ourMissionVision extends Model
{
    use HasFactory;
    protected $fillable = ['mvTitle', 'mvDiscription', 'mvImage'];
}
