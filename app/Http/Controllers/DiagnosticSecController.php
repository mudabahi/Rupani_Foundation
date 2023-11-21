<?php

namespace App\Http\Controllers;

use App\Models\diagnosticSec;
use Illuminate\Http\Request;

class DiagnosticSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $diagnosticSec = diagnosticSec::all();
        return view('Admin.diagnosticSec.view_diagnostic', compact('diagnosticSec'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.diagnosticSec.add_diagnostic');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $diagnosticSec = new diagnosticSec();
        // diagnosticTitle
        $diagnosticSec->diagnosticTitle = $request->diagnosticTitle;
        // diagnosticDescription
        $diagnosticSec->diagnosticDescription = $request->diagnosticDescription;
        // diagnosticSec->save
        $diagnosticSec->save();

        return redirect()->route('view_dianostic')->with('addStatus', 'Data Insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\diagnosticSec  $diagnosticSec
     * @return \Illuminate\Http\Response
     */
    public function show(diagnosticSec $diagnosticSec)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\diagnosticSec  $diagnosticSec
     * @return \Illuminate\Http\Response
     */
    public function edit(diagnosticSec $diagnosticSec, $id)
    {
        $diagnosticSec = diagnosticSec::find($id);
        return view('Admin.diagnosticSec.edit_diagnostic', compact('diagnosticSec'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\diagnosticSec  $diagnosticSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, diagnosticSec $diagnosticSec, $id)
    {
        $diagnosticSec = diagnosticSec::find($id);

        $diagnosticSec->diagnosticTitle = $request->diagnosticTitle;
        // diagnosticDescription
        $diagnosticSec->diagnosticDescription = $request->diagnosticDescription;
        // diagnosticSec->save
        $diagnosticSec->update();

        return redirect()->route('view_dianostic')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\diagnosticSec  $diagnosticSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(diagnosticSec $diagnosticSec, $id)
    {
        $diagnosticSec = diagnosticSec::find($id);

        $diagnosticSec->delete();

        return redirect()->route('view_dianostic')->with('addStatus', 'Data Delete Successfully');
    }
}
