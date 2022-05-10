<!DOCTYPE html>

<html lang="de">

	<head>
		<meta charset="UTF-8">
		<title>shop</title>
		<style>
            body{
                margin: 0;
            }
            #background{
                height: 100%;
                background: url("Image/1.jpg") no-repeat 0 80px;
                background-size: 100%;
            }
            #header{
                background: red;
                height: 40px;
                color: black;
                padding: 20px 20px;
            }
            h1{
                margin: 0;
            }
            a{
                text-decoration: none;
                color: black;
            }
            h3{
                text-align: center;
            }
            #products{
                padding: 20px 10px;

            }
            .product-div{
                /*height: 70px;*/
                padding: 10px 30px;
                display: flex;
                justify-content: space-around;
                align-items: center;
                border-bottom: 2px dashed red;
                border-left: 2px dashed red;
                border-right: 2px dashed red;

            }
            .product{
                height: 20px;
                padding: 20px;
                border: 2px solid black;
                width: 200px;
            }
            .img-product{
                width: 180px;
                height: 180px;
                border: 1px solid black;
            }
            .price{
                color: red;
                border: 2px solid red;
                padding: 10px 20px;
                height: 17px;
                width: 100px;
                text-align: center;
            }
            .btn-buy{
                display:inline-block;
                border: 3px solid black;
                padding: 10px 20px;
                border-radius: 20px;
                height: 40px;
                line-height: 40px;
            }
            .product-div:first-child{
                border-top:2px dashed red;
            }
		</style>
	</head>

	<body>

		<div id="header">
			<h1>Mary cupcakes OnlineShop</h1>
		</div>

		<div id="products">

            <?php

         
            include "verbindung.php";
            $connect=OpenCon();
            $query="select * from products";
            $result=$connect->query($query);

            if($result){

                foreach($result as $product ){?>

                    <div class="product-div">
                        <a href="product.php?id=<?php echo $product["artikelnummer"]; ?>" >
                            <h3><?php echo $product["bezeichnung"]; ?></h3>
                            <img src="img/<?php echo $product["img"]; ?>" class="img-product" >
                        </a>
                        <span class="price"><?php echo $product["preis"]; ?></span>
                        <a href="" class="btn-buy">kaufen</a>
                        
                    </div>
                        
            <?php
                }
            }
            ?>


        </div>
      <form action="login.php" method="post">
        
      </form>
       
	</body>

</html>

