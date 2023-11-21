<?php

namespace App\Http\Controllers;

use App\Models\aboutSec3;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AboutSec3Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aboutSec3 = aboutSec3::all();
        return view('admin.aboutSec3.view_aboutSec3', compact('aboutSec3'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.aboutSec3.add_aboutSec3');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'aboutSec3Image' => 'required | image |mimes:jpeg,png,jpg   | min:0.3456',
            'aboutSec3Titles' => 'required',
            'aboutSec3Descriptions' => 'required',
        ]);
        $aboutSec3 = new aboutSec3();

        // About Section 3 image stor Code.
        if ($request->hasFile('aboutSec3Image')) {
            $file = $request->file('aboutSec3Image');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/aboutImage/", $filename);
            $aboutSec3->aboutSec3Image =  $filename;
        }
        // About Section 3 Title store Code 
        $aboutSec3->aboutSec3Titles = $request->input('aboutSec3Titles');

        // About Section 3 Descriptions store Code 
        $aboutSec3->aboutSec3Descriptions = $request->input('aboutSec3Descriptions');

        $aboutSec3->save();
        return redirect()->route('view_aboutSec3')->with('addStatus', 'Data Insert Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\aboutSec3  $aboutSec3
     * @return \Illuminate\Http\Response
     */
    public function show(aboutSec3 $aboutSec3)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\aboutSec3  $aboutSec3
     * @return \Illuminate\Http\Response
     */
    public function edit(aboutSec3 $aboutSec3, $id)
    {
        $aboutSec3 = aboutSec3::find($id);
        return view('admin.aboutSec3.edit_aboutSec3', compact('aboutSec3'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\aboutSec3  $aboutSec3
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, aboutSec3 $aboutSec3, $id)
    {
        $aboutSec3 = aboutSec3::find($id);

        // About Section 2 image stor Code.

        if ($request->hasFile('aboutSec3Image')) {
            $destination = 'uploads/aboutImage/' . $aboutSec3->aboutSec3Image;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('aboutSec3Image');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/aboutImage/", $filename);
            $aboutSec3->aboutSec3Image =  $filename;
        }

        // About Section 2 Descriptions store Code 

        $aboutSec3->aboutSec3Descriptions = $request->input('aboutSec3Descriptions');


        $aboutSec3->update();
        return redirect()->route('view_aboutSec3')->with('addStatus', 'Data Update Successfully.');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\aboutSec3  $aboutSec3
     * @return \Illuminate\Http\Response
     */
    public function destroy(aboutSec3 $aboutSec3, $id)
    {
        $aboutSec3 = aboutSec3::find($id);
        $destination = 'uploads/aboutImage/' . $aboutSec3->aboutSec3Image;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $aboutSec3->delete();
        return redirect()->route('view_aboutSec3')->with('addStatus', 'Data Delete Successfully.');
    }
}
