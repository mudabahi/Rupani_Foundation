<?php

namespace App\Http\Controllers;

use App\Models\assSec1;
use Illuminate\Http\Request;

class AssSec1Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $assSec1 = assSec1::all();
        return view('admin.AssSecTopTitle.view_assSec1Title', ['assSec1' => $assSec1]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.AssSecTopTitle.add_assSec1Title');
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
            'assSecTopTitle' => 'required',
        ]);

        $assSec1 = new assSec1();

        $assSec1->assSecTopTitle = $request->input('assSecTopTitle');

        $assSec1->save();
        return redirect()->route('view_assSec1Title')->with('addStatus', 'Data Insert Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\assSec1  $assSec1
     * @return \Illuminate\Http\Response
     */
    public function show(assSec1 $assSec1)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\assSec1  $assSec1
     * @return \Illuminate\Http\Response
     */
    public function edit(assSec1 $assSec1, $id)
    {
        $assSec1 = assSec1::find($id);
        return view('admin.AssSecTopTitle.edit_assSec1Title', ['assSec1' => $assSec1]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\assSec1  $assSec1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, assSec1 $assSec1, $id)
    {
        $assSec1 = assSec1::find($id);

        $assSec1->assSecTopTitle = $request->input('assSecTopTitle');

        $assSec1->update();
        return redirect()->route('view_assSec1Title')->with('addStatus', 'Data Update Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\assSec1  $assSec1
     * @return \Illuminate\Http\Response
     */
    public function destroy(assSec1 $assSec1, $id)
    {
        $assSec1 = assSec1::find($id);
        $assSec1->delete();
        return redirect()->route('view_assSec1Title')->with('addStatus', 'Data Delete Successfully.');
    }
}
