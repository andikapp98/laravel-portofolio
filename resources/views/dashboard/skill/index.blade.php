@extends('dashboard.layout')

@section('konten')
    <form action="{{ route('skill.update')}}" method="POST">
        @csrf
        <div class="mb-3">
          <label for="" class="form-label">PROGAMMING LANGUAGE & TOOLS</label>
          <input type="text"
            class="form-control form-control-sm skill" name="_language" id="judul" aria-describedby="helpId" value="{{ get_meta_value('_language') }}" placeholder="Programming Language & Tools" >
        </div>
        <div class="mb-3">
            <label for="" class="form-label">WORKFLOW</label>
            <textarea class="form-control summernote" rows="5" name="_workflow" value="">{{ get_meta_value('_workflow') }}</textarea>
          </div>
          <button class="btn btn-primary" name="simpan" type="submit">SIMPAN</button>
    </form>
@endsection
@push('child-skill')
  <script>
    $(document).ready(function() {
      $('.skill').tokenfield({
        autocomplete: {
            source: [{!! $skill !!}],
            delay: 100
        },
        showAutocompleteOnFocus: true
      });
    });
  </script>
@endpush