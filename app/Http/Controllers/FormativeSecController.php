<?php

namespace App\Http\Controllers;

use App\Models\formativeSec;
use Illuminate\Http\Request;

class FormativeSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $formativeSec = formativeSec::all();
        return view('Admin.formativeSec.view_formative', compact('formativeSec'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.formativeSec.add_formative',);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $formativeSec = new formativeSec();
        // diagnosticTitle
        $formativeSec->formativeTitle = $request->formativeTitle;
        // formative Description
        $formativeSec->formativeDescription = $request->formativeDescription;
        // formativeSec->save
        $formativeSec->save();

        return redirect()->route('view_formative')->with('addStatus', 'Data Insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\formativeSec  $formativeSec
     * @return \Illuminate\Http\Response
     */
    public function show(formativeSec $formativeSec)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\formativeSec  $formativeSec
     * @return \Illuminate\Http\Response
     */
    public function edit(formativeSec $formativeSec, $id)
    {
            $formativeSec = formativeSec::find($id);
            return view('Admin.formativeSec.edit_formative', compact('formativeSec'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\formativeSec  $formativeSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, formativeSec $formativeSec, $id)
    {
        $formativeSec = formativeSec::find($id);

        $formativeSec->formativeTitle = $request->formativeTitle;
        // formative Description
        $formativeSec->formativeDescription = $request->formativeDescription;
        // formativeSec->save
        $formativeSec->update();

        return redirect()->route('view_formative')->with('addStatus', 'Data Insert Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\formativeSec  $formativeSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(formativeSec $formativeSec, $id)
    {
        $formativeSec = formativeSec::find($id);
        $formativeSec->delete();

        return redirect()->route('view_formative')->with('addStatus', 'Data Insert Successfully');
        
    }
}
