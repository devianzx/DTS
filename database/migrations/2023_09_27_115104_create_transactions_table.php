<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('requested_by');
            $table->string('fullname');
            $table->string('office');
            $table->string('contactnumber');
            $table->string('doctype');
            $table->text('details')->nullable();
            $table->string('purpose');
            $table->string('file_path')->nullable(); // Column to store the file path or name
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
