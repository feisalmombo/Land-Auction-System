@extends('layouts.auth-user')

@section('page_title', 'Complete Registration')

@section('content')

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2">
            @include('reservations.common.sidebar')
        </div>        
        <div class="col-sm-8">
            <h3>Kamilisha Usajili</h3>

             @include('common.errors')

            {!! Form::model($user_detail, ['method' => 'PATCH', 'action' => 'ReservationController@processCompleteRegistration', 'class' => 'form-horizontal', 'files' => true]) !!}

                @include('reservations.user._form')

                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-save"></i> Hifadhi</button>
                    </div>
                </div>

            {!! Form::close() !!}
        </div>
    </div>
</div>

@endsection
