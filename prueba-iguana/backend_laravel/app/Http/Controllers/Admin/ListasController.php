<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Cargos;
use App\Models\Departamentos;


class ListasController extends Controller
{
    //

    public function ListaCargos()
    {
        //Listamos todos los productos
        try{
            $cargos= Cargos::where('activo',1)->get();

            $options = $cargos->map(function ($item) {
                return [
                    'value' => $item->id,
                    'label' => $item->nombre
                ];
            });

            return response()->json($options);

        }catch (\Exception $e)
        {
            return response()->json(['error' => 'No hay datos'], 404);
        }

    }

    public function ListaDepartamentos()
    {
        try{
        //Listamos todos los productos
        $departamentos=Departamentos::where('activo',1)->get();
        $options = $departamentos->map(function ($item) {
            return [
                'value' => $item->id,
                'label' => $item->nombre
            ];
        });
        return response()->json($options);
        }catch (\Exception $e)
        {
            return response()->json(['error' => 'No hay datos'], 404);
        }
    }
}
