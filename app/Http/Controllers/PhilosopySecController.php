<?php

namespace App\Http\Controllers;

use App\Models\philosopySec;
use Illuminate\Http\Request;

class PhilosopySecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $philosopySec = philosopySec::all();
        return view('Admin.PhilosophySec.view_philosophySec', compact('philosopySec'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.PhilosophySec.add_philosophySec');
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
            'philosopySec_Tile' => 'required',
            'philosopySec_Description' => 'required',
        ]);
        $philosopySec = new philosopySec();
        // Philodophy title
        $philosopySec->philosopySec_Tile = $request->input('philosopySec_Tile');

        // philosophy Description
        $philosopySec->philosopySec_Description = $request->input('philosopySec_Description');

        $philosopySec->save();
        return redirect()->route('view_philosophySec')->with('addStatus', 'Data Insert Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\philosopySec  $philosopySec
     * @return \Illuminate\Http\Response
     */
    public function show(philosopySec $philosopySec)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\philosopySec  $philosopySec
     * @return \Illuminate\Http\Response
     */
    public function edit(philosopySec $philosopySec, $id)
    {
        $philosopySec = philosopySec::find($id);
        return view('Admin.PhilosophySec.edit_philosophySec', compact('philosopySec'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\philosopySec  $philosopySec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, philosopySec $philosopySec, $id)
    {
        $philosopySec = philosopySec::find($id);
        $philosopySec->philosopySec_Tile = $request->input('philosopySec_Tile');

        // philosophy Description
        $philosopySec->philosopySec_Description = $request->input('philosopySec_Description');

        $philosopySec->update();
        return redirect()->route('view_philosophySec')->with('addStatus', 'Data Update Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\philosopySec  $philosopySec
     * @return \Illuminate\Http\Response
     */
    public function destroy(philosopySec $philosopySec, $id)
    {
        $philosopySec = philosopySec::find($id);
        $philosopySec->delete();
        return redirect()->route('view_philosophySec')->with('addStatus', 'Data Delete Successfully.');


    }
}
