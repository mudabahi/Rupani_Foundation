<?php

namespace App\Http\Controllers;

use App\Models\assSec1;
use App\Models\assToolSec;
use Illuminate\Http\Request;

class AssToolSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $assToolSec = assToolSec::all();
        return view('Admin.assToolSec.view_assToolSec', compact('assToolSec'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.assToolSec.add_assToolSec');
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
            'assToolSecTitle' => 'required',
            'assToolSecDescription' => 'required',
        ]);
        $assToolSec = new assToolSec();
        // assToolSecTitle
        $assToolSec->assToolSecTitle =   $request->input('assToolSecTitle');
        // assToolSecTitle
        $assToolSec->assToolSecDescription =   $request->input('assToolSecDescription');
        // 
        $assToolSec->save();
        return redirect()->route('view_assToolSec')->with('assStatus', 'Data insert Successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\assToolSec  $assToolSec
     * @return \Illuminate\Http\Response
     */
    public function show(assToolSec $assToolSec)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\assToolSec  $assToolSec
     * @return \Illuminate\Http\Response
     */
    public function edit(assToolSec $assToolSec, $id)
    {
        $assToolSecView = assToolSec::find($id);
        return view('Admin.assToolSec.edit_assToolSec', compact('assToolSecView'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\assToolSec  $assToolSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, assToolSec $assToolSec, $id)
    {
        $assToolSec = assToolSec::find($id);
         // assToolSecTitle
         $assToolSec->assToolSecTitle =   $request->input('assToolSecTitle');
         // assToolSecTitle
         $assToolSec->assToolSecDescription =   $request->input('assToolSecDescription');
         // 
         $assToolSec->update();
         return redirect()->route('view_assToolSec')->with('assStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\assToolSec  $assToolSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(assToolSec $assToolSec, $id)
    {
        $assToolSec = assToolSec::find($id);
         $assToolSec->delete();
         return redirect()->route('view_assToolSec')->with('assStatus', 'Data Delete Successfully');
    }
}
