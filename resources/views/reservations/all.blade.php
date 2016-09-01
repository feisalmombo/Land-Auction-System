@extends('layouts.app')

@section('page_title', 'All Reservations')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-sm-12">

                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>Plot #</th>
                            <th>Block</th>
                            <th>Location</th>
                            <th>Land Use</th>
                            <th>Size</th>
                            <th>Price</th>
                            <th>Deadline</th>
                            <th><i class="fa fa-print"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($plot_reservations as $plot_reservation)
                            <tr>
                                <td>{{ $plot_reservation->plot_no  }}</td>
                                <td>{{ $plot_reservation->block  }}</td>
                                <td>{{ $plot_reservation->location  }}</td>
                                <td>{{ $plot_reservation->land_use  }}</td>
                                <td>{{ $plot_reservation->size  }}</td>
                                <td>{{ $plot_reservation->size * $plot_reservation->price  }}</td>
                                <td>{{ $plot_reservation->deadline  }}</td>

                                <td><a href="/reservation/print-preview/{{ $plot_reservation->plot_no }}"
                                       class="btn btn-primary btn-sm"><i class="fa fa-file-pdf-o"></i></a></td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

@endsection