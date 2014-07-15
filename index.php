<!--Main PAGE-->

<?php


	require 'sqlconfig.php';
	if($_GET['id'])
	{
		$id = $_GET['id'];
		
	}
	else
		$id = 1;
	$start = 0+4*($id-1);

?>

<!DOCTYPE html>
<html>
<head>
	
	<link id="data-uikit-theme" rel="stylesheet" href="css/uikit.docs.min.css">
	<link rel="stylesheet" href="css/docs.css">


</head>

<body class="tm-background">
	
	<nav class="tm-navbar uk-navbar uk-navbar-attached">
            <div class="uk-container uk-container-center">

                <a class="uk-navbar-brand uk-hidden-small" href="index.php"><img class="uk-margin uk-margin-remove" src="images/logo.jpg" width="110" height="70" title="UIkit" alt="UIkit"></a>

                <ul class="uk-navbar-nav uk-hidden-small">
                    <li class="uk-active"><a href="index.php">Home</a></li>
                    
					
                </ul>

        <!--        <a href="#tm-offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas></a>-->

                <div class="uk-navbar-brand uk-navbar-center uk-visible-small"><img src="images/logo.jpg" width="190" height="100" title="UIkit" alt="UIkit"></div>

            </div>
        </nav>

 <div class="tm-middle">
	 <div class="uk-container uk-container-center">
		<?php 
		$dbc = mysqli_connect($db_host, $db_user, $db_pw, '9gag')
				or die('Error connecting to database');
		$pagequery = "SELECT id FROM entries";
		$result = mysqli_query($dbc,$pagequery)
				or die('Error querying');
		$rowcount=mysqli_num_rows($result);
	
		$limit = $rowcount/4;
		
		$limit = round($limit, 0, PHP_ROUND_HALF_UP); 
		
		$new = $id + 1;
		$old = $id - 1;
		if($id!=1)
			echo "<a href='index.php?id=$old'><button class='uk-button'>Previous page</button></a> ";
		if($id<=$limit-1)
			echo "<a href='index.php?id=$new'><button class='uk-button'>Next page</button></a>";
		
			
		$query = "SELECT * FROM entries ORDER BY id DESC LIMIT $start,4;";
		
		$result = mysqli_query($dbc,$query)
				or die('Error querying');
		
		while($row = mysqli_fetch_array($result))
		{
			echo '<h1 class="uk-article-title">'.$row['heading'].'</h1>';
			echo '<img src="images/'.$row['link'].$row['extn'].'">';
			echo '<hr class="uk-article-divider">';
		}
		
?>
                            
     </div>
</div>

</html>
