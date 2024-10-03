@extends('layouts.nav')

@section('contentnav')
<div class="row">
    <div class="col-md-12 col-lg-12 col-sm-12">
        <div class="white-box">
            <div class="d-md-flex justify-content-between align-items-center mb-3">
                <h3 class="box-title">Lista książek</h3>
                <form action="{{ route('books.index') }}" method="get" class="d-flex">
                    <input type="search" id="search" name="search" class="form-control" placeholder="Wyszukiwanie" />
                    <button type="submit" class="btn btn-primary" data-mdb-ripple-init>
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </div>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="border-top-0">Tytuł</th>
                            <th class="border-top-0">Status</th>
                            <th class="border-top-0">Akcja</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($books as $book)
                            <tr>
                                <td>{{ $book->title }}</td>
                                <td>
                                    @if($book->is_rented && $book->client)
                                        Wypożyczona przez: {{ $book->client->first_name }} {{ $book->client->last_name }}
                                    @elseif($book->is_rented)
                                        Wypożyczona (brak klienta)
                                    @else
                                        Dostępna
                                    @endif
                                </td>
                                <td>
                                    <button class="btn btn-info" data-toggle="modal" data-target="#bookDetailsModal{{ $book->id }}">
                                        Szczegóły
                                    </button>    
                                
                                    @if(!$book->is_rented)
                                        <button class="btn btn-primary" data-toggle="modal" data-target="#rentBookModal{{ $book->id }}">
                                            Wypożycz
                                        </button>
                                    @else
                                    <button class="btn btn-warning" data-toggle="modal" data-target="#returnBookModal{{ $book->id }}">
                                        Oddaj
                                    </button>
                                    @endif
                                </td>
                            </tr>

                            <div class="modal fade" id="bookDetailsModal{{ $book->id }}" tabindex="-1" aria-labelledby="bookDetailsModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="bookDetailsModalLabel">Szczegóły książki: {{ $book->title }}</h5>
                                            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p><strong>Tytuł:</strong> {{ $book->title }}</p>
                                            <p><strong>Autor:</strong> {{ $book->author }}</p>
                                            <p><strong>Rok wydania:</strong> {{ $book->published_year }}</p>
                                            <p><strong>Wydawnictwo:</strong> {{ $book->publisher }}</p>
                                            <p><strong>Status:</strong> {{ $book->is_rented ? 'Wypożyczona' : 'Dostępna' }}</p>
                                            @if($book->is_rented)
                                                <p><strong>Wypożyczona przez:</strong> {{ $book->client->first_name }} {{ $book->client->last_name }}</p>
                                            @endif
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="returnBookModal{{ $book->id }}" tabindex="-1" aria-labelledby="returnBookModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="returnBookModalLabel">Oddaj książkę: {{ $book->title }}</h5>
                                            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p>Czy na pewno chcesz oddać książkę <strong>{{ $book->title }}</strong>?</p>
                                            @if($book->client)
                                                <p><strong>Wypożyczona przez:</strong> {{ $book->client->first_name }} {{ $book->client->last_name }}</p>
                                            @else
                                                <p><strong>Wypożyczona przez:</strong> Brak danych klienta</p>
                                            @endif
                                        </div>
                                        <div class="modal-footer">
                                            <form action="{{ route('books.return', $book->id) }}" method="POST">
                                                @csrf
                                                @method('POST')
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Anuluj</button>
                                                <button type="submit" class="btn btn-warning">Oddaj</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="rentBookModal{{ $book->id }}" tabindex="-1" aria-labelledby="rentBookModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="rentBookModalLabel">Wypożycz książkę: {{ $book->title }}</h5>
                                            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <form action="{{ route('books.rent', $book->id) }}" method="POST">
                                            @csrf
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="client">Wybierz klienta:</label>
                                                    <select id="client" name="client_id" class="form-control" required>
                                                        <option value="">-- Wybierz klienta --</option>
                                                        @foreach($clients as $client)
                                                            <option value="{{ $client->id }}">{{ $client->first_name }} {{ $client->last_name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                                                <button type="submit" class="btn btn-primary">Wypożycz</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </tbody>
                </table>

                {{ $books->links('pagination::bootstrap-4') }}
            </div>
        </div>
    </div>
</div>

@endsection
