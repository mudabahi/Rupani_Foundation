<?php

namespace App\Http\Controllers;

use App\Models\aboutSec2;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AboutSec2Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aboutSec2 = aboutSec2::all();
        return view('admin.aboutSec2.view_aboutSec2', compact('aboutSec2'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.aboutSec2.add_aboutSec2');
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
            'aboutSec2Image' => 'required | image |mimes:jpeg,png,jpg   | min:0.3456',
            'aboutSec2Descriptions' => 'required',
        ]);
        $aboutSec2 = new aboutSec2();

        // About Section 2 image stor Code.
        if ($request->hasFile('aboutSec2Image')) {
            $file = $request->file('aboutSec2Image');
            $extention = $file->getClientOriginalName();
            $filename = time() . " . " . $extention;
            $file->move("uploads/aboutImage/" , $filename);
            $aboutSec2->aboutSec2Image = $filename;
        }
       
        // About Section 2 Descriptions store Code 
        $aboutSec2->aboutSec2Descriptions = $request->input('aboutSec2Descriptions');


        $aboutSec2->save();
        return redirect()->route('view_aboutSec2')->with('addStatus', 'Data Insert Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\aboutSec2  $aboutSec2
     * @return \Illuminate\Http\Response
     */
    public function show(aboutSec2 $aboutSec2)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\aboutSec2  $aboutSec2
     * @return \Illuminate\Http\Response
     */
    public function edit(aboutSec2 $aboutSec2, $id)
    {
        $aboutSec2 = aboutSec2::find($id);
        return view('admin.aboutSec2.edit_aboutSec2', compact('aboutSec2'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\aboutSec2  $aboutSec2
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, aboutSec2 $aboutSec2, $id)
    {
        $aboutSec2 = aboutSec2::find($id);

        // About Section 2 image stor Code.

        if ($request->hasFile('aboutSec2Image')) {
            $destination = 'uploads/aboutImage/' . $aboutSec2->aboutSec2Image;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('aboutSec2Image');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/aboutImage/", $filename);
            $aboutSec2->aboutSec2Image =  $filename;
        }

        // About Section 2 Descriptions store Code 

        $aboutSec2->aboutSec2Descriptions = $request->input('aboutSec2Descriptions');


        $aboutSec2->update();
        return redirect()->route('view_aboutSec2')->with('addStatus', 'Data Update Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\aboutSec2  $aboutSec2
     * @return \Illuminate\Http\Response
     */
    public function destroy(aboutSec2 $aboutSec2, $id)
    {
        $aboutSec2 = aboutSec2::find($id);
        $destination = 'uploads/topSliderImage/' . $aboutSec2->id;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $aboutSec2->delete();
        return redirect()->route('view_aboutSec2')->with('addStatus', 'Data Delete Successfully');
    }
}
