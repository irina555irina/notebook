<?php

namespace App\Http\Requests;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;


class ValidateNotebookRequest 
{
   public function validateRequestData(Request $request)
   {

        $validator = Validator::make($request->all(), [
            "name"=>['required', 'max:255', Rule::unique('notebooks')->ignore($request->id)],
            "company"=>['nullable', 'max:255'],
            "phone"=>['required', 'max:30', Rule::unique('notebooks')->ignore($request->id)],
            "email"=>['required', 'email', Rule::unique('notebooks')->ignore($request->id)],
            "birthday"=>['nullable', 'date'],
            "foto"=>['nullable']
        ]);
    
        if ($validator->fails()) {
            return false;
        } else {
            return $validator->validated();
        }
    } 
}