<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class Supplier extends Model {
    use SoftDeletingTrait;
	protected $table = 'suppliers';
	protected $dates = ['deleted_at'];

}