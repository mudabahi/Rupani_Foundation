<?php

namespace App\Http\Controllers;

use App\Models\aboutSec4;
use Illuminate\Http\Request;

class AboutSec4Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aboutSec4 = aboutSec4::all();
        return view('admin.aboutSec4.view_aboutSec4', compact('aboutSec4'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.aboutSec4.add_aboutSec4');
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
            'aboutSec4Titles' => 'required',
            'aboutSec4Descriptions' => 'required',
        ]);
        $aboutSec4 = new aboutSec4();

        // About Section 3 Title store Code 
        $aboutSec4->aboutSec4Titles = $request->input('aboutSec4Titles');

        // About Section 3 Descriptions store Code 
        $aboutSec4->aboutSec4Descriptions = $request->input('aboutSec4Descriptions');

        $aboutSec4->save();
        return redirect()->route('view_aboutSec4')->with('addStatus', 'Data Insert Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\aboutSec4  $aboutSec4
     * @return \Illuminate\Http\Response
     */
    public function show(aboutSec4 $aboutSec4)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\aboutSec4  $aboutSec4
     * @return \Illuminate\Http\Response
     */
    public function edit(aboutSec4 $aboutSec4, $id)
    {
        $aboutSec4 = aboutSec4::find($id);
        return view('admin.aboutSec4.edit_aboutSec4', compact('aboutSec4'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\aboutSec4  $aboutSec4
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, aboutSec4 $aboutSec4, $id)
    {
        $aboutSec4 = aboutSec4::find($id);

        // About Section 3 Title store Code 
        $aboutSec4->aboutSec4Titles = $request->input('aboutSec4Titles');

        // About Section 2 Descriptions store Code 
        $aboutSec4->aboutSec4Descriptions = $request->input('aboutSec4Descriptions');


        $aboutSec4->update();
        return redirect()->route('view_aboutSec4')->with('addStatus', 'Data Update Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\aboutSec4  $aboutSec4
     * @return \Illuminate\Http\Response
     */
    public function destroy(aboutSec4 $aboutSec4, $id)
    {
        $aboutSec4 = aboutSec4::find($id);
        $aboutSec4->delete();
        return redirect()->route('view_aboutSec4')->with('addStatus', 'Data Delete Successfully.');

    }
}
