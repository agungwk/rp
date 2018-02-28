
<div class="main-inner">
    <div class="container">
      <div class="row">
        <!-- /span6 -->
        <div class="span12">

          <!-- /widget -->
          
          <!-- /widget -->
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>List Tabel Materi Pelajaran</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th> Materials </th>
                    <th> Sub Materials </th>
                    <th> Price </th>
                    <th> Module </th>
        
                  </tr>
                </thead>
                <tbody>

                  <?php 
						$sql_parent = mysql_query("SELECT * FROM tb_mapel WHERE id_parent = '0'");

						while($data_parent = mysql_fetch_array($sql_parent)){
					?>
						<tr>
							<td>
								<?php echo $data_parent[2] ?>
							</td>
							<td>
								<?php 
									$sql_child = mysql_query("SELECT * FROM tb_mapel WHERE id_parent = '$data_parent[0]'");
									while($data_child = mysql_fetch_array($sql_child)){
										echo "$data_child[2]"."<br>";
									}
								?>
							</td>
							<td>
								<?php 
									$sql_child = mysql_query("SELECT * FROM tb_mapel WHERE id_parent = '$data_parent[0]'");
									while($data_child = mysql_fetch_array($sql_child)){
										$harga = number_format($data_child['harga_mapel'],0,",",".");
										echo "IDR. $harga"."<br>";
									}
								?>
							</td>

							<td>
								<?php 
									$sql_child = mysql_query("SELECT * FROM tb_mapel WHERE id_parent = '$data_parent[0]'");
									while($data_child = mysql_fetch_array($sql_child)){
										echo "<a href='assets/doc/$data_child[0].pdf' target=_FILES>DOWNLOAD</a><br>";
									}
								?>
							</td>

						</tr>
					<?php
						}
					?>
                
                </tbody>
              </table>
            </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget --> 
          
          <!-- /widget -->
        </div>
        <!-- /span6 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>