@extends('dashboard.layout')

@section('konten')
    <div class="pb-3"><a href="{{ route('halaman.index')
        }}" class="btn btn-secondary"><< kembali</a>
    </div>
    <form action="{{ route('experience.store')}}" method="POST">
        @csrf
        <div class="mb-3">
          <label for="" class="form-label">Judul</label>
          <input type="text"
            class="form-control form-control-sm" name="judul" id="judul" aria-describedby="helpId" value="{{ Session::get('judul') }}">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Isi</label>
            <textarea class="form-control summernote" rows="5" name="isi" value="{{ Session::get('isi') }}"></textarea>
          </div>
          <button class="btn btn-primary" name="simpan" type="submit">SIMPAN</button>
    </form>
@endsection