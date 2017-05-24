<?php

	$nome="";
	$telefone="";
	$celular="";
	$email="";
	$sexo="";
	$profissao="";
	$homepage="";
	$linkfacebook="";
	$sugestao="";
	$botao="Salvar";
	
	include('cms/conexao.php');
	
	
	if(isset($_GET['btnsalvar'])){
		
		$nome = $_GET['txtnome'];
		$telefone = $_GET['txttelefone'];
		$celular = $_GET['txtcelular'];
		$email = $_GET['txtemail'];
		$profissao = $_GET['txtprofissao'];
		$sexo = $_GET['optsexo'];
		$homepage = $_GET['txthomepage'];
		$linkfacebook = $_GET['txtlinkfacebook'];
		$sugestao = $_GET['txtsugestoes'];
		
		if($nome == null || $celular == null || $email == null || $profissao == null || $sexo == null){
			?>
				<script> alert('Preencha todos os campos'); </script>
			<?php
		}else{
			$sql="insert into tblfaleConosco (nomeCliente,telefoneCliente,celularCliente,emailCliente,profissaoCliente,sexoCliente,homePageCliente,linkFbCliente,sugestaoCliente)";
			$sql= $sql . "values ('".$nome."','".$telefone."','".$celular."','".$email."','".$profissao."','".$sexo."','".$homepage."','".$linkfacebook."','".$sugestao."');";
		
			mysql_query($sql);
			
			header('location:fale_conosco.php');
		}
	}
?>

<!DOCTYPE html>
<html lang="pt">
	<head>
		<title> Honker Burguer - Fale Conosco </title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript">
			
			function validar(caracter,typeblock){
				
				if(window.event){
					var letra = caracter.keyCode;
				}
				else if(caracter.which){
					
					var letra = caracter.which; 
				}
				
				if(typeblock=='n'){
					
					if(letra>=48 && letra<=57){
						return false;
					}
				}else if(typeblock=='c'){
					
					if(letra<48 || letra>57){
						if(letra != 8 && letra != 127 && letra != 0){
							return false;
						}
					}
				}
			}
		</script>
	</head>
	<body>
		<header>
			<div id="cabecalho">
				<div class="logo_site">
					<img alt="logo" class="site_logo" src="imagens/logo.png" />
				</div>
				<div id="menu_horizontal">
					<ul class="lstmenu_horizontal">
						<li><a href="index.php">Home</a></li>
						<li><a href="promocao.php">Promoções</a></li>
						<li><a href="lanche_mes.php">Lanche do Mês</a></li>
						<li><a href="nossos_ambientes.php">Nossos Ambientes</a></li>
						<li><a href="banda_destaque.php">Banda em Destaque</a></li>
						<li><a href="sobre_nos.php">Sobre nós</a></li>
						<li><a href="fale_conosco.php">Fale Conosco</a></li>
					</ul>
				</div>
				<div class="area_login">
					<form name="frmlogin" method="post" action="login.php">
						<table class="frm_login">
							<tr>
								<td class="inserir_campo">Usuário:</td>
								<td class="inserir_campo">Senha:</td>
							</tr>
							<tr>
								<td> 
									<input class="input_usuario" type="text" name="txtlogin" required/>
								</td>
								<td> 
									<input class="input_senha" type="password" name="txtsenha" required/>
								</td>
								<td>
									<input class="btn_ok" type="submit" name="btn_logar" value="Ok"/>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</header>
		<section>
			<div class="div_oculta">
			</div>
			<div class="div_linha"> </div>
			<div id="div_conteudo">
				<div class="div_linha"> </div>
				<div id="div_fale_conosco">
					<form name="frmfale_conosco" method="get" action="fale_conosco.php">
						<table class="frmFaleConosco">
							<tr>
								<td colspan="2">
									<div class="tituloFormulario">
										Fale Conosco
									</div>
								</td>
							</tr>
							<tr>
								<td class="nome_campos">
									Nome*:
								</td>
								<td> <input value="<?php $nome; ?>" onkeypress="return validar(event,'n');" class="input_campo" type="text" name="txtnome" /> </td>
							</tr>
							<tr>
								<td class="nome_campos">
									Telefone:
								</td>
								<td> <input value="<?php  $telefone; ?>" pattern="[0-9]{3} [0-9]{4}-[0-9]{4}" maxlength="14" class="input_campo" type="text" name="txttelefone" /> </td>
							</tr>
							<tr>
								<td class="nome_campos">
									Celular*:
								</td>
								<td> <input value="<?php $celular; ?>" pattern="[0-9]{2} [0-9]{5}-[0-9]{4}" maxlength="15" class="input_campo" type="text" name="txtcelular" /> </td>
							</tr>
							<tr>
								<td class="nome_campos">
									Email*:
								</td>
								<td> <input value="<?php $email; ?>" class="input_campo" type="email" name="txtemail" /> </td>
							</tr>
							<tr>
								<td class="nome_campos">
									Profissão*:
								</td>
								<td> <input value="<?php $profissao; ?>" class="input_campo" type="text" name="txtprofissao" maxlength="255" /> </td>
							</tr>
							<tr>
								<td class="nome_campos">
									Sexo*: 
								</td>
									<td> 
									<input  type="radio" name="optsexo" value="F" />Feminino
									<input type="radio" name="optsexo" value="M" />Masculino
								</td>
							</tr>
							<tr>
								<td class="nome_campos">
									Home Page:
								</td>
								<td> <input value="<?php $homepage; ?>" class="input_campo" type="text" name="txthomepage" maxlength="255"/> </td>
							</tr>
							<tr>
								<td class="nome_campos">
									Link no Facebook:
								</td>
								<td> <input value="<?php $linkfacebook; ?>" class="input_campo" type="text" name="txtlinkfacebook" maxlength="255" /> </td>
							</tr>
							<tr>
								<td class="nome_campos">
									Sugestões/Críticas:
								</td>
								<td> <textarea class="txtarea" name="txtsugestoes" cols="80" rows="10"> </textarea> </td>
							</tr>
							<tr>
								<td> 
									<input class="btnresetsalva" type="submit" name="btnsalvar" value="<?php echo($botao); ?>" />
								</td>
								<td>
									<input class="btnresetsalva" type="reset" name="btnlimpar" value="Limpar" />
								</td>
							</tr>
							<tr>
								<td>
									<span>*Campos Obrigatórios</span>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="div_oculta">
			</div>
			<div class="facebook_icon">
				<a target="_blank" href="https://www.facebook.com/"><img alt="icone_facebook" class="icon_social" src="imagens/facebook_icon.png"/></a>
			</div>
			<div class="twitter_icon">
				<a target="_blank" href="https://twitter.com/"><img  alt="icone_twitter" class="icon_social" src="imagens/twitter_icon.png"/></a>
			</div>
			<div class="youtube_icon">
				<a target="_blank" href="https://www.youtube.com/"><img alt="icone_youtube" class="icon_social" src="imagens/youtube_icon.png"/></a>
			</div>
		</section>
		<footer>
			<div class="div_oculta_rodape"></div>
			<div id="rodape">
				<div class="div_endereco">
					<table class="tbl_endereco">
						<tr>
							<td>
								Av. Bluffington, nº666.
							</td>
						</tr>
					</table>
				</div>
				<div class="logo">
					<img alt="" class="logo" src="imagens/logo.png"/> 
				</div>
				<div class="div_sac">
					<table class="tbl_sac">
						<tr>
							<td>
								sac@honkerburguer.com.br
							</td>
							<td>
								<a target="_blank" href="https://www.facebook.com/"><img alt="icone_facebook" class="icon_social_rodape_facebook" src="imagens/facebook_icon.png"/></a>
								<a target="_blank" href="https://twitter.com/"><img  alt="icone_twitter" class="icon_social_rodape_twitter" src="imagens/twitter_icon.png"/></a>
								<a target="_blank" href="https://www.youtube.com/"><img alt="icone_youtube" class="icon_social_rodape_youtube" src="imagens/youtube_icon.png"/></a>
							</td>
						</tr>
						<tr>
							<td>
								Criado por: Gabriel Santos.
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="div_oculta_rodape_esquerdo"> </div>
		</footer>
	</body>
</html>