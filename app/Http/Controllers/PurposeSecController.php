<?php

namespace App\Http\Controllers;

use App\Models\purposeSec;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class PurposeSecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $purposeSecView = purposeSec::all();
        return view('admin.purposeSec.view_purposeSec', compact('purposeSecView'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.purposeSec.add_purposeSec');
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
            'purposeSecImage' => 'required | image|mimes:jpeg,png,jpg|min:0.3456',
            'purposeSecTitle' =>'required',
            'purposeSecDescription' => 'required',
        ]);
        $purposeSec = new purposeSec();

        if($request->hasFile('purposeSecImage')) {
            $file = $request->file('purposeSecImage');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/AssessmentImage/", $filename);
            $purposeSec->purposeSecImage =  $filename;
        }   

        $purposeSec->purposeSecTitle = $request->input('purposeSecTitle');

        $purposeSec->purposeSecDescription = $request->input('purposeSecDescription');


        $purposeSec->save();
        return redirect()->route('view_purposeSec')->with('addStatus', 'Data insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\purposeSec  $purposeSec
     * @return \Illuminate\Http\Response
     */
    public function show(purposeSec $purposeSec)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\purposeSec  $purposeSec
     * @return \Illuminate\Http\Response
     */
    public function edit(purposeSec $purposeSec, $id)
    {
        $purposeSecView = purposeSec::find($id);
        return view('admin.purposeSec.edit_purposeSec', compact('purposeSecView'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\purposeSec  $purposeSec
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, purposeSec $purposeSec, $id)
    {
        $purposeSecView = purposeSec::find($id);

        if ($request->hasFile('purposeSecImage')) {
            $destination = 'uploads/AssessmentImage/' . $purposeSecView->purposeSecImage;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('purposeSecImage');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/AssessmentImage/", $filename);
            $purposeSec->purposeSecImage =  $filename;
        }

        $purposeSecView->purposeSecTitle = $request->input('purposeSecTitle');

        $purposeSecView->purposeSecDescription = $request->input('purposeSecDescription');


        $purposeSecView->update();
        return redirect()->route('view_purposeSec')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\purposeSec  $purposeSec
     * @return \Illuminate\Http\Response
     */
    public function destroy(purposeSec $purposeSec, $id)
    {
        $purposeSecView = purposeSec::find($id);
        $destination = 'uploads/AssessmentImage/' . $purposeSecView->id;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $purposeSecView->delete();
        return redirect()->route('view_purposeSec')->with('addStatus', 'Data Delete Successfully');
    }
}
