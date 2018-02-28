<?php echo $this->session->flashdata("k") ?>
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Verifikasi pembelajaran <?php echo $data_belajar->mata_pelajaran." Modul ".$data_belajar->modul." (".$data_belajar->nama.")"; ?></h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <div class="row">
                <div class="col-md-1" style="width: 3%;"></div>
                <div class="col-md-11"><div class="bg-green disabled color-palette" style="padding: 10px;">
                    <span>*) Catatan
                        <ul>
                          <li>Tanpa Verifikasi, Belajar Tidak dapat dimulai. Dan mohon kirim bukti bayar hasil capture ke <b>email : info.rumahpengembangan@gmail.com</b></li>
                          <li>Transfer ke Rekening BCA 8800707669 dengan Account Name PT. Lima Pilar Manajemen<br>Cabang Pondok Cabe Tangerang Selatan</li>
                          <!-- <li>Bukti verifikasi harus berbentuk gambar</li> -->
                        </ul>
                    </span>
                </div></div>
                <div class="col-md-1" style="width: 2%;"></div>
            </div>
            
            <!--
           <div class="row">
              <div class="col-md-3 text-center" style="margin-top: 5%;">
                <a href="<?php echo base_url()?>murid/verifikasi/tombol1"><input type="button" class="btn btn-success" value="Tombol 1" name=""></a>
              </div>

              <div class="col-md-3 text-center" style="margin-top: 5%;">
                <a href="<?php echo base_url()?>murid/verifikasi/tombol2"><input type="button" class="btn btn-success" value="Tombol 2" name=""></a>
              </div>

              <div class="col-md-3 text-center" style="margin-top: 5%;">
                <a href="<?php echo base_url()?>murid/verifikasi/tombol3"><input type="button" class="btn btn-success" value="Tombol 3" name=""></a>
              </div>

              <div class="col-md-3 text-center" style="margin-top: 5%;">
                <a href="<?php echo base_url()?>murid/verifikasi/tombol4"><input type="button" class="btn btn-success" value="Tombol 4" name=""></a>
              </div>
             
            </div>
            !-->
            <hr>
            
            
            <?php
                
                $dAmount=$data_belajar->harga.".00";
				//$invoice="INV-".date("YmdHis");
				$invoice=$data_belajar->no_invoice;
				$WORDS = sha1 ($dAmount."10896632"."V5l5u8s5t2R9".$invoice);
				$sessID=sha1(rand(0,100));      
            ?>
           <!-- <form class="text-center" role="form" action="<?php echo base_url() ?>murid/verifikasi/saveData" method="post" enctype="multipart/form-data"> !-->
           	<form class="text-center" action="http://staging.doku.com/Suite/Receive" method="post" id="form1" name="form1">
            <!--<form class="text-center" action="https://staging.doku.com/Suite/ReceiveMIP" method="post" id="form1" name="form1"> !-->
            
            <!--<input name="MALLID" type="hidden" value="10896632" > !-->
            <input name="MALLID" type="hidden" value="10896632" >
			<input name="BASKET" type="hidden" value="<?php echo $data_belajar->modul.",".$dAmount.",1,".$dAmount; ?>" >
			<input name="CHAINMERCHANT" type="hidden" value="NA" >
			<input name="AMOUNT" type="hidden" value="<?php echo $dAmount; ?>" >
			<input name="PURCHASEAMOUNT" type="hidden" value="<?php echo $dAmount; ?>" >
			<input name="TRANSIDMERCHANT" type="hidden" readonly="" value="<?=$data_belajar->no_invoice; ?>" >
			<input name="WORDS" type="hidden" value="<?php echo $WORDS; ?>" >
			<input name="CURRENCY" type="hidden" value="360" >
			<input name="PURCHASECURRENCY" type="hidden" value="360" >
			<input name="COUNTRY" type="hidden" value="ID" >
			<input name="SESSIONID" type="hidden" value="<?php echo $sessID; ?>" >
			<input name="REQUESTDATETIME" type="hidden" value="<?php echo date("YmdHis"); ?>" >
			<input name="NAME" type="hidden" value="Customer Name" >
			<input name="EMAIL" type="hidden" value="customer@domain.com">
			<!--<input name="PAYMENTCHANNEL" type="hidden" value="15" > !-->
           	
           	
				
              <div class="box-body">
                <div class="form-group">
                	
                 <b>Jenis Payment :</b> <hr>
                 
                 <select name="PAYMENTCHANNEL"><option value="15">Kartu Kredit</option><option value="04">Doku Walet</option><option value="35">Alfamart Group</option>
                 <option value="02">Mandiri ClickPay</option><option value="06">BRI ePay</option><option value="19">CIMB Click</option>
                 </select>
                 
                	<br><br>
                 <b>Nomor Invoice : <?=$data_belajar->no_invoice; ?></b>	
                  <br>
                  <label for="exampleInputFile">Total Amount</label>
                  <p><h2><b>Rp. <?=$data_belajar->harga; ?></b></h2></p>
                </div>
              </div>
              <!-- /.box-body -->
             

              <div class="box-footer">
                  <!-- <a href="http://www.klikbca.com/" target='_blank'><input type="button" class="btn btn-success" value="Internet Banking BCA" name=""></a><br><br>  !-->
                  
                <button type="submit" class="btn btn-primary">Bayar Sekarang</button>
                
              </div>
            </form>
          </div>
          <!-- /.box -->

        </div>
        <!--/.col (left) -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content