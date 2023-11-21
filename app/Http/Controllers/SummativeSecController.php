<?php

namespace App\Http\Controllers;

use App\Models\summativeSec;
use Illuminate\Http\Request;

class SummativeSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $summativeSecView = summativeSec::all();
        return view('Admin.summativeSec.view_summative', compact('summativeSecView'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.summativeSec.add_summative');
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
            'summativeTitle' => 'required',
            'summativeDescription' => 'required',
        ]);
        $summativeSec = new summativeSec();
        // summativeTitle
        $summativeSec->summativeTitle = $request->summativeTitle;
        // summativeDescription
        $summativeSec->summativeDescription = $request->summativeDescription;
        // summativeSec->save
        $summativeSec->save();

        return redirect()->route('view_summative')->with('addStatus', 'Data Insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\summativeSec  $summativeSec
     * @return \Illuminate\Http\Response
     */
    public function show(summativeSec $summativeSec)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\summativeSec  $summativeSec
     * @return \Illuminate\Http\Response
     */
    public function edit(summativeSec $summativeSec, $id)
    {
        $summativeSecView = summativeSec::find($id);
        return view('Admin.summativeSec.edit_summative', compact('summativeSecView'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\summativeSec  $summativeSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, summativeSec $summativeSec, $id)
    {
        $summativeSecView = summativeSec::find($id);
        // summativeTitle
        $summativeSecView->summativeTitle = $request->summativeTitle;
        // summativeDescription
        $summativeSecView->summativeDescription = $request->summativeDescription;
        // summativeSecView->save
        $summativeSecView->update();

        return redirect()->route('view_summative')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\summativeSec  $summativeSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(summativeSec $summativeSec, $id)
    {
        $summativeSecView = summativeSec::find($id);
        // summativeSecView->Delete
        $summativeSecView->delete();
        return redirect()->route('view_summative')->with('addStatus', 'Data Delete Successfully');
    }
}
