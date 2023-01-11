@extends('dashboard.layout')

@section('konten')
    <div class="pb-3"><a href="{{ route('experience.index')
        }}" class="btn btn-secondary"><< kembali</a>
    </div>
    <form action="{{ route('experience.store')}}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="judul" class="form-label">Posisi</label>
            <input type="text"
              class="form-control form-control-sm" name="judul" id="judul" aria-describedby="helpId" placeholder="Posisi" value="{{ Session::get('judul') }}">
        </div>
        <div class="mb-3">
            <label for="info1" class="form-label">Nama Perusahaan</label>
            <input type="text"
              class="form-control form-control-sm" name="info1" id="info1" aria-describedby="helpId" placeholder="Nama perusahaan" value="{{Session::get('info1')}}">
        </div>
        <div class="mb-3">
            <div class="row">
                <div class="col-auto">Tanggl Mulai</div>
                <div class="col-auto"><input type="date" name="tgl_mulai" id="tgl_mulai" class="form-control form-control-sm"   placeholder="dd/mm/yy" value="{{ Session::get('tgl_mulai') }}"></div>
                <div class="col-auto">Tanggal Akhir</div>
                <div class="col-auto"><input type="date" name="tgl_akhir" id="tgl_akhir" class="form-control form-control-sm" placeholder="dd/mm/yy" value="{{ Session::get('tgl_mulai') }}"></div>
            </div> 
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Isi</label>
            <textarea class="form-control summernote" rows="5" name="isi" value="{{ Session::get('isi') }}"></textarea>
          </div>
          <button class="btn btn-primary" name="simpan" type="submit">SIMPAN</button>
    </form>
@endsection