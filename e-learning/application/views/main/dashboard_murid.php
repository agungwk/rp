<h1>Welcome <?php echo $this->session->userdata('data')['nama']; ?></h1>
<h3>
	<?php
		if($this->session->userdata('data')['type'] == 'guru'){

			if($this->session->userdata('data')['status'] == 0){
				echo "<span style='color:red;'>Silahkan Lengkapi Data Profile Anda, Untuk Proses Aktifasi Akun oleh Admin.</span>";
				echo "<hr>";
				echo "Silahkan tunggu 1-3 hari jam kerja, untuk proses Aktifasi Akun.";
			}
		}
	?>
</h3>
<div class="row">
	<div class="col-lg-3 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-aqua">
      <div class="inner">
        <h3>Rp <?php echo $getJmlTransaksiMurid[0]->total_harga ?></h3>

        <p>Total Transaksi</p>
      </div>
      <div class="icon">
        <i class="ion ion-cash"></i>
      </div>
      <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <div class="col-lg-3 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-red">
      <div class="inner">
        <h3><?php echo $getTotalModulMurid[0]->total_modul ?></h3>

        <p>Jumlah Modul</p>
      </div>
      <div class="icon">
        <i class="ion ion-android-document"></i>
      </div>
      <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <!-- ./col -->
  <div class="col-lg-3 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-green">
      <div class="inner">
        <h3><?php echo $getTotalModulNilaiMurid[0]->total_nilai ?></h3>

        <p>Jumlah Penilaian</p>
      </div>
      <div class="icon">
        <i class="ion ion-clipboard"></i>
      </div>
      <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  <!-- ./col -->
  <div class="col-lg-3 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-yellow">
      <div class="inner">
        <h3><?php echo $getRataNilaiMurid[0]->rata_nilai ?></h3>

        <p>Rata-rata Nilai</p>
      </div>
      <div class="icon">
        <i class="ion ion-arrow-graph-up-right"></i>
      </div>
      <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
</div>
<div class="row">
<section class="col-lg-6 connectedSortable">
	<!-- Custom tabs (Charts with tabs)-->
	<div class="nav-tabs-custom">
	<!-- Tabs within a box -->
		<ul class="nav nav-tabs pull-right">
		  <li class="pull-left header"><i class="fa fa-money"></i> Transaksi</li>
		</ul>
		<div class="tab-content no-padding">
		  <!-- Morris chart - Sales -->
		  <div class="chart tab-pane active" id="revenue-chart" style="position: relative; height: 300px;"></div>
		</div>
	</div>
	</section>
</div>
<!-- <div class="row">
<section class="col-lg-6 connectedSortable">
<div class="nav-tabs-custom">
<ul class="nav nav-tabs pull-right">
  <li class="pull-left header"><i class="fa fa-money"></i> Materi</li>
</ul>
<div class="tab-content no-padding">
  <div class="chart tab-pane active" id="materi-chart" style="position: relative; height: 300px;"></div>
</div>
</div>

</section>

<section class="col-lg-6 connectedSortable">
<div class="nav-tabs-custom">
<ul class="nav nav-tabs pull-right">
  <li class="pull-left header"><i class="fa fa-book"></i> Comment</li>
</ul>
<div class="tab-content no-padding">
  <div class="chart tab-pane active" id="comment-graph" style="position: relative; height: 300px;"></div>
</div>
</div>

</section>
</div> -->

<script type="text/javascript">
$(function () {
var transactionsGraph = new Morris.Area({
element   : 'revenue-chart',
resize    : true,
data      : <?php print_r(json_encode($getTotalTransaksiMurid)) ?>,
    xkey      : 'created_at',
    ykeys     : ['verf_0', 'verf_1', 'verf_2'],
    labels    : ['Verifikasi 0', 'Verifikasi 1', 'Verifikasi 2'],
    lineColors: ['#a0d0e0', '#3c8dbc', '#4e7b96'],
    hideHover : 'auto'
  });
	$('.box ul.nav a').on('shown.bs.tab', function () {
    transactionsGraph.redraw();
  });
});
</script>
