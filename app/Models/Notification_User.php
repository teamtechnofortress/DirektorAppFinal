<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Sluggable\HasSlug;

class Notification_User extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'codNotificacion',
        'codEstado',
        'dayFechaCreacion',
        'desUsuarioCreación',
    ];
    protected $table = "other_notificaciones_usuario";

    public $timestamps = false;

}
