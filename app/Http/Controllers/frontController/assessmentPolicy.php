<?php

namespace App\Http\Controllers\frontController;

use App\Http\Controllers\Controller;
use App\Models\assRecordSec;
use App\Models\assReportingSec;
use App\Models\assSec1;
use App\Models\assToolSec;
use App\Models\diagnosticSec;
use App\Models\formativeSec;
use App\Models\philosopySec;
use App\Models\practicesSec;
use App\Models\purposeSec;
use App\Models\strategiesSec;
use App\Models\summativeSec;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class assessmentPolicy extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $datavalues = [];
        // $assSec1 = assSec1::all();
        // $philosopySec = philosopySec::all();
        // $practicesSec = practicesSec::all();
        // $sectionOne = Arr::collapse([$philosopySec,$practicesSec, $assSec1, ]);
        // return view('layouts.assessmentPolicy', compact('sectionOne'));


        $philosopySec = philosopySec::all();
        $practicesSec = practicesSec::all();
        $purposeSec = purposeSec::all();
        $strategiesSec = strategiesSec::all();
        $diagnosticSec = diagnosticSec::all();
        $formativeSec = formativeSec::all();
        $summativeSec = summativeSec::all();
        $assToolSec = assToolSec::all();
        $assRecordSec = assRecordSec::all();
        $assReportingSec = assReportingSec::all();
        return view('layouts.assessmentPolicy', compact('philosopySec','practicesSec', 'purposeSec', 'strategiesSec', 'diagnosticSec', 'formativeSec', 'summativeSec', 'assToolSec', 'assRecordSec', 'assReportingSec'));


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
