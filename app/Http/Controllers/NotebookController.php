<?php

namespace App\Http\Controllers;

use App\Http\Requests\ValidateNotebookRequest;
use Illuminate\Http\Request;
use Facade\FlareClient\Http\Response;
use App\Models\Notebook;
use Illuminate\Http\UploadedFile;

class NotebookController extends Controller
{
    public $notebookObject;
    public $validateNotebookRequestObject;

    function  __construct(Notebook $notebook, 
        ValidateNotebookRequest $validateNotebookRequest)
    {
        $this->notebookObject = $notebook;
        $this->validateNotebookRequestObject = $validateNotebookRequest ;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        return response()
            ->json([
                'data'=>$this->notebookObject->getAllUsingPaginate()
            ]);   
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    { 
        $validated = $this->validateNotebookRequestObject
            ->validateRequestData($request);

        if ($validated === false) {
            return response()
                ->json([
                    'message'=>"некорректные данные"
                ]);   
            }
            
        if (!empty($request->file('foto'))) {
            $path = $this->storeFotoInPublicImages($request);
            $validated['foto'] = $path;
        } 

        return response()
            ->json([
                'message'=>$this->notebookObject->addOneNew($validated)
            ]);  
    }
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    
    public function show($id)
    {
        return response()
            ->json([
                'data'=>$this->notebookObject->getOneUsingId($id)
            ]);   
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request)
    {
        $validated = $this->validateNotebookRequestObject
            ->validateRequestData($request);

        if ($validated === false) {
            return response()
                ->json(['message'=>"некорректные данные"]);   
        }
        
        if (!empty($request->file('foto'))) {
            $path = $this->storeFotoInPublicImages($request);
            $validated['foto'] = $path;
        } 
        
        return response()
            ->json([
                'message'=>$this->notebookObject
                    ->updateOneUsingId($request->id, $validated)
                ]);  
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy($id)
    {
        return response()
            ->json([
                'message'=>$this->notebookObject->deleteOneUsingId($id)
            ]);  
    }


    protected function storeFotoInPublicImages(Request $request)
    {
        $path =  $request->foto->store('images');
        return $path;
    }
}