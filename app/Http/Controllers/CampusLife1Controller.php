<?php

namespace App\Http\Controllers;

use App\Models\campusLife1;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class CampusLife1Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Cl_View1 = campusLife1::all();
        return view('Admin.campusLife1.view_campusLife1', compact('Cl_View1'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.campusLife1.add_campusLife1');
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
            'Cl_image1' => 'required',
            'Cl_title1' => 'required',
        ]);
        $CL_View1 = new campusLife1();
        // Input Filde
        if ($request->hasFile('Cl_image1')) {
            $file = $request->file('Cl_image1');
            $extentxion = $file->getClientOriginalName();
            $fileName = time() . "." . $extentxion;
            $file->move('uploads/CampusLifeImages', $fileName);
            $CL_View1->Cl_image1 = $fileName;
        }

        // Input
        $CL_View1->Cl_title1 = $request->input('Cl_title1');

        $CL_View1->save();
        return redirect()->route('view_campusLife1')->with('addStatus', 'Data Insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\campusLife1  $campusLife1
     * @return \Illuminate\Http\Response
     */
    public function show(campusLife1 $campusLife1)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\campusLife1  $campusLife1
     * @return \Illuminate\Http\Response
     */
    public function edit(campusLife1 $campusLife1, $id)
    {
        $CL_View1 = campusLife1::find($id);
        return view('Admin.campusLife1.edit_campusLife1', compact('CL_View1'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\campusLife1  $campusLife1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, campusLife1 $campusLife1, $id)
    {
        $CL_View1 = campusLife1::find($id);
        if ($request->hasFile('Cl_image1')) {
            $destination = 'uploads/CampusLifeImages/' . $CL_View1->Cl_image1;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('Cl_image1');
            $extentxion = $file->getClientOriginalName();
            $fileName = time() . "." . $extentxion;
            $file->move('uploads/CampusLifeImages', $fileName);
            $CL_View1->Cl_image1 = $fileName;
        }

        // Input
        $CL_View1->Cl_title1 = $request->input('Cl_title1');

        $CL_View1->update();
        return redirect()->route('view_campusLife1')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\campusLife1  $campusLife1
     * @return \Illuminate\Http\Response
     */
    public function destroy(campusLife1 $campusLife1, $id)
    {
        $CL_View1 = campusLife1::find($id);
        $destination = 'uploads/CampusLifeImages/' . $CL_View1->Cl_image1;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $CL_View1->update();
        return redirect()->route('view_campusLife1')->with('addStatus', 'Data Update Successfully');
    }
}
