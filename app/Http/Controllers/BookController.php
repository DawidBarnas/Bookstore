<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Models\Book;
use App\Models\Client;
use Illuminate\Http\Request;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $search = $request->input('search');

        $books = Book::with('client')
        ->where(function ($query) use ($search) {
            $query->where('title', 'like', "%$search%")
                ->orWhere('author', 'like', "%$search%")
                ->orWhere('published_year', 'like', "%$search%");      
        })
        ->orWhereHas('client', function ($query) use ($search) {
            $query->where('first_name', 'like', "%$search%")
                ->orWhere('last_name', 'like', "%$search%");
        })
        ->paginate(20);

        $clients = Client::all();

        return view('books', compact('books', 'clients'));
        
    }


    public function rent(Request $request, $bookId)
    {
        $request->validate([
            'client_id' => 'required|exists:clients,id',
        ]);

        $book = Book::findOrFail($bookId);

        if ($book->is_rented) {
            return redirect()->route('books.index')->with('error', 'Książka jest już wypożyczona.');
        }

        $book->client_id = $request->client_id;
        $book->is_rented = true;
        $book->save();

        return redirect()->route('books.index')->with('success', 'Książka została wypożyczona.');
    }

    public function return($bookId)
    {
        $book = Book::findOrFail($bookId);

        if (!$book->is_rented) {
            return redirect()->route('books.index')->with('error', 'Książka nie jest aktualnie wypożyczona.');
        }

        if (!$book->client) {
            return redirect()->route('books.index')->with('error', 'Nie można zwrócić książki, ponieważ brak przypisanego klienta.');
        }

        $book->is_rented = false;
        $book->client_id = null;
        $book->save();

        return redirect()->route('books.index')->with('success', 'Książka została zwrócona.');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
