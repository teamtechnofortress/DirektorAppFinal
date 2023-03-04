<?php

namespace App\Http\Controllers;
use App\Models\RestrictionMember;
use App\Models\Restriction;
use App\Models\ProjectUser;
use App\Models\PhaseActividad;
use App\Models\RestrictionPerson;
use App\Models\RestrictionFront;
use App\Models\RestrictionPhase;
use App\Models\Conf_Estado;
use App\Models\Ana_TipoRestricciones;
use App\Models\Proy_AreaIntegrante;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Shared\Date;

use Illuminate\Http\Request;

class RestrictionController extends Controller
{
    public function get_restriction(Request $request) {
        $data = array();
        $restrictions     = Restriction::select('anares_analisisrestricciones.*','proy_proyecto.desNombreProyecto as desnombreproyecto')
        ->join('proy_proyecto', 'proy_proyecto.codProyecto', '=', 'anares_analisisrestricciones.codProyecto')
        ->where('proy_proyecto.id', $request['id'])
        ->get();

        foreach($restrictions as $eachdata) {

            $dataRestrictions = array();

            $dataRestrictions = [
                'desnombreproyecto' => $eachdata['desnombreproyecto'],
                'codProyecto'      => $eachdata['codProyecto'],
                'codEstado'        => $eachdata['codEstado'],
                'dayFechaCreacion' => $eachdata['dayFechaCreacion'],
                'indNoRetrasados'  => $eachdata['indNoRetrasados'],
                'indRetrasados'    => $eachdata['indRetrasados'],
                'codAnaRes'        => $eachdata['codAnaRes'],
                'integrantes'      => [],
                'integrantesProy'  => []
            ];

            // $members = RestrictionMember::where('codAnaRes', $eachdata['codAnaRes']);
            $integrantes = RestrictionMember::select("ana_integrantes.*", "proy_integrantes.desCorreo as desProyIntegrante")
            ->Join('proy_integrantes', function($join){
                $join->on('proy_integrantes.codProyIntegrante', '=', 'ana_integrantes.codProyIntegrante');
                $join->on('proy_integrantes.codProyecto', '=', 'ana_integrantes.codProyecto');

            })
            ->where('ana_integrantes.codAnaRes', $eachdata['codAnaRes'])->get();

            $integrantes_Proy = ProjectUser::where('codProyecto', $eachdata['codProyecto'])->get();

            $dataIntegrantes = array();
            foreach($integrantes as $data1) {
                // $f = [
                //     'codProyecto' => $data['codProyecto'],
                //     'codAnaRes'   => $data['codAnaRes'],
                //     'codEstado'   => $data['codEstado'],
                //     'codProyIntegrante' => $data['codProyIntegrante'],
                //     'desProyIntegrante' => $data['desProyIntegrante'],
                // ];
                $dataIntegrantes[] = $data1['codProyIntegrante'];
                //array_push($dataIntegrantes, $f);
            }
            $dataRestrictions['integrantes'] = $dataIntegrantes;

            $dataIntegrantesProy = array();
            foreach($integrantes_Proy as $data2) {
                $d = [
                    'codProyIntegrante'  => $data2['codProyIntegrante'],
                    'codProyecto'        => $data2['codProyecto'],
                    'id'                 => $data2['id'],
                    'desCorreo'          => $data2['desCorreo']
                ];

                array_push($dataIntegrantesProy, $d);
            }
            $dataRestrictions['integrantesProy'] = $dataIntegrantesProy;

            array_push($data, $dataRestrictions);

        }


     return $data;

    }

    public function upd_numOrden(Request $request) {
        //$restrictionid = Restriction::where('codProyecto', $request['codProyecto'])->get('codAnaRes');
        $enviar =  array();
        $enviar["mensaje"] = "";
        $enviar["estado"]  = false;

        try {

            foreach($request['data'] as $info) {

                $resultado1 = PhaseActividad::where('codProyecto',(int)$request['codProyecto'])
                ->where('codAnaResActividad', $info['codAnaResActividad'])
                ->update([
                    'numOrden' =>  $info['index']
                ]);

            }

            $enviar["estado"]  = true;

        } catch (\Throwable $th) {
            $enviar["mensaje"] = "Tenemos errores y no se puede actualizar";
        }

     return $enviar;

    }

    public function update_state(Request $request) {
        //$restrictionid = Restriction::where('codProyecto', $request['codProyecto'])->get('codAnaRes');
        $enviar =  array();
        $enviar["mensaje"] = "";
        $enviar["estado"]  = false;

        try {

            $resultado = Restriction::where('codProyecto',(int)$request['codProyecto'])->update([
                'codEstado' => $request['state']
            ]);

            $enviar["estado"]  = true;

        } catch (\Throwable $th) {
            $enviar["mensaje"] = "Tenemos errores y no se puede actualizar";
        }

     return $enviar;

    }
    public function update_hidden(Request $request) {
        //$restrictionid = Restriction::where('codProyecto', $request['codProyecto'])->get('codAnaRes');
        $enviar =  array();
        $enviar["mensaje"] = "";
        $enviar["estado"]  = false;

        try {

            $resultado = Restriction::where('codProyecto',(int)$request['codProyecto'])->update([
                'desColOcultas' => trim($request['hidecolumns']) == "" ? " " : $request['hidecolumns']
            ]);

            $enviar["estado"]  = true;

        } catch (\Throwable $th) {
            $enviar["mensaje"] = "Tenemos errores y no se puede actualizar";
        }

     return $enviar;

    }
    public function update_member(Request $request) {

        $restrictionid = Restriction::where('codProyecto', $request['codProyecto'])->get('codAnaRes');
        $enviar =  array();
        $enviar["mensaje"] = "";
        $enviar["estado"]  = false;

        try {

            $checkuser = RestrictionMember::where('codProyecto', $request['codProyecto'])->delete();
            // print_r($request['users']);
            foreach($request['users'] as $user) {
                // print_r($user);
                //$projectuserid = ProjectUser::where('codProyecto', $request['codProyecto'])->where('desCorreo', $user)->get('codProyIntegrante');
                $restrictionmember = RestrictionMember::create([
                    'codProyecto' => $request['codProyecto'],
                    'codAnaRes' => $restrictionid[0]['codAnaRes'],
                    'codEstado' => 1,
                    'dayFechaCreacion' => date('Y-m-d H:i:s'),
                    'desUsuarioCreacion' => '',
                    'codProyIntegrante' => (String)$user
                ]);
            }

            $enviar["estado"] = true;

        } catch (\Throwable $th) {
            $enviar["mensaje"] = "Tenemos errores y no se puede actualizar";
        }

        return $enviar;
    }
    public function add_front(Request $request) {
        $codAnaRes = Restriction::where('codProyecto', $request['id'])->get('codAnaRes');
        $resFrente = RestrictionFront::insertGetId([
            'desAnaResFrente' => $request['name'],
            'dayFechaCreacion' => $request['date'],
            'desUsuarioCreacion' => '',
            'codProyecto' => $request['id'],
            'codAnaRes' => $codAnaRes[0]['codAnaRes'],
        ]);
        $enviar = array();
        $enviar["codFrente"] = $resFrente;
        return $enviar;
    }

    public function add_phase(Request $request) {
        $codAnaRes = Restriction::where('codProyecto', $request['projectid'])->get('codAnaRes');
        $resFase  = RestrictionPhase::insertGetId([
            'desAnaResFase' => $request['name'],
            'dayFechaCreacion' => $request['date'],
            'desUsuarioCreacion' => '',
            'codAnaResFrente' => $request['frontid'],
            'codProyecto' => $request['projectid'],
            'codAnaRes' => $codAnaRes[0]['codAnaRes'],
        ]);
        $enviar = array();
        $enviar["codFase"] = $resFase;
        return $enviar;
    }

    public function add_Actividad(Request $request) {
        $codAnaRes = Restriction::where('codProyecto', $request['projectid'])->get('codAnaRes');

        $resFront = PhaseActividad::create([
            'desActividad' => $request['name'],
            'desRestriccion' => "",
            'codTipoRestriccion' => 0,
            'dayFechaRequerida' => $request['date'],
            // 'idUsuarioResponsable' => 'Lizeth Marzano',
            // 'desAreaResponsable' => 'Lizeth Marzano',
            // 'codEstadoActividad' => 'En proceso',
            // 'codUsuarioSolicitante' => 'Lizeth Marzano',
            'codAnaResFase' => $request['phaseid'],
            'codAnaResFrente' => $request['frontid'],
            'codProyecto' => $request['projectid'],
            'codAnaRes' => $codAnaRes[0]['codAnaRes'],
        ]);
        return $request;
    }

    // public function upd_restricciones(Request $request){
    //     $enviar = array();
    //     $enviar["flag"]     = 0;
    //     $enviar["mensaje"]  = "";
    //     $data   = $request['userInvData']

    //     foreach ($request as $value1) {
    //         //  print_r($value['desActividad']);

    //         // foreach ($value1 as  $value2) {
    //             // echo  $value2['desActividad'];
    //             $enviar["mensaje"]  = $value1['desActividad'];
    //             // break;
    //             // $enviar["mensaje"]  = $value2['desActividad'];
    //         // }
    //         // break;
    //     }

    //     return $enviar;
    // }

    public function upd_restricciones (Request $request){

        // $data = json_decode($request);
        $enviar = array();
        $enviar["flag"]     = 0;
        $enviar["inserciones"]     = array();
        $enviar["mensaje"]  = "";
        // print_r($request);

        try {
            // print_r($request);
            foreach ($request['data'] as $value) {


                    $fecha     = str_replace("T", " ", $value['dayFechaRequerida']);
                    $fecha     = str_replace("Z", "", $fecha);

                    $fechac    = str_replace("T", " ", $value['dayFechaConciliada']);
                    $fechac    = str_replace("Z", "", $fechac);
                    $resultado = "";
                    $tiporesultado = "";

                    if($value['codAnaResActividad'] > 0){

                        $resultado = PhaseActividad::where('codAnaResActividad',(int)$value['codAnaResActividad'])->update([
                            'codTipoRestriccion' => $value['codTipoRestriccion'],
                            'desActividad'       => (string)$value['desActividad'],
                            'desRestriccion'     => (string)$value['desRestriccion'],
                            'idUsuarioResponsable'   => $value['idUsuarioResponsable'],
                            'codEstadoActividad'     => $value['codEstadoActividad'],
                            'dayFechaRequerida'      => ($fecha == 'null' || $fecha == '') ? null : $fecha,
                            'dayFechaConciliada'     => ($fechac == 'null' || $fechac == '') ? null : $fechac,
                            // 'numOrden'               => $value['numOrden']
                        ]);

                        $tiporesultado = "upd";

                    }else{ 

                        $codAnaRes = Restriction::where('codProyecto', $request['projectId'])->get('codAnaRes');
                        $resultado = PhaseActividad::insertGetId([
                            'codTipoRestriccion' => $value['codTipoRestriccion'],
                            'desActividad'       => (string)$value['desActividad'],
                            'desRestriccion'     => (string)$value['desRestriccion'],
                            'idUsuarioResponsable'   => $value['idUsuarioResponsable'],
                            'codEstadoActividad'     => $value['codEstadoActividad'],
                            'dayFechaRequerida'      => ($fecha == 'null' || $fecha == '') ? null : $fecha,
                            'dayFechaConciliada'     => ($fechac == 'null' || $fechac == '') ? null : $fechac,
                            'codProyecto'   => $request['projectId'],
                            'codAnaRes'     => $codAnaRes[0]['codAnaRes'],
                            'codAnaResFase' => $value['codAnaResFase'],
                            'codAnaResFrente' => $value['codAnaResFrente'],
                            'codUsuarioSolicitante' => $request['userId'],
                            'numOrden'              => $value['idrestriccion'] + 0.01
                        ]);
                        $tiporesultado = "ins";

                        $datos                    = array();
                        $datos['idPivote']        = $value['codAnaResActividad'];
                        $datos["idReal"]          = $resultado;
                        $enviar["inserciones"][]  = $datos;

                    }


            }

            $enviar["flag"]                   =  1;
            $enviar["mensaje"]                = "Registros Actualizados !";


        } catch (Throwable $e) {

            $enviar["mensaje"]  = $e;

        }

         return $enviar;

    }

    public function get_restrictionsMember(Request $request){
        $devolvemos_data = RestrictionMember::select("ana_integrantes.*", "proy_integrantes.desCorreo as desProyIntegrante", "proy_integrantes.codArea")
        ->leftJoin('proy_integrantes', function($join){
            $join->on('proy_integrantes.codProyIntegrante', '=', 'ana_integrantes.codProyIntegrante');
            $join->on('proy_integrantes.codProyecto', '=', 'ana_integrantes.codProyecto');

         })
         ->where('ana_integrantes.codProyecto', $request['id'])->get();
        // ->join('anares_analisisrestricciones', 'ana_integrantes.codAnaRes', '=', 'anares_analisisrestricciones.codAnaRes')
        // ->join('proy_integrantes', 'proy_integrantes.codProyIntegrante', '=', 'ana_integrantes.codProyIntegrante', ' and ','ana_integrantes.codProyecto','=','ana_integrantes.codProyecto')
        // ->where('anares_analisisrestricciones.codProyecto', $request['id'])->get();
        return $devolvemos_data;
    }

    public function get_estado(Request $request) {

        $datos_estado = Conf_Estado::where('desModulo', 'ANARES')->get();

        return $datos_estado;
    }

    public function get_data_restricciones(Request $request) {
        $frontdata   = RestrictionFront::where('codProyecto', $request['id'])->get();
        $restriction = Restriction::where('codProyecto', $request['id'])->get();

        $enviar      = array();
        $anaresdata  = [];
        $conteo      = 0;
        foreach($frontdata as $eachdata) {
            $dataFrente = [
                'codFrente'   => $eachdata['codAnaResFrente'],
                'desFrente'   => $eachdata['desAnaResFrente'],
                'isOpen'      => $conteo == 0 ? true : false,
                'listaFase'   => [],
            ];

            $phasedata = RestrictionPhase::where('codAnaResFrente', $eachdata['codAnaResFrente'])->get();
            foreach($phasedata as $sevdata) {
                $dataFase = [
                    'codFase' => $sevdata['codAnaResFase'],
                    'desFase' => $sevdata['desAnaResFase'],
                    // 'notDelayed' => $restriction[0]['indNoRetrasados'],
                    // 'delayed' => $restriction[0]['indRetrasados'],
                    'listaRestricciones' => [],
                    'hideCols' => [],
                ];
                $Activedata = PhaseActividad::select("anares_actividad.*" , "anares_tiporestricciones.desTipoRestricciones as desTipoRestriccion" , "proy_integrantes.desCorreo as desUsuarioResponsable", "proy_areaintegrante.desArea", "conf_estado.desEstado as desEstadoActividad")
                ->leftjoin('anares_tiporestricciones', 'anares_actividad.codTipoRestriccion', '=', 'anares_tiporestricciones.codTipoRestricciones')
                ->leftJoin('proy_integrantes', function($join){
                    $join->on('proy_integrantes.codProyIntegrante', '=', 'anares_actividad.idUsuarioResponsable');
                    $join->on('proy_integrantes.codProyecto', '=', 'anares_actividad.codProyecto');
                 })
                 ->leftJoin('proy_areaintegrante', function($join){
                    $join->on('proy_integrantes.codArea', '=', 'proy_areaintegrante.codArea');
                 })
                 ->leftJoin('conf_estado', function($join){
                    $join->on('anares_actividad.codEstadoActividad', '=', 'conf_estado.codEstado');
                 })
                ->where('conf_estado.desModulo','=',  'ANARES')
                ->where('anares_actividad.codAnaResFase','=',  $sevdata['codAnaResFase'])
                ->where('anares_actividad.codAnaResFrente','=', $eachdata['codAnaResFrente'])
                ->orderBy('anares_actividad.numOrden', 'ASC')
                ->get();
                    foreach($Activedata as $data) {
                        $restricciones = [
                            'codAnaResActividad' => $data['codAnaResActividad'],
                            'desActividad'       => $data['desActividad'],
                            'desRestriccion'     => $data['desRestriccion'],
                            'codTipoRestriccion' => $data['codTipoRestriccion'],
                            'desTipoRestriccion' => $data['desTipoRestriccion'],
                            'dayFechaRequerida'     => $data['dayFechaRequerida'] == null ? '' : date("Y-m-d", strtotime($data['dayFechaRequerida'])),  //$data['dayFechaRequerida'] == null ? '' : $data['dayFechaRequerida'],
                            'dayFechaConciliada'    => $data['dayFechaConciliada'] == null ? '' : date("Y-m-d", strtotime($data['dayFechaConciliada'])),  //$data['dayFechaConciliada'] == null ? '' : $data['dayFechaConciliada'],
                            'idUsuarioResponsable'  => $data['idUsuarioResponsable'],
                            'desUsuarioResponsable' => $data['desUsuarioResponsable'],
                            'codEstadoActividad' => $data['codEstadoActividad'],
                            'desEstadoActividad' => $data['desEstadoActividad'],
                            'desAreaResponsable' => $data['desArea'],
                            'numOrden'           => $data['numOrden'],
                            'isEnabled'          => false,
                            'isupdate'           => false
                            // 'applicant' => "Lizeth Marzano",
                        ];
                        array_push($dataFase['listaRestricciones'], $restricciones);
                    }
                array_push($dataFrente['listaFase'], $dataFase);
            }
            array_push($anaresdata, $dataFrente);
            $conteo++;
        }

        $tipoRestricciones = Ana_TipoRestricciones::All();
        $areaIntegrante    = Proy_AreaIntegrante::all();
        $integrantesAnaRes = RestrictionMember::select("ana_integrantes.*", "proy_integrantes.desCorreo as desProyIntegrante", "proy_integrantes.codArea")
        ->leftJoin('proy_integrantes', function($join){
            $join->on('proy_integrantes.codProyIntegrante', '=', 'ana_integrantes.codProyIntegrante');
            $join->on('proy_integrantes.codProyecto', '=', 'ana_integrantes.codProyecto');

         })
         ->where('ana_integrantes.codProyecto', $request['id'])->get();
        $datos_estado = Conf_Estado::where('desModulo', 'ANARES')->get();

        $enviar['estadoRestriccion'] = $restriction[0]['codEstado'] == 0 ? true : false;
        $enviar['estados']           = $datos_estado;
        $enviar['integrantesAnaReS'] = $integrantesAnaRes;
        $enviar['areaIntegrante']    = $areaIntegrante;
        $enviar['tipoRestricciones'] = $tipoRestricciones;
        $enviar['restricciones']     = $anaresdata;
        $enviar['columnasOcultas']   = $restriction[0]['desColOcultas'];



        return $enviar;
    }
    public function get_front(Request $request) {
        $frontdata = RestrictionFront::where('codProyecto', $request['id'])->get();
        $restriction = Restriction::where('codProyecto', $request['id'])->get();
        // $frontdata = RestrictionFront::where('codProyecto', '107')->get();
        // $restriction = Restriction::where('codProyecto', '107')->get();
        $anaresdata = [];

        foreach($frontdata as $eachdata) {
            $tempdata = [
                'id' => $eachdata['codAnaResFrente'],
                'name' => $eachdata['desAnaResFrente'],
                'isOpen' => false,
                'info' => [],
            ];

            $phasedata = RestrictionPhase::where('codAnaResFrente', $eachdata['codAnaResFrente'])->get();
            foreach($phasedata as $sevdata) {
                $temp = [
                    'id' => $sevdata['codAnaResFase'],
                    'name' => $sevdata['desAnaResFase'],
                    'notDelayed' => $restriction[0]['indNoRetrasados'],
                    'delayed' => $restriction[0]['indRetrasados'],
                    'tableData' => [],
                    'hideCols' => [],
                ];
                $Activedata = PhaseActividad::where('codAnaResFase','=',  $sevdata['codAnaResFase'])
                                    ->where('codAnaResFrente','=', $eachdata['codAnaResFrente'])
                                    ->get();
                    foreach($Activedata as $data) {
                        $temptable = [
                            'exercise' => $data['desActividad'],
                            // 'restriction' => $data['desRestriccion'],
                            'restriction' => "restriction",
                            'date_required' =>$data['dayFechaRequerida'],
                            'responsible' => $data['desActividad'],
                            'responsible_area' => "Arquitectura",
                            'applicant' => "Lizeth Marzano",
                        ];
                        array_push($temp['tableData'], $temptable);
                    }
                array_push($tempdata['info'], $temp);
            }
            array_push($anaresdata, $tempdata);
        }
        return $anaresdata;
    }


    public function delete_restriction(Request $request){
        $resultado = array();
        $resultado['flag']          = 0;
        $resultado['resultado']     = "";

        try {

            $resultado['resultado'] =  PhaseActividad::where('codAnaResActividad', $request['codAnaResActividad'])->delete();
            $resultado['flag']      =  1;

        } catch (\Throwable $th) {

            $resultado['resultado'] =  $th;


        }

      return $resultado;
    }

    public function duplicate_restriction(Request $request){
        $resultado = array();
        $resultado['flag']          = 0;
        $resultado['resultado']     = "";

        try {

            // $consulta  =  PhaseActividad::where('codAnaResActividad', 19)->get();
            // $consulta2 = $consulta->replicate()->save();
            // $consulta2 = $consulta2->codAnaResActividad;
            $consulta        = PhaseActividad::find($request['codAnaResActividad'])->replicate();
            $arrayconsulta   = $consulta->toArray();
            $arrayconsulta['numOrden'] =  $arrayconsulta['numOrden'] + 0.001;
            $newCreatedModel = PhaseActividad::create($arrayconsulta);
            // $newID      = $consulta->id;

            $resultado['resultado'] =  $newCreatedModel['codAnaResActividad'];
            $resultado['flag']      =  1;

        } catch (\Throwable $th) {

            $resultado['resultado'] =  $th;


        }

      return $resultado;
    }

    public function delete_front(Request $request) {

        // if ($request['phaseLen'] == 0 || $request['phaseId'] == '-999') {

        if ($request['phaseId'] == '-999' || $request['phaseId'] == 0 || $request['phaseId'] == null) {

            try {

            PhaseActividad::where('codAnaResFrente', $request['frontId'])->delete();
            RestrictionPhase::where('codAnaResFrente', $request['frontId'])->delete();
            RestrictionFront::where('codAnaResFrente', $request['frontId'])->delete();

                 }
            catch (\Throwable $th) {}
            // RestrictionFront::where('codAnaResFrente', $request['frontId'])->delete();
            // try {
            //     RestrictionPhase::where('codAnaResFrente', $eachdata['frontId'])->delete();
            // } catch (\Throwable $th) {}

        } else {

            try {
            PhaseActividad::where('codAnaResFase', $request['phaseId'])->delete();
            } catch (\Throwable $th) {}
            RestrictionPhase::where('codAnaResFase', $request['phaseId'])->delete();
            // $frontdata = RestrictionFront::where('codAnaResFrente', $request['frontId'])->get();
            // foreach($frontdata as $eachdata) {
            //     RestrictionPhase::where('codAnaResFase', $request['phaseId'])->delete();
            // }
        }
        return $request;
    }

    public function get_restriction_p(Request $request) {
        $TipoRestricciones = RestrictionPerson::where('codTipoRestricciones', '>=', 0)->get();
        return $TipoRestricciones;
    }

    public function add_restriction(Request $request) {
        $TipoRestricciones = RestrictionPerson::where('codTipoRestricciones', '>=', 0)->delete();
        $index = $request['index'];
        for ($i=0; $i < $index; $i++) {
            if($request['data'][$i]['value'] == '') {
                $i -= 1;
                $index -= 1;
            }
            else {
                $resFront = RestrictionPerson::create([
                    'codTipoRestricciones' => $i,
                    'desTipoRestricciones' => $request['data'][$i]['value'],
                ]);
            }
        }
        $TipoRestricciones = RestrictionPerson::where('codTipoRestricciones', '>=', 0)->get();
        return $TipoRestricciones;
    }

     /* Upload Excel */
     public function uploadExcel(Request $request,$id,$projectId){
        try{
            // Get the uploaded file
            $file = $request->excelFile;
            // Load the spreadsheet
            $spreadsheet = IOFactory::load($file);
            // Get the active sheet
            $worksheet = $spreadsheet->getActiveSheet();
            // Get the highest row number and column letter
            $highestRow = $worksheet->getHighestRow();
            $highestColumn = $worksheet->getHighestColumn();
            // Loop through each row of the sheet
            $error = false;
            $success = false;
            for ($row = 2; $row <= $highestRow; $row++) {
                // Get the row data as an array
                $rowData = $worksheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, null, true, false)[0];
                $Frente = $rowData[0];
                $Fase = $rowData[1];
                $Actividad = $rowData[2];
                $Restriccion = $rowData[3];
                $TipoRestriccion = $rowData[4];
                $FechaRequerida = (Date::excelToDateTimeObject($rowData[5]))->format('Y-m-d');
                $FechaConciliada = (Date::excelToDateTimeObject($rowData[6]))->format('Y-m-d');
                $Responsable = $rowData[7];
                $Estado = $rowData[8];
                $Solicitante = $rowData[9];

                /* check in anares_tiporestricciones */
                $check_anares_tiporestricciones = Ana_TipoRestricciones::where('desTipoRestricciones',$TipoRestriccion)->first();
                if($check_anares_tiporestricciones){
                    /* check in proy_integrantes*/
                    $proy_integrantes = ProjectUser::where(['codProyecto'=>$projectId,'desCorreo'=>$Responsable])->first();
                    if($proy_integrantes){
                        /* check in ana_integrantes */
                        $check_ana_integrantes = RestrictionMember::where('codProyIntegrante',$proy_integrantes->codProyIntegrante)->first();
                        if($check_ana_integrantes){
                            /* check in conf_estado */
                            $conf_estado = Conf_Estado::where(['desEstado'=>$Estado,'desModulo'=>'ANARES'])->first();
                            if($conf_estado){
                                $anaRes = Restriction::where('codProyecto', $projectId)->get('codAnaRes');
                                $codAnaRes = $anaRes[0]['codAnaRes'];

                                $anares_actividad = new PhaseActividad;
                                $anares_frente = new RestrictionFront;
                                $anares_fase = new RestrictionPhase;

                                /* Add Values */
                                $anares_frente->desAnaResFrente = $Frente;
                                $anares_frente->codProyecto = $projectId;
                                $anares_frente->codAnaRes = $codAnaRes;

                                $anares_fase->desAnaResFase = $Fase;
                                $anares_fase->codProyecto = $projectId;
                                $anares_fase->codAnaRes = $codAnaRes;

                                $anares_actividad->desActividad = $Actividad;
                                // $anares_actividad->codEstadoActividad = $conf_estado->codEstado;
                                $anares_actividad->desRestriccion = $Restriccion;

                                $anares_actividad->codProyecto = $projectId;
                                $anares_actividad->codAnaRes = $codAnaRes;

                                $anares_actividad->codTipoRestriccion = $check_anares_tiporestricciones->codTipoRestricciones;
                                $anares_actividad->dayFechaRequerida = $FechaRequerida;
                                $anares_actividad->dayFechaConciliada = $FechaConciliada;
                                $anares_actividad->idUsuarioResponsable = $proy_integrantes->codProyIntegrante;

                                $anares_actividad->codEstadoActividad = $conf_estado->codEstado;
                                if($Solicitante){
                                    // $anares_actividad->codEstadoActividad = $id;
                                }
                                if($anares_frente->save()){
                                    $anares_fase->codAnaResFrente = $anares_frente->codAnaResFrente;
                                    if($anares_fase->save()){
                                        $anares_actividad->codAnaResFrente = $anares_frente->codAnaResFrente;
                                        $anares_actividad->codAnaResFase = $anares_fase->codAnaResFase;
                                        if($anares_actividad->save()){
                                            $success = true;
                                        }
                                        else $error = true;
                                    }
                                    else $error = true;
                                }
                                else $error = true;
                            }
                            else $error = true;
                        }
                        else $error = true;
                    }
                    else $error = true;
                }
                else $error = true;
            }
            return ["success"=>$success,"error" => $error,"successMessage"=> "Excel file imported success!", "errorMessage"=>"Something of records cannot be imported!"];
        }
        catch (\Exception $e) {
            return ["error"=>true,"message"=>$e->getMessage()];
        }
    }
}
