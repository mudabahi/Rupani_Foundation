<?php

namespace App\Http\Controllers;

use App\Models\aboutSec1;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AboutSec1Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aboutSec1 = aboutSec1::all();
        return view('admin.AboutSec1.view_aboutSec1', compact('aboutSec1'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.AboutSec1.add_aboutSec1');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation here
        $request->validate([
            'aboutTopTitle' => 'required',
            'aboutSec1Image1' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
            'aboutSec1Image2' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
        ]);

        $aboutSec1 = new aboutSec1();
        // About Top Title here
        $aboutSec1->aboutTopTitle = $request->input('aboutTopTitle');

        // About Section 1 Image here
        if ($request->hasFile('aboutSec1Image1')) {
            $file = $request->file('aboutSec1Image1');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/aboutImage/", $filename);
            $aboutSec1->aboutSec1Image1 =  $filename;
        }

        // About Section 2 Image here
        if ($request->hasFile('aboutSec1Image2')) {
            $file = $request->file('aboutSec1Image2');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/aboutImage/", $filename);
            $aboutSec1->aboutSec1Image2 =  $filename;
        }

       

        $aboutSec1->save();
        return redirect()->route('view_aboutSec1')->with('addStatus', 'Data Insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\aboutSec1  $aboutSec1
     * @return \Illuminate\Http\Response
     */
    public function show(aboutSec1 $aboutSec1)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\aboutSec1  $aboutSec1
     * @return \Illuminate\Http\Response
     */
    public function edit(aboutSec1 $aboutSec1, $id)
    {
        $aboutSec1Edit = aboutSec1::find($id);
        return view('admin.AboutSec1.edit_aboutSec1', compact('aboutSec1Edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\aboutSec1  $aboutSec1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, aboutSec1 $aboutSec1, $id)
    {
        $aboutSec1 = aboutSec1::find($id);
        // About Top Title here
        $aboutSec1->aboutTopTitle = $request->input('aboutTopTitle');

        // About Section 1 Image here
        if ($request->hasFile('aboutSec1Image1')) {
            $destination = 'uploads/aboutImage/' . $aboutSec1->aboutSec1Image1;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('aboutSec1Image1');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/aboutImage/", $filename);
            $aboutSec1->aboutSec1Image1 =  $filename;
        }

        // About Section 2 Image here
        if ($request->hasFile('aboutSec1Image2')) {
            $destination = 'uploads/aboutImage/' . $aboutSec1->aboutSec1Image2;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('aboutSec1Image2');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/aboutImage/", $filename);
            $aboutSec1->aboutSec1Image2 =  $filename;
        }

        $aboutSec1->Update();
        return redirect()->route('view_aboutSec1')->with('addStatus', 'Data Update Successfully');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\aboutSec1  $aboutSec1
     * @return \Illuminate\Http\Response
     */
    public function destroy(aboutSec1 $aboutSec1, $id)
    {
        $aboutSec1 = aboutSec1::find($id);
        $destination = 'uploads/topSliderImage/' . $aboutSec1->id;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $aboutSec1->delete();
        return redirect()->route('view_aboutSec1')->with('addStatus', 'Data Delete Successfully');
    }
}
