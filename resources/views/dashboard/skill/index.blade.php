@extends('dashboard.layout')

@section('konten')
    <div class="pb-3"><a href="{{ route('halaman.index')
        }}" class="btn btn-secondary"><< kembali</a>
    </div>
    <form action="{{ route('halaman.store')}}" method="POST">
        @csrf
        <div class="mb-3">
          <label for="" class="form-label">PROGAMMING LANGUAGE & TOOLS</label>
          <input type="text"
            class="form-control form-control-sm" name="_language" id="judul" aria-describedby="helpId" value="" placeholder="Programming Language & Tools">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">WORKFLOW</label>
            <textarea class="form-control summernote" rows="5" name="_workflow" value=""></textarea>
          </div>
          <button class="btn btn-primary" name="simpan" type="submit">SIMPAN</button>
    </form>
@endsection