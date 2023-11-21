<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class assReportingSec extends Model
{
    use HasFactory;
    protected $fillable = [
        'assReportingTitle',
        'assReportingDescription',
    ];
}
