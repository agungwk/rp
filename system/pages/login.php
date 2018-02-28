<?php 
	if(isset($_POST['login'])){
		$email = $_POST['email'];
		$password = $_POST['password'];
		$sql = mysql_query("SELECT * FROM tb_pengguna WHERE email = '$email' AND password = '$password'");
		$cek_jumlah = mysql_num_rows($sql);
		$data_pengguna = mysql_fetch_array($sql);
		if($cek_jumlah < 1){
			echo "<script>alert('Your email and password combination is Wrong')</script>";
		}else{
			$_SESSION['email'] = $data_pengguna['email'];
			$_SESSION['jenis_user'] = $data_pengguna['jenis_user'];
			echo "<script>document.location.href='index.php'</script>";
		}
	}
?>

<div class="row">
	
		<div class="account-container">
		
		<div class="content clearfix">
			
			<form action="#" method="post">
			
				<h1>Member Login</h1>		
				
				<div class="login-fields">
					
					<p>Please provide your details</p>
					
					<div class="field">
						<input type="text" id="username" name="email" value="" placeholder="Email" class="login username-field" required="email" />
					</div> <!-- /field -->
					
					<div class="field">
						<input type="password" id="password" name="password" value="" placeholder="Password" class="login password-field" required="password" />
					</div> <!-- /password -->
					
				</div> <!-- /login-fields -->
				
				<div class="login-actions">
					
					<span class="login-checkbox">
						<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
						<label class="choice" for="Field">Keep me signed in</label>
					</span>
					<input type="submit" value="Sign In" class="button btn btn-success btn-large" name="login">				
					
				</div> <!-- .actions -->			
			</form>
			
		</div> <!-- /content -->		
	</div> <!-- /account-container -->		
</div>
<div class="login-extra">
	<a href="#">Reset Password</a> |
	<a href="index.php?param=signup">Register</a> |
	<a href="/etraining/index.php">Back To Home</a>
</div> <!-- /login-extra -->
<script src="config/js/signin.js"></script>
</body>