<?php
	require_once('cms/conexao.php');
	
	$hamburguer = "";
	$foto = "";
	$preco = "";
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
			<div id="galeria">
				<div id="buttons">
					<a href="#" class="prev">&laquo;</a>
					<a href="#" class="next">&raquo;</a>
				</div>
				
				<ul>
					<li>
						<span>
							O vídeo fornece uma maneira 
							poderosa de ajudá-lo a provar seu argumento.
							Ao clicar em Vídeo Online, 
							você pode colar o código de 
							inserção do vídeo que deseja adicionar.
						</span>
						
						<img alt="slider_03" src="imagens/slider_03.jpg"/>
					</li>
					<li>
						<span>
							O vídeo fornece uma maneira 
							poderosa de ajudá-lo a provar seu argumento.
							Ao clicar em Vídeo Online, 
							você pode colar o código de 
							inserção do vídeo que deseja adicionar.
						</span>
						
						<img alt="slider02" src="imagens/slider_02.jpg"/>
					</li>
					<li>
						<span>
							O vídeo fornece uma maneira 
							poderosa de ajudá-lo a provar seu argumento.
							Ao clicar em Vídeo Online, 
							você pode colar o código de 
							inserção do vídeo que deseja adicionar.
						</span>
						
						<img alt="slider01" src="imagens/slider_01.jpg"/>
					</li>
					
					<li>
						<span>
							O vídeo fornece uma maneira 
							poderosa de ajudá-lo a provar seu argumento.
							Ao clicar em Vídeo Online, 
							você pode colar o código de 
							inserção do vídeo que deseja adicionar.
						</span>
						
						<img alt="slider_04" src="imagens/slider_04.jpg"/>
					</li>
				</ul>
			</div>
			<div id="div_conteudo">
				<div class="div_linha"> </div>
				<div id="menu_vertical">
					<ul class="lstmenu_vertical">
						<li>Item 1</li>
						<li>Item 2</li>
					</ul>
				</div>
				<div class="div_divisor"> </div>
				<div id="div_produtos">
					<div class="espacamento_horizontal">Produtos</div>
					<?php 
						
						$sql = "SELECT * FROM vw_exibeprodutositehome;";
						
						$result = mysql_query($sql);
						
						while($rsconsulta = mysql_fetch_array($result)){
							
							$hamburguer = $rsconsulta['Produto'];
							$foto = $rsconsulta['FotoProduto'];
							$preco = $rsconsulta['Preço'];
					?>
					<div class="produto">
						<div class="img_produto">
							<img alt="icone_produto" src="cms/<?php echo($foto)?>" class="icon_produto"/>
						</div>
						<div class="nome_produto">
							<span><?php echo($hamburguer);?></span>
						</div>
						<div class="descricao_produto">
							Carne bovina ao molho barbecue
						</div>
						<div class="preco_produto">
							Preço: <span>R$ <?php echo($preco)?></span>
						</div>
						<div class="detalhes_produtos">
							Detalhes 
						</div>
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