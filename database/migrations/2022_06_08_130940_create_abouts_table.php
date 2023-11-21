<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('abouts', function (Blueprint $table) {
            $table->id();

            // Top Section
            
            $table->string('aboutbgImage');
            $table->string('aboutTopTitle');
            
            // second Section

            $table->string('aboutSecondImage1');
            $table->string('aboutSecondImage2');

            // Third Secetion

            $table->string('aboutDescriptionImage');
            $table->string('aboutDescription');

            // Fourth Section

            $table->string('aboutPrincipleImage');
            $table->string('aboutPrincipleName');
            $table->string('aboutPrincipleTitle');
            $table->string('aboutPrincipleDescription');


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('abouts');
    }
};
