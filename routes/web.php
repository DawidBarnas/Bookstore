<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\ClientController;

Route::get('/', function () {
    return redirect()->route('books.index');
});

Route::get('/books', [BookController::class, 'index'])->name('books.index');
Route::get('/clients', [ClientController::class, 'index'])->name('clients.index');

Route::delete('/clients/{id}', [ClientController::class, 'destroy'])->name('clients.destroy');
Route::resource('clients', ClientController::class);

Route::post('/books/rent/{bookId}', [BookController::class, 'rent'])->name('books.rent');
Route::post('/books/return/{bookId}', [BookController::class, 'return'])->name('books.return');
