<!DOCTYPE html>
<html lang="id" dir="ltr">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Test</title>
	<script src="https://kit.fontawesome.com/a5384ee6a2.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;400;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,900;1,300;1,400;1,900&display=swap" rel="stylesheet">
	<link href="slick/slick.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
</head>
<body class="nojs front">
	<header>
		<div id="headbg">
			<div id="topbar">
				<div class="max flx">
					<?php include_once('inc/socbar.php');?>
					<div id="topmenubox">
						<?php include_once('inc/topmenu.php');?>
						<div id="searchbig">
							<i class="fas fa-search ico on"></i>
							<form id="searchfrm">
								<fieldset>
									<input type="text" id="searchtxt" name="search" placeholder="Cari">
									<input type="submit" id="searchbut">
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div id="mainhead">
				<div class="max">
					<i class="fas fa-bars ico on"></i>
					<a href="index.php" class="logo big" id="biglogo"><img src="img/fhui.jpg" alt="Fakultas Hukum Universitas Indonesia"></a>
					<a href="index.php" class="logo mob" id="moblogo"><img src="img/fhui-small.jpg" alt="Fakultas Hukum Universitas Indonesia"></a>
					<a href="dalam.php" class="logo" id="mobtema"><img src="img/tema.jpg" alt="Dirgahayu Republik Indonesia"></a>
					<i class="fas fa-search ico on"></i>
					<ul class="menu mainmenu" id="headmenu"></ul>
				</div>
			</div>
			<?php include_once('inc/mainmenu.php');?>
		</div>
		<div class="shd top"></div>
	</header>
