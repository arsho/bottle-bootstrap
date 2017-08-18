<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Bottle web project template">
	<meta name="author" content="datamate">
	<link rel="icon" href="/static/favicon.ico">		
	<title>Project</title>
	<link rel="stylesheet" type="text/css" href="/static/bootstrap.min.css">
	<script type="text/javascript" src="/static/jquery.min.js"></script>
	<script type="text/javascript" src="/static/bootstrap.min.js"></script>	
</head>
<body>
	<!-- Static navbar -->
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Project</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="../navbar/">Home</a></li>
						<li><a href="./">Github</a></li>
						<li><a href="../navbar-fixed-top/">Stackoverflow</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="jumbotron">
			<h2>Welcome from {{data["developer_name"]}}</h2>
				<p>This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.</p>
			</div>
		</div>
		<!--./row-->
		<div class="row">
			<hr>
			<footer>
				<p>&copy; 2017 {{data["developer_organization"]}}.</p>
			</footer>			
		</div>
	</div> 
	<!-- /container -->
</body>
</html>