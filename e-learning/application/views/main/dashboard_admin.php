
<!-- <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/morris.css"> -->
<!-- <h1>Welcome <?php echo $this->session->userdata('data')['nama']; ?></h1> -->
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
              <h3><?php echo $getCountDataMurid[0]->total_murid ?></h3>

              <p>Total Murid</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-contacts"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?php echo $getCountDataGuru[0]->total_guru ?></h3>

              <p>Jumlah Guru</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-contact"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><?php echo $totalJmlTransaksi[0]->total_transaksi ?></h3>

              <p>Total Transaksi</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-cart"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3><?php echo $totalTransaksi[0]->total_harga ?></h3>

              <p>Nominal Transaksi</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
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
	var transactionsGraph = new Morris.Line({
    element   : 'revenue-chart',
    resize    : true,
    data      : <?php print_r(json_encode($dashboardTransaksiGuru)) ?>,
		xkey      : 'created_at',
    ykeys     : ['verf_0', 'verf_1', 'verf_2'],
    labels    : ['Verifikasi 0', 'Verifikasi 1', 'Verifikasi 2'],
    hideHover : 'auto'
  });
	var modulGraph = new Morris.Donut({
    element   : 'modul-graph',
    resize    : true,
    data      : <?php print_r(json_encode($totalModulPerMapelGuru)) ?>,
    hideHover : 'auto'
  });
	var commentGraph = new Morris.Area({
    element   : 'comment-chart',
    resize    : true,
    data      : [
      { y: '2018-03-01', item1: 10},
      { y: '2018-03-02', item1: 20},
      { y: '2018-03-03', item1: 13}
    ],
    xkey      : 'y',
    ykeys     : ['item1'],
    labels    : ['total_harga'],
    lineColors: ['#a0d0e0', '#3c8dbc'],
    hideHover : 'auto'
  });
	var materiGraph = new Morris.Area({
    element   : 'materi-chart',
    resize    : true,
    data      : [
      { y: '2018-03-01', item1: 10},
      { y: '2018-03-02', item1: 20},
      { y: '2018-03-03', item1: 13}
    ],
    xkey      : 'y',
    ykeys     : ['item1'],
    labels    : ['total_harga'],
    lineColors: ['#a0d0e0', '#3c8dbc'],
    hideHover : 'auto'
  });
	$('.box ul.nav a').on('shown.bs.tab', function () {
    transactionsGraph.redraw();
    modulGraph.redraw();
    materiGraph.redraw();
		commentGraph.redraw();
  });
});
</script>
