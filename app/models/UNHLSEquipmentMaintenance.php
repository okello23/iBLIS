<?php
use Illuminate\Database\Eloquent\SoftDeletingTrait;
class UNHLSEquipmentMaintenance extends Eloquent
{
	use SoftDeletingTrait;
	protected $table = "unhls_equipment_maintenance";
	public function equipment()
	{
		return $this->belongsTo('UNHLSEquipmentInventory');
	}

	public function supplier()
	{
		return $this->belongsTo('UNHLSEquipmentSupplier');
	}

}