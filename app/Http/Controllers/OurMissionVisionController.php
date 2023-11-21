<?php

namespace App\Http\Controllers;

use App\Models\ourMissionVision;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\file;

class OurMissionVisionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $OMV = ourMissionVision::all();
        return view('admin.ourMission.view_MV', ['OMV'=>$OMV]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view('admin.ourMission.add_MV');    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $request->validate([
        'mvTitle'=> 'required',
        'mvDiscription'=> 'required',
        'mvImage'=> 'required | image',
      ]);
        $ourMissionVision = new ourMissionVision();
        
        $ourMissionVision->mvTitle = $request->input('mvTitle');
        $ourMissionVision->mvDiscription = $request->input('mvDiscription');
        if($request->hasFile('mvImage'))
        {
            $file = $request->file('mvImage');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/OMVImage/", $filename);
            $ourMissionVision->mvImage =  $filename;
        }

        $ourMissionVision->save();
        return redirect()->route('view_MV')->with('addStatus', 'Our Mission and Vision Data insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ourMissionVision  $ourMissionVision
     * @return \Illuminate\Http\Response
     */
    public function show(ourMissionVision $ourMissionVision)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ourMissionVision  $ourMissionVision
     * @return \Illuminate\Http\Response
     */
    public function edit(ourMissionVision $ourMissionVision, $id)
    {
        $OMV = ourMissionVision::find($id);
        return view('admin.ourMission.edit_MV', compact('OMV'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ourMissionVision  $ourMissionVision
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ourMissionVision $ourMissionVision, $id)
    {
        $ourMissionVision = ourMissionVision::find($id);
        $ourMissionVision->mvTitle = $request->input('mvTitle');
        $ourMissionVision->mvDiscription = $request->input('mvDiscription');
        if($request->hasFile('missionImage'))
        {
            
            $destination = 'uploads/newsImage/' . $ourMissionVision->mvImage;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('mvImage');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/OMVImage/", $filename);
            $ourMissionVision->mvImage =  $filename;
        }

        $ourMissionVision->save();
        return redirect()->route('view_MV')->with('addStatus', 'Our Mission and Vision Data Update Successfully');
    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ourMissionVision  $ourMissionVision
     * @return \Illuminate\Http\Response
     */
    public function destroy(ourMissionVision $ourMissionVision, $id)
    {
        $ourMissionVision = ourMissionVision::find($id);
        $destination = 'uploads/newsImage/' . $ourMissionVision->id;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $ourMissionVision->delete();
        return redirect()->route('view_MV')->with('addStatus', 'Our Mission and Vision Delete successfully.');
    }
}
