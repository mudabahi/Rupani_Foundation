<?php

namespace App\Http\Controllers;

use App\Models\practicesSec;
use Illuminate\Http\Request;

class PracticesSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $practicesSec = practicesSec::all();
        return view('admin.PracticesSec.view_practicesSec', compact('practicesSec'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.PracticesSec.add_practicesSec');
        
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
            'practicesSec_title' => 'required',
            'practicesSec_Description' => 'required',
        ]);
        $practicesSec = new practicesSec();

        // practices Title
        $practicesSec->practicesSec_title = $request->input('practicesSec_title');
        // practices Description
        $practicesSec->practicesSec_Description = $request->input('practicesSec_Description');

        // Save this data code
        $practicesSec->save();
        return redirect()->route('view_practicesSec')->with('addStatus', 'Data Insert Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\practicesSec  $practicesSec
     * @return \Illuminate\Http\Response
     */
    public function show(practicesSec $practicesSec)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\practicesSec  $practicesSec
     * @return \Illuminate\Http\Response
     */
    public function edit(practicesSec $practicesSec, $id)
    {
        $practicesSec = practicesSec::find($id);
        return view('admin.PracticesSec.edit_practicesSec', compact('practicesSec'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\practicesSec  $practicesSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, practicesSec $practicesSec, $id)
    {
        $practicesSec = practicesSec::find($id);
        
        // practices Title
        $practicesSec->practicesSec_title = $request->input('practicesSec_title');
        // practices Description
        $practicesSec->practicesSec_Description = $request->input('practicesSec_Description');

        // Save this data code
        $practicesSec->update();
        return redirect()->route('view_practicesSec')->with('addStatus', 'Data Update Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\practicesSec  $practicesSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(practicesSec $practicesSec, $id)
    {
        $practicesSec = practicesSec::find($id);
        $practicesSec->delete();
        return redirect()->route('view_practicesSec')->with('addStatus', 'Data Delete Successfully.');
    }
}
