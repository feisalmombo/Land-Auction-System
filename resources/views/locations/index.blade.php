@extends('layouts.app')

@section('page_title', 'Locations')

@section('content')

<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12">
			<ol class="breadcrumb">
				<li>
					<a href="/">Home</a>
				</li>
				<li class="active">Locations</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-12">
			<h2 class="text-center">All Locations</h2>

			<br>

			<a href="/locations/create" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Add New</a>

			<br><br>

			@if(count($locations) > 0)
				

	<table id="locationsTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Added</th>
                <th>Updated</th>
                <th><i class="fa fa-cog"></i></th>
                <th><i class="fa fa-cog"></i></th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Added</th>
                <th>Updated</th>
                <th><i class="fa fa-cog"></i></th>
                <th><i class="fa fa-cog"></i></th>
            </tr>
        </tfoot>
        <tbody>
        	
			@foreach($locations as $location)

				<tr>
					<td>{{ $location->area_id }}</td>
					<td><a href="/locations/{{ $location->area_id }}">{{ $location->name }}</a></td>
					<td>{{ $location->created_at }}</td>
					<td>{{ $location->updated_at }}</td>
					<td><a href="/locations/{{ $location->area_id }}/edit" class="btn btn-default"><i class="fa fa-edit"></i></a></td>
					<td>
						

		<a class="btn btn-danger" data-toggle="modal" href='#{{ $location->area_id }}'><i class="fa fa-trash"></i></a>
		<div class="modal fade" id="{{ $location->area_id }}">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Deleting {{ $location->name }}</h4>
					</div>
					<div class="modal-body">

						<p class="lead">Are you sure that you want to delete <strong>{{ $location->name }}</strong> ?</p>
						
					</div>
					<div class="modal-footer">

                        {!! Form::open(['method' => 'DELETE', 'route' => ['locations.destroy', $location->area_id]]) !!}
                        	<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-danger"><i class="fa fa-trash"></i> Delete</button>
                        {!! Form::close() !!}

					</div>
				</div>
			</div>
		</div>


					</td>
				</tr>

			@endforeach

        </tbody>
    </table>				

			@else

				<div class="alert alert-info">
					<h3>No location added yet</h3>
				</div>

			@endif	

		</div>
	</div>
</div>

<script>
	
$(document).ready(function() {
    $('#locationsTable').DataTable();
} );

</script>

@endsection