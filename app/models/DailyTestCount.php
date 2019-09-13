<?php

class DailyTestCount extends Eloquent
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'daily_test_counts';

    public $timestamps = false;

    public function dailyTestTypeCount()
    {
      return $this->hasMany('DailyTestTypeCount');
    }

}
