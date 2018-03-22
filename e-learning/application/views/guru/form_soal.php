<!-- Main content -->
    <script>
      function jumlahSoal() {
        $('#content').html('');
        for (var i = 1; i <= $('#jumlah').val(); i++) {
          $('#content').append('<hr><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">Soal No '+i+'</label><div class="col-sm-6"><textarea class="form-control" name="soal'+ i +'" required="required"></textarea></div></div><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">Tipe Soal</label><div class="col-sm-6"><select class="form-control" required="required" name="tipe_soal'+ i +'" id="tipe_soal'+ i +'" onchange="tipeSoal('+ i +')"><option value=""></option><option value="pilihan_ganda">Pilihan Ganda</option><option value="true_false">True/False</option></select></div></div><div id="content_soal'+ i +'"></div>');
        }
      }
    </script>
    <script>
      function tipeSoal(no_soal) {
        $('#content_soal'+ no_soal).html('');
        var type = $('#tipe_soal' + no_soal).val();
        
        if (type === "pilihan_ganda") {
          $('#content_soal' + no_soal).append('<input type="hidden" name="tipe_soal'+ no_soal +'" class="form-control" value="pilihan_ganda"><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">A</label><div class="col-sm-6"><textarea class="form-control" name="a'+ no_soal +'" required="required"></textarea></div></div><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">B</label><div class="col-sm-6"><textarea class="form-control" name="b'+ no_soal +'" required="required"></textarea></div></div><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">C</label><div class="col-sm-6"><textarea class="form-control" name="c'+ no_soal +'" required="required"></textarea></div></div><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">D</label><div class="col-sm-6"><textarea class="form-control" name="d'+ no_soal +'" required="required"></textarea></div></div><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">E</label><div class="col-sm-6"><textarea class="form-control" name="e'+ no_soal +'" required="required"></textarea></div></div><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">Jawaban</label><div class="col-sm-2"><select class="form-control" name="benar'+ no_soal +'" required="required"><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option><option value="E">E</option></select></div></div>');
        } else if (type === "true_false") {
          $('#content_soal' + no_soal).append('<input type="hidden" name="tipe_soal'+ no_soal +'" class="form-control" value="true_false"><div class="form-group"><label for="inputPassword3" class="col-sm-2 control-label">Jawaban</label><div class="col-sm-2"><select class="form-control" name="benar'+ no_soal +'" required="required"><option value="T">True</option><option value="F">False</option></select></div></div>');
        } else {
          $('#content_soal' + no_soal).append('');
        }
      }
    </script>
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Input Soal</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <?php
              $modul = '';
              $id = '';
              $id_modul = '';
              $harga = '';
              $disabled='';
              $url = 'saveData';
              if(isset($data)){
                $modul = $data[0]->modul;
                $id_modul= $data[0]->id_modul;
                $id = $data[0]->id;
                $disabled="disabled='disabled'";
                $url = 'updateData';
              }
            ?>

            <form role="form" class="form-horizontal" action="<?php echo base_url() ?>guru/soal/input_soal" method="post" enctype="multipart/form-data">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Pelatihan</label>
                  <input type="hidden" name="id" value="<?php echo $id?>">
                  <div class="col-sm-6">
                    <select class="form-control" required="required" <?php echo $disabled?>  name="id_modul">
                      <option value="<?php echo $id_modul?>"><?php echo $modul?></option>
                      <option>-- Pilih Pelatihan --</option>
                      <?php
                        foreach ($data_modul as $key => $value) {
                      ?>
                      <option value="<?php echo $value->id;?>"><?php echo $value->modul;?></option>
                      <?php }?>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">Jumlah Soal</label>
                  <div class="col-sm-2">
                    <select class="form-control" required="required" name="jumlah" id="jumlah" onchange="jumlahSoal()">
                      <option value=""></option>
                      <option value="5">5</option>
                      <option value="10">10</option>
                      <option value="20">20</option>
                      <option value="50">50</option>
                      <option value="100">100</option>
                    </select>
                  </div>
                </div>

                <div id="content">


                </div>

              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
                <a href="<?php echo base_url()?>guru/soal" class="btn btn-default">Kembali</a>
              </div>
            </form>
          </div>
          <!-- /.box -->

        </div>
        <!--/.col (left) -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
