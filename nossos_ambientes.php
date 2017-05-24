<?php
	
	include('cms/conexao.php');
?>
<!DOCTYPE html>
<html lang="pt">
	<head>
		<title> Honker Burguer - Home </title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/slide.js"></script>
	</head>
	<body>
		<header>
			<div id="cabecalho">
				<div class="logo_site">
					<img alt="logocabecalho" class="site_logo" src="imagens/logo.png" />
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
			<div id="conteudo_page">
				<div id="titulo_banda">
					Nossos Restaurantes
				</div>
				<div class="corpo_banda">
					<?php
						
						$sql = "SELECT * FROM vw_exibesiteambientes";
						$select = mysql_query($sql);
						
						while($rsconsulta = mysql_fetch_array($select)){
					?>
					<div class="titulo_ambiente">
						<p><?php echo($rsconsulta['ruaRestaurante']);?>, nº<?php echo($rsconsulta['numeroRestaurante']);?></p>
					</div>
					<div class="restaurante_img">
						<img alt="ambiente01" src="cms/<?php echo($rsconsulta['fotoRestaurante']);?>" class="img_restaurante"/>
					</div>
					<?php }?>
				</div>
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
					<img alt="logo_rodape" class="logo" src="imagens/logo.png"/> 
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