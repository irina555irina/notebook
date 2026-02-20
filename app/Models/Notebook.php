<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notebook extends Model
{
    use HasFactory;

    public $countPaginate = 5;

    protected $hidden = [
        'created_at', 
        'updated_at'
    ];

    protected $fillable=[
        'name',
        'company',
        'phone',
        'email',
        'birthday',
        'foto'
    ];

    public function getAllUsingPaginate() 
    {
        $data = Notebook::paginate($this->countPaginate);

        if (!empty($data)) {
            return $data;
        } else {
            return "не найдено";
        }
    }

    public function addOneNew($data)
    {
        if (Notebook::create($data)) {
            return "добавлено";
        } else {
            return "ошибка";
        }
    }

    public function getOneUsingId($id)
    {
        $data = Notebook::find($id);

        if (!empty($data)) {
            return $data;
        } else {
            return "не найдено";
        }
    }

    public function updateOneUsingId($id, $data)
    {
        if (Notebook::find($id)->update($data)) {
            return "обновлено";
        } else {
            return "ошибка";
        };
    }

    public function deleteOneUsingId($id)
    {
        if (Notebook::destroy($id)) {
            return "удалено";
        } else {
            return "ошибка";
        };    
    }
}