<?php

namespace App\Http\Controllers;

use App\Models\Events;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\file;

class EventsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $events = Events::all();
        return view('admin.events.view_events', compact('events'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.events.add_event');
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
            'E_titles' => 'required',
            'E_discriptions' => 'required',
            'E_images' => 'required | image | mimes:jpeg,png,jpg,gif,svg|min:0.395',
        ]);

        $events = new Events();
        $events->E_titles = $request->input('E_titles');
        $events->E_discriptions = $request->input('E_discriptions');

        if ($request->hasFile('E_images')) {
            $file = $request->file('E_images');
            $extention = $file->getClientOriginalExtension();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/eventImage/", $filename);
            $events->E_images =  $filename;
        }
        $events->save();
        return redirect()->route('view_events')->with("addStatus", "Event Data insert Successfuly");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Events  $events
     * @return \Illuminate\Http\Response
     */
    public function show(Events $events)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Events  $events
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $events = Events::find($id);
        return view('admin.events.edit_event', compact('events'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Events  $events
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $events = Events::find($id);
        $events->E_titles = $request->input('E_titles');
        $events->E_discriptions = $request->input('E_discriptions');

        if ($request->hasfile('E_images')) {

            $destination = 'uploads/eventImage/' . $events->E_images;
            if (File::exists('$destination')) {
                File::delete($destination);
            }
            $file = $request->file('E_images');
            $extention = $file->getClientOriginalExtension();
            $filename  = time() . " . " . $extention;
            $file->move("uploads/eventImage/", $filename);
            $events->E_images =  $filename;
        }
        $events->update();
        return redirect()->back('view_events')->with("status", "Events Update Successfully");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Events  $events
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $events = Events::find($id);
        $events->E_titles = $request->input('E_titles');
        $events->E_discriptions = $request->input('E_discriptions');
        $destination = "uploads/eventImage" . $events->E_images;
        if (File::exists($destination)) {
            File::delete($destination);
        }
        $events->delete();
        return redirect()->back()->with("status", "Event Delete SuccessFully");
    }
}
