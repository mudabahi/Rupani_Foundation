<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAddCard1sTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('add_card1s', function (Blueprint $table) {
            $table->id();
            $table->string('addCard1Image');
            $table->string('addCard1Title');
            $table->text('addCard1description')->nullable()->default('text');('addCard1Description');
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
        Schema::dropIfExists('add_card1s');
    }
}
