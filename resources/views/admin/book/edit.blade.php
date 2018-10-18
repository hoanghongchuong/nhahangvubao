@extends('admin.master')
@section('content')
<section class="content-header">
  <h1>
    Quản lý
    <small>Đơn đặt bàn</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">đơn đặt bàn</a></li>
    <!-- <li class="active">@yield('action')</li> -->
  </ol>
</section>
<section class="content">  
    <div class="box">
      @include('admin.messages_error')
        <div class="box-body">
          
        <form name="frmAdd" method="post" action="{{route('book.postEdit', $data->id)}}" enctype="multipart/form-data">
              <input type="hidden" name="_token" value="{!! csrf_token() !!}" />                           
              <div class="col-md-6">
                <div class="form-group">
                  <label for="">Giờ</label>
                  <input type="time" name="time" class="form-control" value="{{$data->time}}">
                </div>
                <div class="form-group">
                  <label for="">Ngày</label>
                  <input type="date" name="date" class="form-control" value="{!! $data->date !!}">
                </div>
                <div class="form-group">
                  <label for="">Số lượng</label>
                  <input type="number" name="numb" class="form-control" value="{{$data->numb}}">
                </div>
                <div class="form-group">
                  <label for="">Số điện thoại </label>
                  <input type="text" name="phone" class="form-control" value="{{$data->phone}}">
                </div> 
                <div class="form-group">
                  <label for="">trangj thai </label>
                  <input type="checkbox" name="status" @if($data->status == 1) checked @endif value="1">
                </div> 
              </div>     
              
            <div class="clearfix"></div>
            <div class="box-footer">
              <div class="row">
              <div class="col-md-6">
                  <button type="submit" class="btn btn-primary">Lưu</button>
                  <button type="button" onclick="javascript:window.location='backend/book'" class="btn btn-danger">Thoát</button>
                </div>
              </div>
            </div>
        </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->

@endsection