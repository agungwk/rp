<!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Mata Pelajaran</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <?php 
              $pelajaran = '';
              $id = '';
              $id_master_mata_pelajaran = '';
              $harga = '';
              $url = 'saveData';
              if(isset($data)){
                $pelajaran = $data[0]->mata_pelajaran;
                $id_master_mata_pelajaran= $data[0]->id_master_mata_pelajaran;
                $id = $data[0]->id;
                $harga = $data[0]->harga;
                $url = 'updateData';
              }
            ?>

            <form role="form" class="form-horizontal" action="<?php echo base_url() ?>guru/mata_pelajaran/<?=$url;?>" method="post" enctype="multipart/form-data">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Mata Pelajaran</label>
                  <input type="hidden" name="id" value="<?php echo $id?>">
                  <div class="col-sm-6">
                    <select class="form-control" required="required" name="id_master_mata_pelajaran">
                      <option value="<?php echo $id_master_mata_pelajaran?>"><?php echo $pelajaran?></option>
                      <option>-- Piliah Mata Pelajaran --</option>
                      <?php
                        foreach ($data_mata_pelajaran as $key => $value) {
                      ?>
                      <option value="<?php echo $value->id;?>"><?php echo $value->mata_pelajaran;?></option>
                      <?php }?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">Harga</label>

                  <div class="col-sm-6">
                    <input type="text" name="harga" required="required" class="form-control" value="<?php echo $harga?>" placeholder="Harga">
                  </div>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
                <a href="<?php echo base_url()?>guru/mata_pelajaran" class="btn btn-default">Kembali</a>
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