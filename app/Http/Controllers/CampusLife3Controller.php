<?php

namespace App\Http\Controllers;

use App\Models\campusLife3;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class CampusLife3Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Cl_View3 = campusLife3::all();
        return view('Admin.campusLife3.view_campusLife3', compact('Cl_View3'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.campusLife3.add_campusLife3');
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
            'Cl_image3' => 'required',
            'Cl_title3' => 'required',
        ]);
        $Cl_View3 = new campusLife3();
        // Input Filde
        if ($request->hasFile('Cl_image3')) {
            $file = $request->file('Cl_image3');
            $extentxion = $file->getClientOriginalName();
            $fileName = time() . "." . $extentxion;
            $file->move('uploads/CampusLifeImages', $fileName);
            $Cl_View3->Cl_image3 = $fileName;
        }

        // Input
        $Cl_View3->Cl_title3 = $request->input('Cl_title3');

        $Cl_View3->save();
        return redirect()->route('view_campusLife3')->with('addStatus', 'Data Insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\campusLife3  $campusLife3
     * @return \Illuminate\Http\Response
     */
    public function show(campusLife3 $campusLife3)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\campusLife3  $campusLife3
     * @return \Illuminate\Http\Response
     */
    public function edit(campusLife3 $campusLife3, $id)
    {
        $Cl_View3 = campusLife3::find($id);
        return view('Admin.campusLife3.edit_campusLife3', compact('Cl_View3'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\campusLife3  $campusLife3
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, campusLife3 $campusLife3, $id)
    {
        $Cl_View3 = campusLife3::find($id);

        if ($request->hasFile('Cl_image3')) {
            $destination = 'uploads/CampusLifeImages/' . $Cl_View3->Cl_image3;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('Cl_image3');
            $extentxion = $file->getClientOriginalName();
            $fileName = time() . "." . $extentxion;
            $file->move('uploads/CampusLifeImages', $fileName);
            $Cl_View3->Cl_image3 = $fileName;
        }

        // Input
        $Cl_View3->Cl_title3 = $request->input('Cl_title3');

        $Cl_View3->update();
        return redirect()->route('view_campusLife3')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\campusLife3  $campusLife3
     * @return \Illuminate\Http\Response
     */
    public function destroy(campusLife3 $campusLife3, $id)
    {
        $Cl_View3 = campusLife3::find($id);
        $destination = 'uploads/CampusLifeImages/' . $Cl_View3->Cl_image3;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $Cl_View3->delete();
        return redirect()->route('view_campusLife3')->with('addStatus', 'Data Delete Successfully');
    }
}
