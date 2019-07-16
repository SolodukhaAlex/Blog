@extends('admin.layouts.app_admin')

@section('content')
    <h1>Admin Test</h1>
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-3">
                <div class="jumbotron">
                    <p class="lead"><span class="badge badge-primary ">Категорий 0</span></p>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="jumbotron">
                    <p class="lead"><span class="badge badge-primary">Материалов 0</span></p>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="jumbotron">
                    <p class="lead"><span class="badge badge-primary">Посетителей 0</span></p>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="jumbotron">
                    <p class="lead"><span class="badge badge-primary">Сегодня 0</span></p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <a href="{{route('admin.category.index')}}" class="btn btn-block btn-secondary">Создать категорию</a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">Категория первая</h4>
                    <p class="list-group-item-text">Кол-во материалов</p>
                </a>
            </div>
            <div class="col-sm-6">
                <a href="{{route('admin.article.index')}}" class="btn btn-block btn-secondary">Создать материал</a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">Последний довавленный материал</h4>
                    <p class="list-group-item-text">Категория</p>
                </a>
            </div>
        </div>
    </div>

@endsection
