<?php

namespace App\Http\Controllers;

use App\Models\addSec1;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\file;

class AddSec1Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $addSec1 = addSec1::all();
        return view('Admin.addSec1.view_addSec1', compact('addSec1'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.addSec1.add_addSec1');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $addSec1 = new addSec1();

        if ($request->hasFile('addSec1Image')) {
            $file = $request->file('addSec1Image');
            $extentsion = $file->getClientOriginalName();
            $fileName = time() . " . " . $extentsion;
            $file->move('uploads/AddmissionImage/' , $fileName);
            $addSec1->addSec1Image = $fileName;
        }
        $addSec1->addSec1Title = $request->addSec1Title;
        $addSec1->addSec1Description = $request->addSec1Description;

        $addSec1->save();
        return redirect()->route('view_addSec1')->with('addStatus', 'Data insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\addSec1  $addSec1
     * @return \Illuminate\Http\Response
     */
    public function show(addSec1 $addSec1)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\addSec1  $addSec1
     * @return \Illuminate\Http\Response
     */
    public function edit(addSec1 $addSec1, $id)
    {
        $addSec1 = addSec1::find($id);
        return view('Admin.addSec1.edit_addSec1', compact('addSec1'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\addSec1  $addSec1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, addSec1 $addSec1, $id)
    {
        $addSec1 = addSec1::find($id);
        if ($request->hasFile('addSec1Image')) {
            $destination = 'uploads/aboutImage/' . $addSec1->addSec1Image;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('addSec1Image');
            $extentsion = $file->getClientOriginalName();
            $fileName = time() . " . " . $extentsion;
            $file->move('uploads/AddmissionImage/' , $fileName);
            $addSec1->addSec1Image = $fileName;
        }
        $addSec1->addSec1Title = $request->addSec1Title;
        $addSec1->addSec1Description = $request->addSec1Description;

        $addSec1->update();
        return redirect()->route('view_addSec1')->with('addStatus', 'Data update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\addSec1  $addSec1
     * @return \Illuminate\Http\Response
     */
    public function destroy(addSec1 $addSec1, $id)
    {
        $addSec1 = addSec1::find($id);
        $destination = 'uploads/aboutImage/' . $addSec1->id;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $addSec1->delete();
        return redirect()->route('view_addSec1')->with('addStatus', 'Data Delete Successfully');
    }
}
