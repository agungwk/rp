
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Status Verifikasi</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
              <div class="form-group">

               <!-- <b>Jenis Payment :</b> <hr>

               <select name="PAYMENTCHANNEL"><option value="15">Kartu Kredit</option><option value="04">Doku Walet</option><option value="35">Alfamart Group</option>
               <option value="02">Mandiri ClickPay</option><option value="06">BRI ePay</option><option value="19">CIMB Click</option>
               </select> -->

              	<br><br>
               <b>Status verifikasi : <?=$statusDesc; ?></b>
                <br>
                <label for="exampleInputFile">Transaction ID</label>
                <p><h2><b><?=$order_id; ?></b></h2></p>
              </div>
            </div>
          </div>
          <!-- /.box -->

        </div>
        <!--/.col (left) -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
