<?php

namespace App\Http\Controllers\frontController;

use App\Http\Controllers\Controller;
use App\Models\CampusLife;
use App\Models\enroll;
use Illuminate\Http\Request;
use App\Models\Events;
use App\Models\News;
use App\Models\Gallery;
use App\Models\ourMissionVision;
use App\Models\topSlider;
use App\Models\campusLife1;
use App\Models\campusLife2;
use App\Models\campusLife3;

class HomeEventsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


        $event = Events::all();
        $news = News::all();
        $gallery = Gallery::all();
        $campusLife1 = campusLife1::all();
        $campusLife2 = campusLife2::all();
        $campusLife3 = campusLife3::all();
        $OMV = ourMissionVision::all();
        $enroll = enroll::all();
        $topSlider = topSlider::all();
        return view('layouts.home', compact('event', 'news', 'gallery', 'campusLife1', 'campusLife2', 'campusLife3', 'OMV', 'enroll', 'topSlider'));
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
