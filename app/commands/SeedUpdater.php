<?php

use Illuminate\Console\Command;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Input\InputArgument;

class SeedUpdater extends Command {

    /**
     * The console command name.
     *
     * @var string
     */
    protected $name = 'update:seed';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function fire()
    {
        Eloquent::unguard();

        $drugSusceptibilityMeasureS = DrugSusceptibilityMeasure::create([
            'symbol' => 'S',
            'interpretation'=>'Sensitive',
        ]);
        $drugSusceptibilityMeasureI = DrugSusceptibilityMeasure::create([
            'symbol' => 'I',
            'interpretation'=>'Intermediate',
        ]);
        $drugSusceptibilityMeasureR = DrugSusceptibilityMeasure::create([
            'symbol' => 'R',
            'interpretation'=>'Resistant',
        ]);
        echo "drug susceptibility measure seeded\n";

        DB::disableQueryLog();
        /*Drugs table*/
        DB::unprepared(file_get_contents(base_path() . "/app/database/seeds/drugs.sql"));
        echo "bulk antibiotics seeded!\n";
        /*Organisms table*/
        DB::unprepared(file_get_contents(base_path() . "/app/database/seeds/organisms.sql"));
        echo "bulk organisms seeded!\n";
        /*Zone Diameters table table*/
        DB::unprepared(file_get_contents(base_path() . "/app/database/seeds/zone_diameters.sql"));
        echo "bulk zone diameters seeded!\n";
        DB::enableQueryLog();

        GramStainRange::create(["name" => "No organism seen"]);
        GramStainRange::create(["name" => "Gram positive cocci in singles"]);
        GramStainRange::create(["name" => "Gram positive cocci in chains"]);
        GramStainRange::create(["name" => "Gram positive cocci in clusters"]);
        GramStainRange::create(["name" => "Gram positive diplococci"]);
        GramStainRange::create(["name" => "Gram positive micrococci"]);
        GramStainRange::create(["name" => "Gram positive rods"]);
        GramStainRange::create(["name" => "Gram positive rods with terminal spores"]);
        GramStainRange::create(["name" => "Gram positive rods with sub-terminal spores"]);
        GramStainRange::create(["name" => "Gram positive rods with endospores"]);
        GramStainRange::create(["name" => "Gram negative diplococci"]);
        GramStainRange::create(["name" => "Gram negative intracellular diplococci"]);
        GramStainRange::create(["name" => "Gram negative extracellular diplococci"]);
        GramStainRange::create(["name" => "Gram negative rods"]);
        GramStainRange::create(["name" => "Gram positive yeast cells"]);
        GramStainRange::create(["name" => "Gram negative pleomorphic rods"]);
        GramStainRange::create(["name" => "+ Gram positive cocci in singles"]);
        GramStainRange::create(["name" => "+ Gram positive cocci in chains"]);
        GramStainRange::create(["name" => "+ Gram positive cocci in clusters"]);
        GramStainRange::create(["name" => "+ Gram positive diplococci"]);
        GramStainRange::create(["name" => "+ Gram positive micrococci"]);
        GramStainRange::create(["name" => "+ Gram positive rods"]);
        GramStainRange::create(["name" => "+ Gram positive rods with terminal spores"]);
        GramStainRange::create(["name" => "+ Gram positive rods with sub-terminal spores"]);
        GramStainRange::create(["name" => "+ Gram positive rods with endospores"]);
        GramStainRange::create(["name" => "+ Gram negative diplococci"]);
        GramStainRange::create(["name" => "+ Gram negative intracellular diplococci"]);
        GramStainRange::create(["name" => "+ Gram negative extracellular diplococci"]);
        GramStainRange::create(["name" => "+ Gram negative rods"]);
        GramStainRange::create(["name" => "+ Gram positive yeast cells"]);
        GramStainRange::create(["name" => "+ Gram negative pleomorphic rods"]);
        GramStainRange::create(["name" => "++ Gram positive cocci in singles"]);
        GramStainRange::create(["name" => "++ Gram positive cocci in chains"]);
        GramStainRange::create(["name" => "++ Gram positive cocci in clusters"]);
        GramStainRange::create(["name" => "++ Gram positive diplococci"]);
        GramStainRange::create(["name" => "++ Gram positive micrococci"]);
        GramStainRange::create(["name" => "++ Gram positive rods"]);
        GramStainRange::create(["name" => "++ Gram positive rods with terminal spores"]);
        GramStainRange::create(["name" => "++ Gram positive rods with sub-terminal spores"]);
        GramStainRange::create(["name" => "++ Gram positive rods with endospores"]);
        GramStainRange::create(["name" => "++ Gram negative diplococci"]);
        GramStainRange::create(["name" => "++ Gram negative intracellular diplococci"]);
        GramStainRange::create(["name" => "++ Gram negative extracellular diplococci"]);
        GramStainRange::create(["name" => "++ Gram negative rods"]);
        GramStainRange::create(["name" => "++ Gram positive yeast cells"]);
        GramStainRange::create(["name" => "++ Gram negative pleomorphic rods"]);
        GramStainRange::create(["name" => "+++ Gram positive cocci in singles"]);
        GramStainRange::create(["name" => "+++ Gram positive cocci in chains"]);
        GramStainRange::create(["name" => "+++ Gram positive cocci in clusters"]);
        GramStainRange::create(["name" => "+++ Gram positive diplococci"]);
        GramStainRange::create(["name" => "+++ Gram positive micrococci"]);
        GramStainRange::create(["name" => "+++ Gram positive rods"]);
        GramStainRange::create(["name" => "+++ Gram positive rods with terminal spores"]);
        GramStainRange::create(["name" => "+++ Gram positive rods with sub-terminal spores"]);
        GramStainRange::create(["name" => "+++ Gram positive rods with endospores"]);
        GramStainRange::create(["name" => "+++ Gram negative diplococci"]);
        GramStainRange::create(["name" => "+++ Gram negative intracellular diplococci"]);
        GramStainRange::create(["name" => "+++ Gram negative extracellular diplococci"]);
        GramStainRange::create(["name" => "+++ Gram negative rods"]);
        GramStainRange::create(["name" => "+++ Gram positive yeast cells"]);
        GramStainRange::create(["name" => "+++ Gram negative pleomorphic rods"]);
        echo "Gram Stain Ranges"."\n";
    }

    /**
     * Get the console command arguments.
     *
     * @return array
     */
    protected function getArguments()
    {
        return [];
    }

    /**
     * Get the console command options.
     *
     * @return array
     */
    protected function getOptions()
    {
        return [];
    }

}
