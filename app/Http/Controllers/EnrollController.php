<?php

namespace App\Http\Controllers;

use App\Models\enroll;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class EnrollController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $enroll = enroll::all();
        return view('admin.enrollChild.view_enroll', compact('enroll'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.enrollChild.add_enroll');
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
            'enroll_image1' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
            'enroll_title' => 'required',
            'enroll_image2' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
        ]);
        $enroll = new enroll();
        if($request->hasFile('enroll_image1'))
        {
            $file = $request->file('enroll_image1');
            $extention = $file->getClientOriginalName();
            $filename = time() . " . " . $extention;
            $file->move('uploads/enrollImage/', $filename);
            $enroll->enroll_image1 = $filename;
        }

        $enroll->enroll_title = $request->input('enroll_title');

        if($request->hasFile('enroll_image2'))
        {
            $file = $request->file('enroll_image2');
            $extention = $file->getClientOriginalName();
            $filename = time() . " . " . $extention;
            $file->move('uploads/enrollImage/', $filename);
            $enroll->enroll_image2 = $filename;
        }

        $enroll->save();
        return redirect()->route('view_enroll')->with('addStatus', 'Enroll Data insert Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\enroll  $enroll
     * @return \Illuminate\Http\Response
     */
    public function show(enroll $enroll, $id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\enroll  $enroll
     * @return \Illuminate\Http\Response
     */
    public function edit(enroll $enroll, $id)
    {
        $enroll = enroll::find($id);
        return view('admin.enrollChild.edit_enroll', compact('enroll'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\enroll  $enroll
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, enroll $enroll, $id)
    {
        $enroll = enroll::find($id);
        if($request->hasFile('enroll_image1'))
        {
            $destination = 'uploads/enrollImage/' . $enroll->enroll_image1;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('enroll_image1');
            $extention = $file->getClientOriginalName();
            $filename = time() . " . " . $extention;
            $file->move('uploads/enrollImage/' . $filename);
            $enroll->enroll_image1 = $filename;
        }

        $enroll->enroll_title = $request->input('enroll_title');

        if($request->hasFile('enroll_image2'))
        {
            $destination = 'uploads/enrollImage/' . $enroll->enroll_image2;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('enroll_image2');
            $extention = $file->getClientOriginalName();
            $filename = time() . " . " . $extention;
            $file->move('uploads/enrollImage/', $filename);
            $enroll->enroll_image2 = $filename;
        }

        $enroll->update();
        return redirect()->route('view_enroll')->with('addStatus', 'Enroll Data Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\enroll  $enroll
     * @return \Illuminate\Http\Response
     */
    public function destroy(enroll $enroll, $id)
    {
        $enroll = enroll::find($id);
        $destination = 'uploads/enrollImage/' . $enroll->enroll_image1;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $enroll->delete();
            return redirect()->back()->with('status', 'Enroll Data Delete Successfully.');
    }
}
