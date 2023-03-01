<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\ProjectUser;
use App\Models\ProjectReport;
use App\Models\ProjectUtilReport;
use App\Models\Restriction;
use App\Models\RestrictionMember;
use App\Models\User;
use App\Models\Notification;
use App\Models\Notification_User;
use App\Models\Notification_User4;
use App\Models\ProjectConf;
use Illuminate\Testing\Fluent\Concerns\Has;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Mail;
use App\Mail\InvitationEmail;

class ProjectController extends Controller
{
    //
    public function create_project (Request $request) {

        $mail = false;
        $data = $request->validate([
            'projectName' => 'required|string',
            'business' => 'required|numeric',
            'projectType' => 'required|numeric',
            'district' => 'required|numeric',
            'country' => 'required|string',
        ]);

        $codPro = Project::insertGetId([
            'desNombreProyecto' => $request['projectName'],
            'codEstado' => 1,
            'desEmpresa' => $request['business'],
            'numPlazo' => intval($request['term']),
            'id' => $request['id'] | 0,
            'numAreaTechado' => intval($request['coveredArea']),
            'codTipoProyecto' => intval($request['projectType']),
            'codUbigeo' => intval($request['district']),
            'dayFechaInicio' => $request['startDate'],
            'numMontoReferencial' => (float) $request['referenceAmount'],
            'numAreaTechada' => intval($request['area']),
            'numAreaConstruida' => intval($request['builtArea']),
            'desPais' => $request['country'],
            'desDireccion' => $request['address'],
            'dayFechaCreacion' => $request['date'],
            'desUsuarioCreacion' => $request['usersum'],
            'codMoneda' => intval($request['codMoneda'])
        ]);

        foreach($request['userInvData'] as $user) {

            $userEmail = $user['userEmail'];
            $userRole  = $user['userRole'];
            $userArea  = $user['userArea'];
            $userId    = isset($user['id']) ? $user['id'] : -999;

            if(ltrim(rtrim($userEmail)) != '' &&  ltrim(rtrim($userRole)) != '' && ltrim(rtrim($userRole)) != '')
            {

                $usercreate = ProjectUser::create([
                    'codProyecto'         => $codPro,
                    'id'                  => $request['id'],
                    'codEstadoInvitacion' => 1,
                    'codRolIntegrante'    => intval($userRole),
                    'dayFechaInvitacion'  => $request['date'],
                    'codArea'             => intval($userArea),
                    'desCorreo'           => strval($userEmail),
                    'idIntegrante'        => $userId
                ]);

            }
            if(!isset($user['id'])){
                $insertMail = \DB::table('conf_colacorreos')->insert([
                    "desMensaje" => env('CLIENT_SIDE_URL')."/register",
                    "dayFechaRegistro" => date('Y-m-d H:i:s'),
                    "dayFechaEnvio" => date('Y-m-d H:i:s'),
                    "codUsuarioRegistro" => $request['id'],
                    "desCorreoEnvio" => $userEmail
                ]);
                if($insertMail){
                    $res = Mail::to($userEmail)->send(new InvitationEmail('token'));
                    if($res) $mail = true;
                }
            }
        }


        $useremail = User::where('id', $request['id'])->get('email');
        $restrictioncreate = Restriction::create([
            'codProyecto' => $codPro,
            'codEstado' => 0,
            'dayFechaCreacion' => $request['date'],
            'desUsuarioCreacion' => $useremail[0]['email'],
            'indNoRetrasados' => 0,
            'indRetrasados' => 0,
        ]);
        /* $restrictionid = Restriction::where('codProyecto', $codPro[0]['codProyecto'])->get('codAnaRes');
        $restrictionmember = RestrictionMember::create([
            'codProyecto' => $codPro[0]['codProyecto'],
            'codAnaRes' => $restrictionid[0]['codAnaRes'],
            'codEstado' => 1,
            'dayFechaCreacion' => $request['date'],
            'desUsuarioCreacion' => '',
        ]); */
        foreach($request['reports'] as $report) {
            /* create util_reportes table record */
            $utilreportcreate = ProjectUtilReport::create([
                'desUtilReportes' => $report['reportSchedule']
            ]);
            $codUtilPro = ProjectUtilReport::get('codUtilReportes');
            $cod = $codUtilPro[sizeof($codUtilPro)-1]['codUtilReportes'];

            /* create proy_proyectoreportes table records */
            if($report['massiveStatus'] === true || $report['applyAllStatus'] === true) {
                $reportcreate = ProjectReport::create([
                    'codUtilReportes' => $cod,
                    'codProyecto' => $codPro,
                    'flagReporteMasivo' => $report['massiveStatus'],
                    'flagApplyAllStatus' => $report['applyAllStatus'],
                    'codTipoFrecuencia' => $request['typeFrequency'],
                    'dayFechaCreacion' => $request['date'],
                    'desUsuarioCreacion' => '',
                    'desCorreoEnvios' => '',
                    'codfrecuenciaenvioreporte' => $report['frequency']
                ]);
            }
            else {
                foreach($report['frequencies'] as $frequency) {
                    $reportcreate = ProjectReport::create([
                        'codUtilReportes' => $cod,
                        'codProyecto' => $codPro,
                        'flagReporteMasivo' => $report['massiveStatus'],
                        'flagApplyAllStatus' => $report['applyAllStatus'],
                        'codTipoFrecuencia' => $request['typeFrequency'],
                        'dayFechaCreacion' => $request['date'],
                        'desUsuarioCreacion' => '',
                        'desCorreoEnvios' => $frequency['user'],
                        'codfrecuenciaenvioreporte' => $frequency['freq']
                    ]);
                }
            }
        }

        /* crate proy_proyectoconf table record */
        $project_conf_create = ProjectConf::create([
            'codProyecto'               => $codPro,
            'codTipoDiaProgramacion'    => $request['programmingDayTypeCode']
        ]);

        return ["codPro" => $codPro,"mail" => $mail,"message" => $mail ? "Emails were sent successfully" : ''];
    }

    public function get_project (Request $request) {
        // $project = Project::where('id', $request['id'])->get();

        $project = Project::select('proy_proyecto.*', 'conf_maestro_empresas.des_Empresa as nombreEmpresa', 'conf_ubigeo.desUbigeo as desUbigeo')
        ->join('conf_maestro_empresas', 'proy_proyecto.desEmpresa', '=', 'conf_maestro_empresas.cod_Empresa')
        ->join('conf_ubigeo', 'proy_proyecto.codUbigeo', '=', 'conf_ubigeo.codUbigeo')
        ->where('proy_proyecto.id', $request['id'])
        ->get();

        return $project;
    }
    public function edit_project (Request $request) {
        // $timestamp = strtotime($request['startDate']);
        // $fechaInicio  = date("d-m-Y", $timestamp);

        $update = Project::where('codProyecto', $request['projectId'])->update([
            'desNombreProyecto' => $request['projectName'],
            'codEstado' => 1,
            'desEmpresa' => $request['business'],
            'numPlazo' => intval($request['term']),
            'numAreaTechado' => intval($request['coveredArea']),
            'codTipoProyecto' => intval($request['projectType']),
            'codUbigeo' => intval($request['district']),
            'dayFechaInicio' => $request['startDate'],
            'numMontoReferencial' => intval($request['referenceAmount']),
            'numAreaTechada' => intval($request['area']),
            'numAreaConstruida' => intval($request['builtArea']),
            'desPais' => $request['country'],
            'desDireccion' => $request['address'],
            'dayFechaCreacion' => $request['date'],
            'desUsuarioCreacion' => $request['usersum'],
            'codMoneda' => $request['codMoneda']
        ]);

        ProjectUser::where('codProyecto', $request['projectId'])->delete();
        foreach($request['userInvData'] as $user) {

            $userEmail = $user['userEmail'];
            $userRole  = $user['userRole'];
            $userArea  = $user['userArea'];
            $userId    = isset($user['id']) ? $user['id'] : -999;

            if(ltrim(rtrim($userEmail)) != '' &&  ltrim(rtrim($userRole)) != '' && ltrim(rtrim($userRole)) != '')
            {

                $usercreate = ProjectUser::create([
                    'codProyecto'         => $request['projectId'],
                    'id'                  => $request['id'],
                    'codEstadoInvitacion' => 1,
                    'codRolIntegrante'    => intval($userRole),
                    'dayFechaInvitacion'  => $request['date'],
                    'codArea'             => intval($userArea),
                    'desCorreo'           => strval($userEmail),
                    'idIntegrante'        => $userId
                ]);

            }
        }

        $codUtilReportes = ProjectReport::select('codUtilReportes')->groupBy('codUtilReportes')->where('codProyecto', $request['projectId'])->get();
        /* update util_reports table */
        foreach($request['reports'] as $key=>$report) {
            if ($key < sizeof($codUtilReportes)) {
                ProjectUtilReport::where('codUtilReportes', $codUtilReportes[$key]['codUtilReportes'])->update([
                    'desUtilReportes' => $report['reportSchedule']
                ]);
            } else {
                ProjectUtilReport::create([
                    'desUtilReportes' => $report['reportSchedule']
                ]);
            }
        }

        /* update proy_proyectoconf table */
        ProjectConf::where('codProyecto', $request['projectId'])->update([
            'codTipoDiaProgramacion' => $request['programmingDayTypeCode']
        ]);

        $codUtilPro = ProjectUtilReport::get('codUtilReportes');
        $db_reports = ProjectReport::select('codUtilReportes')->groupBy('codUtilReportes')->where('codProyecto', $request['projectId'])->get();
        $day_fecha_creacions = array();
        foreach($db_reports as $db_report) {
            $db_cod_util = $db_report['codUtilReportes'];
            $day_fecha_creacion = ProjectReport::select('dayFechaCreacion')->where('codUtilReportes', $db_cod_util)->first();
            $day_fecha_creacions[] = $day_fecha_creacion;
        }
        ProjectReport::where('codProyecto', $request['projectId'])->delete();
        foreach($request['reports'] as $key=>$report) {
            //$new_day_fecha_creation = $key < $db_reports->count() ? $old_fecha_creacion['dayFechaCreacion'] : $request['date'];
            $new_cod_util_report = $key < $db_reports->count() ? $db_reports[$key]['codUtilReportes'] : $codUtilPro[sizeof($codUtilPro)-1]['codUtilReportes'];
            $new_day_fecha_creation = $key < $db_reports->count() ? $day_fecha_creacions[$key]['dayFechaCreacion'] : $request['date'];
            if($report['massiveStatus'] === true || $report['applyAllStatus'] === true) {
                $reportcreate = ProjectReport::create([
                    'codUtilReportes' => $new_cod_util_report,
                    'codProyecto' => $request['projectId'],
                    'flagReporteMasivo' => $report['massiveStatus'],
                    'flagApplyAllStatus' => $report['applyAllStatus'],
                    'codTipoFrecuencia' => $request['typeFrequency'],
                    'dayFechaCreacion' => $new_day_fecha_creation,
                    'desUsuarioCreacion' => '',
                    'desCorreoEnvios' => '',
                    'codfrecuenciaenvioreporte' => $report['frequency']
                ]);
            }
            else {
                foreach($report['frequencies'] as $frequency) {
                    $reportcreate = ProjectReport::create([
                        'codUtilReportes' => $new_cod_util_report,
                        'codProyecto' => $request['projectId'],
                        'flagReporteMasivo' => $report['massiveStatus'],
                        'flagApplyAllStatus' => $report['applyAllStatus'],
                        'codTipoFrecuencia' => $request['typeFrequency'],
                        'dayFechaCreacion' => $new_day_fecha_creation,
                        'desUsuarioCreacion' => '',
                        'desCorreoEnvios' => $frequency['user'],
                        'codfrecuenciaenvioreporte' => $frequency['freq']
                    ]);
                }
            }
        }
        return $request['projectId'];
    }

    public function get_projectreport (Request $request) {
        /* $project = ProjectReport::where('codProyecto', $request['projectId'])->get();
        return $project; */
        $reports = array();

        $cod_util_reportes = ProjectReport::select('codUtilReportes')->groupBy('codUtilReportes')->where('codProyecto', $request['projectId'])->get();
        $project_users = ProjectUser::select('desCorreo')->where('codProyecto', $request['projectId'])->get();
        $usercreation = '';
        foreach ($project_users as $project_user) {
            $usercreation .= $project_user['desCorreo'] . ", ";
        }
        $pro_day = ProjectConf::select('codTipoDiaProgramacion')->where('codProyecto', $request['projectId'])->first();
        $pro_day_val = $pro_day['codTipoDiaProgramacion'];

        foreach ($cod_util_reportes as $cod_util_reporte) {
            /* get massive flag & apply all status flag */
            $flags = ProjectReport::select('flagReporteMasivo', 'flagApplyAllStatus')->where('codUtilReportes', $cod_util_reporte['codUtilReportes'])->first();
            $flag_massive = $flags['flagReporteMasivo'] === 1 ? true : false;
            $flag_apply_all = $flags['flagApplyAllStatus'] === 1 ? true : false;
            $report_text = ProjectUtilReport::select('desUtilReportes')->where('codUtilReportes', $cod_util_reporte['codUtilReportes'])->first();
            $report_text_val = $report_text['desUtilReportes'];

            $frequencies = array();
            /* when massive or apply all status flag true */
            if ($flag_massive == 1 || $flag_apply_all == 1) {
                $frequency = ProjectReport::select('codfrecuenciaenvioreporte')->where('codUtilReportes', $cod_util_reporte['codUtilReportes'])->first();
                $frequency_val = $frequency['codfrecuenciaenvioreporte'];
                $users = ProjectUser::select('desCorreo')->where('codProyecto', $request['projectId'])->get();
                foreach($users as $user) {
                    $frequencies[] = ['user' => $user['desCorreo'], 'freq' => $frequency_val];
                }

                $record =  ['applyAllStatus' => $flag_apply_all,
                            'frequencies' => $frequencies,
                            'frequency' => $frequency_val,
                            'massiveStatus' => $flag_massive,
                            'reportSchedule' => $report_text_val,
                            'proDayCode' => $pro_day_val,
                            'usercreation' => $usercreation,
                ];

            } else { /* neither massive nor apply all status */
                /* users & frequencies from proy_proyectoreportes table */
                $userFs = ProjectReport::select('desCorreoEnvios', 'codfrecuenciaenvioreporte')->where('codUtilReportes', $cod_util_reporte['codUtilReportes'])->get();
                foreach($userFs as $userF) {
                    $frequencies[] = ['user' => $userF['desCorreoEnvios'], 'freq' => $userF['codfrecuenciaenvioreporte']];
                }

                $record =  ['applyAllStatus' => $flag_apply_all,
                            'frequencies' => $frequencies,
                            'frequency' => null,
                            'massiveStatus' => $flag_massive,
                            'reportSchedule' => $report_text_val,
                            'proDayCode' => $pro_day_val,
                            'usercreation' => $usercreation,
                ];
            }
            $reports[] = $record;
        }
        return $reports;
    }
    public function get_projectuser (Request $request) {
        $projectuser = ProjectUser::where('codProyecto', $request['projectId'])->get();
        return $projectuser;
    }

    /* ************************** DESARROLLADOR  POR EL PROGRAMADOR  ******************************* */

    public function get_proy_applicant(Request $request)
    {
        $project_applicants = PhaseActividad::select('codUsuarioSolicitante')->groupBy('codUsuarioSolicitante')->where('codProyecto', $request['projectId'])->get();
        $users = User::whereIn('id', $project_applicants)->get();
        return $users;
    }

    public function get_notification(Request $request)
    {
        $cod_notifications = Notification_User4::where('id', $request['id'])->where('codEstado', 0)->get();
        $messages = array();
        foreach($cod_notifications as $cod_notification) {
            $message = Notification::where('codNotificacion', $cod_notification['codNotificacion'])->first();
            $messages[] = [
                'codNotificacionUsuario' => $cod_notification['codNotificacionUsuario'],
                'codNotificacion' => $message['codNotificacion'],
                'desNombre' => $message['desNombre'],
                'desDescripción' => $message['desDescripción'],
                'desPersonalizar' => $message['desPersonalizar']
            ];
        }

        return $messages;

    }

    public function update_cod_notification(Request $request)
    {
        $updated = Notification_User4::where('codNotificacionUsuario', $request['cod_notification_usuario'])->update([
           'codEstado' => 1
        ]);
        return $request['cod_notification_usuario'];
    }

    public function register_notification(Request $request)
    {
        $id = $request['id'];
        $date = $request['date'];
        $email = $request['email'];

        $created = Notification_User4::insertGetId([
            'id' => $id,
            'codNotificacion' => 1,
            'codEstado' => 0,
            'dayFechaCreacion' => $date,
            'desUsuarioCreación' => $email
        ]);
        return Notification_User4::where('codNotificacionUsuario', $created)->first();
    }

    /* ************************** DESARROLLADOR  POR EL PROGRAMADOR  ******************************* */
}
