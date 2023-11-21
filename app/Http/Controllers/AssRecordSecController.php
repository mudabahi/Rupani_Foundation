<?php

namespace App\Http\Controllers;

use App\Models\assRecordSec;
use Illuminate\Http\Request;
use Symfony\Component\Console\Input\Input;

class AssRecordSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $record = assRecordSec::all();
        return view('Admin.recordSec.view_record', compact('record'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.recordSec.add_record');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $record = new assRecordSec();
        //assRecordTitle
        $record->assRecordTitle = $request->Input('assRecordTitle');
        //assRecordTitle
        $record->assRecordDescription = $request->Input('assRecordDescription');
        // Save
        $record->save();
        return redirect()->route('view_record')->with('addStatus', 'Data insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\assRecordSec  $assRecordSec
     * @return \Illuminate\Http\Response
     */
    public function show(assRecordSec $assRecordSec)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\assRecordSec  $assRecordSec
     * @return \Illuminate\Http\Response
     */
    public function edit(assRecordSec $assRecordSec, $id)
    {
        $record = assRecordSec::find($id);
        return view('Admin.recordSec.edit_record', compact('record'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\assRecordSec  $assRecordSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, assRecordSec $assRecordSec, $id)
    {
        $record = assRecordSec::find($id);

        $record->assRecordTitle = $request->Input('assRecordTitle');
        //assRecordTitle
        $record->assRecordDescription = $request->Input('assRecordDescription');
        // Save
        $record->update();
        return redirect()->route('view_record')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\assRecordSec  $assRecordSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(assRecordSec $assRecordSec, $id)
    {
        $record = assRecordSec::find($id);
        $record->delete();
        return redirect()->route('view_record')->with('addStatus', 'Data Delete Successfully');
    }
}
