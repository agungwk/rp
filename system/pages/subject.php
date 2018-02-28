<?php 
	if(isset($_POST['save'])){
		$subject_name = $_POST['name'];
		$parent = $_POST['parent'];
		$price  = $_POST['price'];
		$teacher  = $_POST['teacher'];
		$sql = mysql_query("INSERT INTO `tb_mapel` (`id_mapel`, `id_parent`, `nama_mapel`, `harga_mapel`, `nama_teacher`) VALUES (NULL, '$parent', '$subject_name', '$price', '$teacher');");
		$nama = $_FILES["filenya"]["name"];
        
        $namafile = mysql_insert_id().".pdf";
        
		
		if($sql){
			$target_file = "assets/doc/".$namafile;
			move_uploaded_file($_FILES["filenya"]["tmp_name"], $target_file);
			echo "<script>alert('Succesfully Uploaded!')</script>";

		}else{
			echo "ERROR";
		}
	}

	if(isset($_GET['delete'])){
		$sql = mysql_query("DELETE FROM tb_mapel WHERE id_mapel = '$_GET[delete]'");
		
			echo "<script>alert('Data has been deleted')</script>";
			echo "<script>document.location.href='index.php?param=subject'</script>";
	}
?>
<div class="main-inner">
    <div class="container">
      <div class="row">
        <div class="span4">
          <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3> Masukan Materi Pelajaran Form</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <div class="widget big-stats-container">
                <div class="widget-content"><br>
                	<form method="post" class="form-horizontal" enctype="multipart/form-data">

	                	<div class="control-group">											
							<label class="control-label" for="username">Sub Materials</label>
							<div class="controls">
								<input type="text" name="name" class="span2" id="username" >
							</div> <!-- /controls -->				
						</div>


	                	<div class="control-group">											
							<label class="control-label" for="username">Materials</label>
							<div class="controls">
								<select class="span2" required="" name="parent">
									<option value=""></option>
									<option value="0">SELF</option>
									<?php 

										$sql_parent = mysql_query("SELECT * FROM tb_mapel WHERE id_parent = '0'");

										while($data_parent = mysql_fetch_array($sql_parent)){
											echo "<option value='$data_parent[0]'>$data_parent[2]</option>";
										}
									?>
								</select>
							</div> <!-- /controls -->
						</div>

						<div class="control-group">											
							<label class="control-label" for="username">Teacher</label>
							<div class="controls">
								<select class="span2" name="teacher">
									<option value=""></option>
									<?php 
										$sql_parent = mysql_query("SELECT * FROM tb_pengguna WHERE jenis_user = 'Teacher'");
										while($data_parent = mysql_fetch_array($sql_parent)){
											echo "<option value='$data_parent[0]'>$data_parent[2]</option>";
										}
									?>
								</select>
							</div> <!-- /controls -->
						</div>

	                	<div class="control-group">											
							<label class="control-label" for="username"> Price</label>
							<div class="controls">
								<input type="text" value="0" name="price" class="span2" id="username" >
							</div> <!-- /controls -->				
						</div>

	                	<div class="control-group">											
							<label class="control-label" for="username"> Module</label>
							<div class="controls">
								<input type="file" name="filenya" class="span2" id="username" >
							</div> <!-- /controls -->				
						</div>

						<div class="control-group">
							<input type="submit" value="SAVE" name="save" class="button btn btn-success btn-large" style="margin-right: 40px;">
						</div>

                	</form>


                </div>
                <!-- /widget-content --> 
                
              </div>
            </div>
          </div>
          <!-- /widget -->
          
          <!-- /widget -->
          
          <!-- /widget --> 
        </div>
        <!-- /span6 -->
        <div class="span8">

          <!-- /widget -->
          
          <!-- /widget -->
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Tabel Materi Pelajaran</h3>
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
                    <th> Action </th>
                    <th> Teacher </th>
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

							<td>
								<?php 
									$sql_child = mysql_query("SELECT * FROM tb_mapel WHERE id_parent = '$data_parent[0]'");
									while($data_child = mysql_fetch_array($sql_child)){
								?>
								<a href="index.php?param=subject&delete=<?php echo $data_child[0] ?>">DELETE</a><br>

								<?php
									}
								?>
							</td>

							<td>
								<?php 
									$sql_child = mysql_query("SELECT nama_lengkap FROM tb_pengguna INNER JOIN tb_mapel ON tb_pengguna.id_pengguna = tb_mapel.nama_teacher");
									while($data_child = mysql_fetch_array($sql_child)){
										$teacher = ($data_child['nama_lengkap']);
										echo "$teacher"."<br>";
								?>

								<?php
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