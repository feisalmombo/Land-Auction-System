@extends('layouts.admin')

@section('page_title' , ' - Admin')

@section('nav_bar')

    @include('admin.common.nav_bar')

@endsection

@section('side_bar')

    @include('admin.common.nav_side_menu')

@endsection

@section('main_content')

    <div class="row">
        <a href="/admin/plot-assignments/create" class="btn btn-primary btn-lg"><i class="fa fa-plus-square-o"></i>
            Add</a>
    </div>

    <br>

    <div class="row">

        <h3>Plots</h3>

        @if(count($plot_assignments) > 0)


            <table id="locationsTable" class="display" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Location</th>
                    <th>Land use</th>
                    <th>Block</th>
                    <th>Plot #</th>
                    <th>Size</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>Location</th>
                    <th>Land use</th>
                    <th>Block</th>
                    <th>Plot #</th>
                    <th>Size</th>
                </tr>
                </tfoot>
                <tbody>

                @foreach($plot_assignments as $plot_assignment)

                    <tr>
                        <td>{{ $plot_assignment->id }}</td>
                        <td>{{ $plot_assignment->location }}</td>
                        <td>{{ $plot_assignment->land_use }}</td>
                        <td>{{ $plot_assignment->block }}</td>
                        <td>{{ $plot_assignment->plot_no }}</td>
                        <td>{{ $plot_assignment->size }}</td>
                    </tr>

                @endforeach

                </tbody>
            </table>

        @else

            <div class="alert alert-info">
                <h3 class="text-center">No plot is assigned added yet</h3>
            </div>

        @endif


    </div>

@endsection