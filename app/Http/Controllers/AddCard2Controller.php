<?php

namespace App\Http\Controllers;

use App\Models\addCard2;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AddCard2Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $addCard2 = addCard2::all();
        return view('Admin.addCard2.view_addCard2', compact('addCard2'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.addCard2.add_addCard2');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $addCard2 = new addCard2();
        if ($request->hasFile('addCard2Image')) {
            $file = $request->file('addCard2Image');
            $extentsion = $file->getClientOriginalName();
            $fileName = time() . " . " . $extentsion;
            $file->move('uploads/AddmissionImage/', $fileName);
            $addCard2->addCard2Image = $fileName;
        }
        $addCard2->addCard2Title = $request->addCard2Title;
        $addCard2->addCard2description = $request->addCard2description;

        $addCard2->save();
        return redirect()->route('view_addCard2')->with('addStatus', 'Data insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\addCard2  $addCard2
     * @return \Illuminate\Http\Response
     */
    public function show(addCard2 $addCard2)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\addCard2  $addCard2
     * @return \Illuminate\Http\Response
     */
    public function edit(addCard2 $addCard2, $id)
    {
        $addCard2 = addCard2::find($id);
        return view('Admin.addCard2.edit_addCard2', compact('addCard2'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\addCard2  $addCard2
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, addCard2 $addCard2, $id)
    {
        $addCard2 = addCard2::find($id);
        if ($request->hasFile('addCard2Image')) {
            $destination = 'uploads/AddmissionImage/' . $addCard2->addCard2Image;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('addCard2Image');
            $extentsion = $file->getClientOriginalName();
            $fileName = time() . " . " . $extentsion;
            $file->move('uploads/AddmissionImage/', $fileName);
            $addCard2->addCard2Image = $fileName;
        }
        $addCard2->addCard2Title = $request->addCard2Title;
        $addCard2->addCard2description = $request->addCard2description;


        $addCard2->update();
        return redirect()->route('view_addCard2')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\addCard2  $addCard2
     * @return \Illuminate\Http\Response
     */
    public function destroy(addCard2 $addCard2, $id)
    {
        $addCard2 = addCard2::find($id);
        $destination = 'uploads/aboutImage/' . $addCard2->addCard2;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $addCard2->delete();
        return redirect()->route('view_addCard2')->with('addStatus', 'Data Delete Successfully');
    }
}
