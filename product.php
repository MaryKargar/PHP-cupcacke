<?php
if (isset($_GET["id"])){
include "verbindung.php";
$id=$_GET["id"];
$conn = OpenCon();
$sqlquery = "SELECT * FROM products WHERE artikelnummer=$id;";
$result = mysqli_query($conn , $sqlquery);
while ($row=mysqli_fetch_assoc($result)){?>

    <h2><?php echo $row["herstell"]; ?></h2>
   <img src="img/<?php echo $row["img"]; ?> " width="300" height="300"> <br>
    <div> <?php echo $row["bezeichnung"]; ?></div>
    <div><?php echo $row["preis"]; ?></div> 
    <div> <?php echo $row["beschreibung"]; ?></div>
    <button href="">kaufen</button>
<?php
}
CloseCon($conn);
}
else{
	echo "Fehler!";
}


?>

