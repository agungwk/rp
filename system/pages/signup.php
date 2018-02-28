<?php 
	if(isset($_POST['register'])){
		$fullname = $_POST['fullname'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$c_password = $_POST['confirm_password'];
		$phone = $_POST['phone'];
		$jenis = $_POST['jenis_user'];

		if($password != $c_password){
			echo "<script>alert('Your password doesnt match!')</script>";
		}else{
			$sql = mysql_query("INSERT INTO `tb_pengguna` (`id_pengguna`, `email`, `nama_lengkap`, `telephone`, `password`, `jenis_user`) VALUES (NULL, '$email', '$fullname', '$phone', '$password', '$jenis');");
			if($sql){
				echo ("<script>alert('You Have Successfully Registered!')</script>");
				echo ("<script>document.location.href='index.php'</script>");
			}
		}


	}

?>
<div class="account-container register">
	
	<div class="content clearfix">
		
		<form action="#" method="post">
		
			<h1>Account Sign Up</h1>			
			
			<div class="login-fields">
				
				
				<div class="field">
					<label for="firstname">First Name:</label>
					<input type="text" id="fullname" name="fullname" value="" placeholder="Full Name" class="login" required="nama_lengkap" />
				</div> <!-- /field -->
								
				
				<div class="field">
					<label for="email">Email Address:</label>
					<input type="text" id="email" name="email" value="" placeholder="Email" class="login" required="email" />
				</div> <!-- /field -->

								
				
				<div class="field">
					<label for="phone">Phone Number:</label>
					<input type="text" id="phone" name="phone" value="" placeholder="Phone Number" class="login" required="telephone" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">Password:</label>
					<input type="password" id="password" name="password" value="" placeholder="Password" class="login" required="password" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="confirm_password">Confirm Password:</label>
					<input type="password" id="confirm_password" name="confirm_password" value="" placeholder="Confirm Password" class="login" required="password" />
				</div> <!-- /field -->

				<div class="field">
					<label for="confirm_password">Confirm Password:</label>
					<select  name="jenis_user" class="own_select" required="Pilih Student Atau Teacher">
						<option value="">- SELECT USER ROLE -</option>
						<option value="Student">Student</option>
						<option value="Teacher">Teacher</option>
					</select>
				</div>

			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" required="checkbox" />
					<label class="choice" for="Field">Agree with the Terms & Conditions.</label>
				</span>
						
				<input type="submit" name="register" value="Register" class="button btn btn-primary btn-large">			
				
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->

<style type="text/css">
	.own_select{
		font-family: 'Open Sans';
		font-size: 13px;
		color: #8e8d8d;
		background-color: #fdfdfd;
		width: 100%;
		height: 35px;
		display: block;
		margin: 0;
		box-shadow: inset 2px 2px 4px #f1f1f1;
	}
</style>


<!-- Text Under Box -->
<div class="login-extra">
	Already have an account? <a href="index.php?param=login">Login to your account</a>
</div> <!-- /login-extra -->
