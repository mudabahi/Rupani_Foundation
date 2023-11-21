<?php

namespace App\Http\Controllers;

use App\Models\addCard1;
use Carbon\Doctrine\CarbonDoctrineType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

use function PHPUnit\Framework\returnSelf;
use function Psy\debug;

class AddCard1Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $addCard1 = addCard1::all();
        return view('Admin.addCard1.view_addCard1', compact('addCard1'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.addCard1.add_addCard1');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $addCard1 = new addCard1();
        // Card inout 1

        if ($request->hasFile('addCard1Image')) {
            $file = $request->file('addCard1Image');
            $extentsion = $file->getClientOriginalName();
            $fileName = time() . " . " . $extentsion;
            $file->move('uploads/AddmissionImage/', $fileName);
            $addCard1->addCard1Image = $fileName;
        }
        $addCard1->addCard1Title = $request->addCard1Title;
        $addCard1->addCard1description = $request->addCard1description;

        $addCard1->save();
        return redirect()->route('view_addCard1')->with('addStatus', 'Data insert Successfully');
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\addCard1  $addCard1
     * @return \Illuminate\Http\Response
     */
    public function show(addCard1 $addCard1)
    {
        //
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\addCard1  $addCard1
     * @return \Illuminate\Http\Response
     */
    public function edit(addCard1 $addCard1, $id)
    {
        $addCard1 = addCard1::find($id);
        return view('Admin.addCard1.edit_addCard1', compact('addCard1'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\addCard1  $addCard1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, addCard1 $addCard1, $id)
    {
        $addCard1 = addCard1::find($id);
        if ($request->hasFile('addCard1Image')) {
            $destination = 'uploads/AddmissionImage/' . $addCard1->addCard1Image;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('addCard1Image');
            $extentsion = $file->getClientOriginalName();
            $fileName = time() . " . " . $extentsion;
            $file->move('uploads/AddmissionImage/', $fileName);
            $addCard1->addCard1Image = $fileName;
        }
        $addCard1->addCard1Title = $request->addCard1Title;
        $addCard1->addCard1description = $request->addCard1description;


        $addCard1->update();
        return redirect()->route('view_addCard1')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\addCard1  $addCard1
     * @return \Illuminate\Http\Response
     */
    public function destroy(addCard1 $addCard1, $id)
    {
        $addCard1 = addCard1::find($id);
        $destination = 'uploads/aboutImage/' . $addCard1->addCard1;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $addCard1->delete();
        return redirect()->route('view_addCard1')->with('addStatus', 'Data Delete Successfully');
    }
}
