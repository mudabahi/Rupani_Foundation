<?php

namespace App\Http\Controllers;

use App\Models\campusLife2;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class CampusLife2Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $CL_View2 = campusLife2::all();
        return view('Admin.campusLife2.view_campusLife2', compact('CL_View2'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Admin.campusLife2.add_campusLife2');
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
            'Cl_image2' => 'required',
            'Cl_title2' => 'required',
        ]);
        $CL_View2 = new campusLife2();
        // Input Filde
        if ($request->hasFile('Cl_image2')) {
            $file = $request->file('Cl_image2');
            $extentxion = $file->getClientOriginalName();
            $fileName = time() . "." . $extentxion;
            $file->move('uploads/CampusLifeImages', $fileName);
            $CL_View2->Cl_image2 = $fileName;
        }

        // Input
        $CL_View2->Cl_title2 = $request->input('Cl_title2');

        $CL_View2->save();
        return redirect()->route('view_campusLife2')->with('addStatus', 'Data Insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\campusLife2  $campusLife2
     * @return \Illuminate\Http\Response
     */
    public function show(campusLife2 $campusLife2)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\campusLife2  $campusLife2
     * @return \Illuminate\Http\Response
     */
    public function edit(campusLife2 $campusLife2, $id)
    {
        $Cl_View2 = campusLife2::find($id);
        return view('Admin.campusLife2.edit_campusLife2', compact('Cl_View2'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\campusLife2  $campusLife2
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, campusLife2 $campusLife2, $id)
    {
        $CL_View2 = campusLife2::find($id);

        if ($request->hasFile('Cl_image2')) {
            $destination = 'uploads/CampusLifeImages/' . $CL_View2->Cl_image2;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('Cl_image2');
            $extentxion = $file->getClientOriginalName();
            $fileName = time() . "." . $extentxion;
            $file->move('uploads/CampusLifeImages', $fileName);
            $CL_View2->Cl_image2 = $fileName;
        }

        // Input
        $CL_View2->Cl_title2 = $request->input('Cl_title2');

        $CL_View2->update();
        return redirect()->route('view_campusLife2')->with('addStatus', 'Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\campusLife2  $campusLife2
     * @return \Illuminate\Http\Response
     */
    public function destroy(campusLife2 $campusLife2, $id)
    {
        $CL_View2 = campusLife2::find($id);
        $destination = 'uploads/CampusLifeImages/' . $CL_View2->Cl_image2;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $CL_View2->delete();
        return redirect()->route('view_campusLife2')->with('addStatus', 'Data Delete Successfully');
    }
}
