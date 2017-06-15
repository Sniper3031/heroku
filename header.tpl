<!DOCTYPE html>

<html lang="en">

  <head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>BuscaConciertos</title>

    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">

    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    

    <link rel="stylesheet" type="text/css" href="/static/css/jquery.bxslider.css">

    <link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="/static/css/animate.css">

    <link rel="stylesheet" type="text/css" href="/static/css/style.css">

    <link rel="icon" href="http://www.pngall.com/wp-content/uploads/2016/06/Earth-Free-Download-PNG.png"/>

    <!-- =======================================================

        Theme Name: Baker

        Theme URL: https://bootstrapmade.com/baker-free-onepage-bootstrap-theme/

        Author: BootstrapMade.com

        Author URL: https://bootstrapmade.com

    ======================================================= -->

  </head>

  <body>

	<script>

  function play(){

       var audio = document.getElementById("audio");

       audio.play();

                 }

	</script>



    <div class="loader"></div>

    <div id="myDiv">

    <!--HEADER-->

    <div class="header">

      <div class="bg-color">

        <header id="main-header">

        <nav class="navbar navbar-default navbar-fixed-top">

          <div class="container">

            <div class="navbar-header">

              <button onclick="play()" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">

		<audio id="audio" src="aud/1.mp3"></audio>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

              </button>

                <a class="navbar-brand" href="#">Busca<span class="logo-dec">Conciertos</span></a>

            </div>

            <div class="collapse navbar-collapse" id="myNavbar">

              <ul class="nav navbar-nav navbar-right">
		
		<li class="active"><a onclick="play()"href="/">Home</a></li>
                <li class="active"><a onclick="play()"href="/conciertos">Buscar</a></li>
		<li class="active"><a onclick="play()"href="/musica">Música</a></li>
		<li class="active"><a onclick="play()"href="/info">Info</a></li>
              </ul>

            </div>
</header>
