<?php

use Illuminate\Database\Eloquent\SoftDeletingTrait;

class DataLogger extends Eloquent
{
	use SoftDeletingTrait;
	protected $table = 'datalogger';
	protected $dates = ['deleted_at'];
	
	protected $fillable = ['id','dataAdded','DeviceSerialNumber','DeviceType','DeviceTypeString','Operator','SiteName','TestId','Sample','IsEidSample','ResultValue','SpecimenSource','ResultDate','ErrorValue','SoftwareVersion','Disease','CatridgeType','CatridgeId','CatridgeLot','CatridgeExpiryDate','ResultType','QcType','Level',
	'HasErrors','IsSuppressed','Qc','DateApproved','ApprovedBy','ResultStatus','ResultStatusString','CatridgeLotNumberAndId','VId','Age','G','SId','TProv','Latitude','Longitude','ResultDateString','DateAddedString','CatridgeTypeString','SpecimenSourceString','DiseaseString','CatridgeExpiryDateString','ResultTypeString'];

}
