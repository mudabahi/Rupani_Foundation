<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Validator;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = News::all();
        return view('admin.news.view_news', compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.news.add_news');
        //
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
            'N_image1' =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048|dimensions:width=350,height=210',
            'N_image2' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048|dimensions:width=350,height=210',
            'N_image3' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048|dimensions:width=350,height=210',
            'N_image4' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048|dimensions:width=400,height=250',
            'N_image5' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048|dimensions:width=400,height=250',
        ]);
        $news = new News();

        if ($request->hasFile('N_image1')) {
            $file = $request->file('N_image1');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image1 =  $filename;
        }
        if ($request->hasFile('N_image2')) {
            $file = $request->file('N_image2');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image2 =  $filename;
        }
        if ($request->hasFile('N_image3')) {
            $file = $request->file('N_image3');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image3 =  $filename;
        }
        if ($request->hasFile('N_image4')) {
            $file = $request->file('N_image4');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image4 =  $filename;
        }
        if ($request->hasFile('N_image5')) {
            $file = $request->file('N_image5');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image5 =  $filename;
        }
        $news->save();
        return redirect()->route('view_news')->with("addStatus", "Event Data insert Successfuly");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $news)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $news = News::find($id);
        return view('admin.news.edit_news', compact('news'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $news = News::find($id);
        if ($request->hasfile('N_image1')) {

            $destination = 'uploads/newsImage/' . $news->N_image1;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('N_image1');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image1 =  $filename;
        }
        if ($request->hasfile('N_image2')) {

            $destination = 'uploads/newsImage/' . $news->N_image2;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('N_image2');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image2 =  $filename;
        }
        if ($request->hasfile('N_image3')) {

            $destination = 'uploads/newsImage/' . $news->N_image3;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('N_image3');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image3 =  $filename;
        }
        if ($request->hasfile('N_image4')) {

            $destination = 'uploads/newsImage/' . $news->N_image4;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('N_image4');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image4 =  $filename;
        }
        if ($request->hasfile('N_image5')) {

            $destination = 'uploads/newsImage/' . $news->N_image5;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('N_image5');
            $extention = $file->getClientOriginalName();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/newsImage/", $filename);
            $news->N_image5 =  $filename;
        }
        $news->update();
        return redirect()->route('view_news')->with("status", "news Update Successfully");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $news, $id)
    {
        $news = News::find($id);
        $destination = 'uploads/newsImages/' . $news->newsImages;
        if (File::exists('$destination')) {
            File::delete($destination);
        }
        $news->delete();
        return redirect()->route('view_news')->with("status", "Student Delete Successfully");
    }
}
