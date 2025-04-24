
<?php
include 'src/database.php';

// get the products data from database
$query = "
SELECT
id,
name,
category,
description,
price,
image
FROM PRODUCTS
";
$statement = $connection -> prepare($query);
$statement -> execute();
$result = $statement -> get_result();
$products = array();
while( $row = $result -> fetch_assoc() ) {
    array_push( $products, $row );
}
?>
<!DOCTYPE html>
<html>

<?php
// include head section
include "./components/head.php";
?>

<?php include "./components/header.php"; ?>

<h2>
        <header class="second-header">
        <a href="Main.html">Main </a> <br>
        <a href="Equipment.html">Equipment</a>
        <a href="Woman.html">Woman</a>
        <a href="Men.html">Man</a>
        <a href="Kids.html">Kids</a>
        <a href="Discounts.html"> Discounts</a>
    </h2>
        <div class="banner"> 
        <img src="images/Banner-1-11.jpg" height="437.2">

<body>

    <main>
        <section class="products">
            <?php 
            // output products
            foreach( $products as $p ) {
                $name = $p["name"];
                $category= $p["category"];
                $description = $p["description"];
                $price = $p["price"];
                $image = $p["image"];
                echo "
                <div class='card'>
                    <img class='card-image' src='./images/$image'>
                    <div class='card-content'>    
                    <h4 class='product-name' > Name: $name</h4>
                        <h5 class='product-price' >Price: $$price</h5>
                        <p>$description</p>
                    </div>
                </div>
                ";
            }
            ?>
        </section>
    </main>
    <?php include "./components/footer.php"; ?>
</body>

</html>


