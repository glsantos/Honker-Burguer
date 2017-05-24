<?php

	include('cms/conexao.php');
	
	$nomePromocao="";
	$precoPromocao="";
?>
<!DOCTYPE html>
<html lang="pt">
	<head>
		<title> Honker Burguer - Home </title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
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
		</header>
		<section>
			<div class="div_oculta">
				</div>
				<div class="div_linha"> </div>
				<div id="conteudo_page">
					<div id="titulo_banda">
						PROMOÇÃO IMPERDÍVEL
					</div>
					<div id="lanche_mes_corpo">
					<?php 	
						$sql = "CALL ExibePromocao;";
						$select = mysql_query($sql);
							
						while($rsconsulta = mysql_fetch_array($select)){
								
							$nomePromocao = $rsconsulta['Hamburguer'];
							$precoPromocao = $rsconsulta['Preço'];
							$fotoPromocao = $rsconsulta['Foto'];?>
					<div class="img_lanche_mes">
						<img class="fotopromocao" src="cms/<?php echo($fotoPromocao);?>"/>
					</div>
					<div class="info_lanche_mes">
						<div class="div_precoPromocao"></div>
						<div class="nome_lanche_mes">
							<p><?php echo($nomePromocao);?></p>
						</div>
						<div class="div_precoPromocao">
							<p>$<?php echo($precoPromocao);?></p>
						</div>
					</div>
					<?php } ?>
					</div>
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