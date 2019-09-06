<?php

class DailyTestTypeCount extends Eloquent
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'daily_test_type_counts';

    public $timestamps = false;

    /**
     *
     */
    public function testType()
    {
      return $this->belongsTo('TestType');
    }

    public function dailyAlphanumericCount()
    {
      return $this->hasMany('DailyAlphanumericCount');
    }
    public function dailyGramStainResultCount()
    {
      return $this->hasMany('DailyGramStainResultCount');
    }
    public function dailyOrganismCount()
    {
      return $this->hasMany('DailyOrganismCount');
    }
    public function dailyHIVCount()
    {
      return $this->hasMany('DailyHIVCount');
    }

}
