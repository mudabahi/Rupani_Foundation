<?php

namespace App\Http\Controllers;

use App\Models\assRecordSec;
use App\Models\assReportingSec;
use Illuminate\Http\Request;

class AssReportingSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $reporting = assReportingSec::all();
        return view('Admin.reportingSec.view_reporting', compact('reporting'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.reportingSec.add_reporting');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $reporting =new assReportingSec();
        //assReportingTitle input filde
        $reporting->assReportingTitle = $request->input('assReportingTitle');
        // assReportingDescription input Filde
        $reporting->assReportingDescription = $request->input('assReportingDescription');

        $reporting->save();
        return redirect()->route('view_reporting')->with('addStatus', 'Data insert Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\assReportingSec  $assReportingSec
     * @return \Illuminate\Http\Response
     */
    public function show(assReportingSec $assReportingSec)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\assReportingSec  $assReportingSec
     * @return \Illuminate\Http\Response
     */
    public function edit(assReportingSec $assReportingSec, $id)
    {
        $reporting = assReportingSec::find($id);
        return view('Admin.reportingSec.edit_reporting', compact('reporting'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\assReportingSec  $assReportingSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, assReportingSec $assReportingSec, $id)
    {
        $reporting = assReportingSec::find($id);
        //assReportingTitle Update filde
        $reporting->assReportingTitle = $request->input('assReportingTitle');
        // assReportingDescription Update Filde
        $reporting->assReportingDescription = $request->input('assReportingDescription');

        $reporting->update();
        return redirect()->route('view_reporting')->with('addStatus', 'Data Update Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\assReportingSec  $assReportingSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(assReportingSec $assReportingSec, $id)
    {
        $reporting = assReportingSec::find($id);
        $reporting->delete();
        return redirect()->route('view_reporting')->with('addStatus', 'Data Delete Successfully.');
    }
}
