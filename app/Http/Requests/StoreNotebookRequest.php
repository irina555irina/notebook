<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreNotebookRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "name"=>'bail|required|max:255|unique:notebooks',
            "company"=>'nullable|max:255',
            "phone"=>'bail|required|max:30|unique:notebooks',
            "email"=>'bail|required|email|unique:notebooks',
            "birthday"=>'nullable|date',
            "foto"=>'nullable|image'
        ];
    }
}
