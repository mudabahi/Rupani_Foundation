<?php

namespace App\Http\Controllers;

use App\Models\strategiesSec;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class StrategiesSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $strategiesSec = strategiesSec::all();
        return view('Admin.strategiesSec.view_strategiesSec', compact('strategiesSec'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.strategiesSec.add_strategiesSec');
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
            'strategiesImage' => 'required | image|mimes:jpeg,png,jpg|min:0.3456',
            'strategiesTitle' => 'required',
            'strategiesDescription' => 'required',
        ]);

        $strategiesSecView = new strategiesSec();

        if ($request->hasFile('strategiesImage')) {
            $file = $request->file('strategiesImage');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/AssessmentImage/", $filename);
            $strategiesSecView->strategiesImage =  $filename;
        }

        $strategiesSecView->strategiesTitle = $request->input('strategiesTitle');

        $strategiesSecView->strategiesDescription = $request->input('strategiesDescription');

        $strategiesSecView->save();
        return redirect()->route('view_strategiesSec')->with('addStatus', 'Data insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\strategiesSec  $strategiesSec
     * @return \Illuminate\Http\Response
     */
    public function show(strategiesSec $strategiesSec)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\strategiesSec  $strategiesSec
     * @return \Illuminate\Http\Response
     */
    public function edit(strategiesSec $strategiesSec, $id)
    {
        $strategiesSec = strategiesSec::find($id);
        return view('Admin.strategiesSec.edit_strategiesSec', compact('strategiesSec'));
    }

    /**x
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\strategiesSec  $strategiesSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, strategiesSec $strategiesSec, $id)
    {
        $strategiesSec = strategiesSec::find($id);

        if ($request->hasFile('strategiesImage')) {
            $destination = 'uploads/AssessmentImage/' . $strategiesSec->strategiesImage;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('strategiesImage');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/AssessmentImage/", $filename);
            $strategiesSec->strategiesImage =  $filename;
        }

        $strategiesSec->strategiesTitle = $request->input('strategiesTitle');

        $strategiesSec->strategiesDescription = $request->input('strategiesDescription');

        $strategiesSec->save();
        return redirect()->route('view_strategiesSec')->with('addStatus', 'Data insert Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\strategiesSec  $strategiesSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(strategiesSec $strategiesSec, $id)
    {
        $strategiesSec = strategiesSec::find($id);
        $destination = 'uploads/AssessmentImage/' . $strategiesSec->id;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $strategiesSec->delete();
        return redirect()->route('view_strategiesSec')->with('addStatus', 'Data Delete Successfully');
    }
}
