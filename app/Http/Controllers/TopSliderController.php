<?php

namespace App\Http\Controllers;

use App\Models\topSlider;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
class TopSliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $topSlider = topSlider::all();
        return view('admin.topSlider.view_topSlider', compact('topSlider'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('admin.topSlider.add_topSlider');
        
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
        'topSliderImage' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
        'topSlidertitle' => 'required',
        'topSliderDescription' => 'required',
       ]);
        
       
        $topSlider = new topSlider();
        
        if($request->hasFile('topSliderImage'))
        {
            $file = $request->file('topSliderImage');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/topSliderImage/", $filename);
            $topSlider->topSliderImage =  $filename;
        }
        $topSlider->topSlidertitle = $request->input('topSlidertitle');
        $topSlider->topSliderDescription = $request->input('topSliderDescription');

        $topSlider->save();
        return redirect()->route('topSlider')->with('addStatus', 'Top slider insert successfuly.');

    }

    /**
     * Show the form for editing the specified resource.
     * @param  \App\Models\topSlider  $topSlider
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $topSliderEdit = topSlider::find($id);
        return view('admin.topSlider.edit_topSlider', compact('topSliderEdit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\topSlider  $topSlider
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $topSlider = topSlider::find($id);

        if($request->hasFile('topSliderImage'))
        {
            $destination = 'uploads/topSliderImage/' . $topSlider->topSliderImage;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('topSliderImage');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/topSliderImage/", $filename);
            $topSlider->topSliderImage =  $filename;
        }
        $topSlider->topSlidertitle = $request->input('topSlidertitle');
        $topSlider->topSliderDescription = $request->input('topSliderDescription');

        $topSlider->update();
        return redirect()->route('topSlider')->with('addStatus', 'Top slider Update successfuly.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\topSlider  $topSlider
     * @return \Illuminate\Http\Response
     */
    public function destroy(topSlider $topSlider, $id)
    {
        $topSlider = topSlider::find($id);
        $destination = 'uploads/topSliderImage/' . $topSlider->rupaniSliderImage;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $topSlider->delete();
        return redirect()->route('topSlider')->with('addStatus', 'Top Slider Delete Successfully.');
    }
}
