<style type="text/css">
  .radio-thumbnail > input {
  display: none;
}

.radio-thumbnail > :checked + .thumbnail {
  border-color: #66afe9;
  box-shadow: inset 0 50px 50px rgba(0,0,0,.075), 0 0 50px rgba(102, 175, 233, .6);
}

.radio-thumbnail > :disabled + .thumbnail {
  opacity: .5;
}
</style>

<script type="text/javascript">
  function getData() {
    var url = "<?php echo base_url() ?>murid/pelajaran/getDataGuru";
    $.ajax({
      url: url,
      method : 'POST',
      data: {id : $("#id_mata_pelajaran").val()},
      success: function(data){
        $('#listGuru').empty();
        $("#listGuru").append(data);
      }
    });
  }
 
  function detail(value) {
    var url = "<?=base_url() ?>murid/pelajaran/detailGuru/" + value.value;
    window.location.href = url;
  }
</script>
<!-- Main content -->
<?php echo $this->session->flashdata("k") ?>
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h2 class="box-title">Materi Pelatihan</h2>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" class="form-horizontal" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Cari Pelatihan</label>
                  <div class="col-sm-6">
                    <input type="text" id="id_mata_pelajaran" name="id_mata_pelajaran" class="form-control" onkeyup ="getData()">
                  </div>
                </div>

                <hr>

                <div class="row">
                  <div class="container-fluid">
                    <div class="row" id="listGuru">
                        <?php foreach ($data as $key => $value) { 
                            $foto = "file/guru/$value[foto]";
                            if($value['foto'] == "" || $foto == null){
                              $foto= "image/default.png";
                            }
                          ?>
                              <div class="col-lg-3">
                                <label class="text-center radio-thumbnail">
                                  <input type="radio" onclick="detail(this)" name="guru" value="<?=$value['id'] ?>">
                                  <span class="thumbnail">
                                    <img src="../assets/<?=$foto ?>" style="width:300px;height:250px;" class="img-responsive img-circle"/>
                                    <span><h4><b><?=$value['nama'] ?></b></h4></span>
                                    <?php for ($i=0; $i < $value['rating']; $i++) { 
                                    ?>
                                      <i class="fa fa-star text-yellow"></i>
                                    <?php 
                                        } 
                                        $sisa = 5 - $value['rating'];
                                        for ($i=0; $i < $sisa; $i++) { 
                                    ?>
                                        <i class="fa fa-star text-white"></i>
                                    <?php    }
                                      ?>
                                      <span><h5><b><?=$value['mapel'] ?></b></h5></span>
                                      <span><h5><?=$value['modul'] ?></h5></span>
                                      <span><h5><b>Rp <?=$value['harga'] ?></b></h5></span>
                                  </span>
                                </label>
                              </div>
                        <?php } ?>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
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