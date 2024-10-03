@extends('layouts.nav')

@section('contentnav')

<div class="row">
    <div class="col-md-12 col-lg-12 col-sm-12">
        <div class="white-box">
            <div class="d-md-flex justify-content-between align-items-center mb-3">
                <h3 class="box-title">Klienci</h3>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addClientModal">
                    Dodaj
                </button>
            </div>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="border-top-0">Imię</th>
                            <th class="border-top-0">Nazwisko</th>
                            <th class="border-top-0">Akcja</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($clients as $client)
                            <tr>
                                <td>{{ $client->first_name }}</td>
                                <td>{{ $client->last_name }}</td>
                                <td>
                                    <button class="btn btn-info" data-toggle="modal" data-target="#clientDetailsModal{{ $client->id }}">
                                        Szczegóły
                                    </button>
                                    <form action="{{ route('clients.destroy', $client->id) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger" onclick="return confirm('Czy na pewno chcesz usunąć tego klienta?')">Usuń</button>
                                    </form>
                                    
                                </td>
                            </tr>

                            <div class="modal fade" id="clientDetailsModal{{ $client->id }}" tabindex="-1" aria-labelledby="clientDetailsModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="clientDetailsModalLabel">Szczegóły klienta: {{ $client->first_name }} {{ $client->last_name }}</h5>
                                            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p><strong>Imię:</strong> {{ $client->first_name }}</p>
                                            <p><strong>Nazwisko:</strong> {{ $client->last_name }}</p>
                                            
                                            <h5>Wypożyczone książki:</h5>
                                            @if($client->books->count() > 0)
                                                <ul>
                                                    @foreach($client->books as $book)
                                                        <li>{{ $book->title }} ({{ $book->published_year }})</li>
                                                    @endforeach
                                                </ul>
                                            @else
                                                <p>Brak wypożyczonych książek</p>
                                            @endif
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        @endforeach
                    </tbody>
                </table>
                {{ $clients->links('pagination::bootstrap-4') }}
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="addClientModal" tabindex="-1" aria-labelledby="addClientModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addClientModalLabel">Dodaj nowego klienta</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="{{ route('clients.store') }}" method="POST">
                @csrf
                <div class="modal-body">
                    <div class="form-group">
                        <label for="first_name">Imię:</label>
                        <input type="text" id="first_name" name="first_name" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="last_name">Nazwisko:</label>
                        <input type="text" id="last_name" name="last_name" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                    <button type="submit" class="btn btn-primary">Dodaj klienta</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
