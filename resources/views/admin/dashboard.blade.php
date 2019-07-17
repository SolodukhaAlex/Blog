@extends('admin.layouts.app_admin')

@section('content')
    <h1>Admin Test</h1>
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-3">
                <div class="jumbotron">
                    <p class="lead"><span class="badge badge-primary ">Категорий {{$count_categories}}</span></p>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="jumbotron">
                    <p class="lead"><span class="badge badge-primary">Материалов {{$count_articles}}</span></p>
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
                <a href="{{route('admin.category.create')}}" class="btn btn-block btn-secondary">Создать категорию</a>
                @foreach($categories as $category)
                    <a href="{{route('admin.category.edit', $category)}}" class="list-group-item">
                        <h4 class="list-group-item-heading">{{$category->title}}</h4>
                        <p class="list-group-item-text">{{$category->articles()->count()}}</p>
                    </a>
                @endforeach
            </div>
            <div class="col-sm-6">
                <a href="{{route('admin.article.index')}}" class="btn btn-block btn-secondary">Создать материал</a>
                @foreach($articles as $article)
                    <a href="{{route('admin.article.edit', $article)}}" class="list-group-item">
                        <h4 class="list-group-item-heading">{{$article->title}}</h4>
                        <p class="list-group-item-text">{{$article->categories()->pluck('title')->implode(', ')}}</p>
                    </a>
                @endforeach

            </div>
        </div>
    </div>

@endsection
