<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\file;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $gallery = Gallery::all();
        return view('admin.gallery.view_gallery', compact('gallery'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.gallery.add_gallery');
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
            'G_image1' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
            'G_image2' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
            'G_image3' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
            'G_image4' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
        ]);
        $gallery = new Gallery();
        if($request->hasFile('G_image1'))
        {
            $file = $request->file('G_image1');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/galleryImage/", $filename);
            $gallery->G_image1 =  $filename;
        }
        if($request->hasFIle('G_image2'))
        {
            $file = $request->file('G_image2');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/galleryImage/", $filename);
            $gallery->G_image2 =  $filename;
        }
        if($request->hasFIle('G_image3'))
        {
            $file = $request->file('G_image3');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/galleryImage/", $filename);
            $gallery->G_image3 =  $filename;
        }
        if($request->hasFIle('G_image4'))
        {
            $file = $request->file('G_image4');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/galleryImage/", $filename);
            $gallery->G_image4 =  $filename;
        }

        $gallery->save();
        return redirect()->route('view_gallery')->with('addStatus', 'Gallery Image Insert Successfully');
    }

    /**
     * Display the specified resou->hasFIlerce.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $gallery = Gallery::find($id);
        return view('admin.gallery.edit_gallery', compact('gallery'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $gallery = Gallery::find($id);
        if($request->hasFile('G_image1'))
        {
            $destination = 'uploads/galleryImage/' . $gallery->G_image1;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('G_image1');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/galleryImage/", $filename);
            $gallery->G_image1 =  $filename;

        }
        if($request->hasFile('G_image2'))
        {
            $destination = 'uploads/galleryImage/' . $gallery->G_image2;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('G_image2');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/galleryImage/", $filename);
            $gallery->G_image2 =  $filename;
        }
        if($request->hasFile('G_image3'))
        {
            $destination = 'uploads/galleryImage/' . $gallery->G_image3;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('G_image3');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/galleryImage/", $filename);
            $gallery->G_image3 =  $filename;
        }
        if($request->hasFile('G_image4'))
        {
            $destination = 'uploads/galleryImage/' . $gallery->G_image4;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('G_image4');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/galleryImage/", $filename);
            $gallery->G_image4 =  $filename;
        }

        $gallery->update();
        return redirect()->route('view_gallery')->with('status', 'Gallery Image Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $gallery = Gallery::find($id);
        $destination = 'uploads/galleryImage/' . $gallery->id;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $gallery->delete();
            return redirect()->back()->with("status", "Gallery Delete Successfully");
    }
}
