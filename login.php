<!DOCTYPE html>
<html lang="pt">
	<head>
		<title> Loggin </title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
		<?php
			
			include('cms/conexao.php');
			
			$login = $_POST['txtlogin'];
			$senha = $_POST['txtsenha'];
			
			$sql = "SELECT * FROM tblusuario WHERE login ='".$login."' AND senha = '".$senha."';";
			$resultado = mysql_query($sql);
			
			$linha = mysql_num_rows($resultado);
			if($linha > 0){
				
				$num=rand(100000,900000);
				session_start();
				$_SESSION['numLogin']=$num;
				$_SESSION['loginUsuario']=$login;
				$_SESSION['nomeUsuario']=$nomeResult;
				header('location:cms/index.php?num1='.$num);
			}elseif($linha < 1){
				
				?>
					<script>alert('Usuário ou senha incorretos!');window.location="index.php";</script>
				<?php
			}
		?>
	</body>
</html>