
<?php
include "./src/database.php";
//get the products data from database
$query = "
SELECT
Id,
Name,
Category,
Price,
Description,
Image
FROM PRODUCTS
"; 
$statement = $connection -> prepare ($query);
$statement -> execute ();
$results = $statement-> get_results
$products = array ();
while ($row = results -> fetch_assoc ()) {
    array_push($products. $row);    
}
?> 

<!DOCTYPE html>
<html>

<?php
//include head section
include "./components/head.php";
?>

<?php
// include header section
include "./components/header.php";
?>


<h2>
    <header class="second-header">
    <a ="Main.html">Main </a> <br>
    <a ="Equipment.html">Equipment</a>
    <a ="Woman.html">Woman</a>
    <a ="Men.html">Man</a>
    <a ="Kids.html">Kids</a>
    <a ="Discounts.html"> Discounts</a>
</h2>
    <div class="banner"> 
    <img src="images/2 banner products-18-18.jpg" height="507.5">

    <main>
        <section class="Products">
            <h2>Products</h2>

    <?php
    // output products
    foreach ($products as $p) {
        $image =$p ["image"];
        $name= $p ["name"];
        $description= $p ["description"];
        $price= $p ["price"];
        echo "
        <div class='card'>
        <img class= 'card-image' src='images/$image'>
        <div 
        
        <img src="images/$p["image]">
        </div>
        ';
    }        

    </main>

    <div class= "Text"> 
        <p>Elevate your performance with the Progear Hub, designed for athletes and fitness enthusiasts who demand the best. Whether you're hitting the gym, training outdoors, or competing at the highest level, this product is engineered to support your active lifestyle. Made with top-quality materials, it offers durability, comfort, and style all in one.

        </br> With highlighted features, the prodcts are perfect for all sports or activities. Its additional features like lightweight design, breathability, water resistance, etc. ensures you stay at your best, no matter the challenge. </p>
    
    </div> </br>
        
        
    <div class="slider-container">  
        <img
          class="slider-item"
          src="images/Imagenes-12.jpg"
        />
        <img
          class="slider-item"
          src="images/Imagenes-13.jpg"
        />
        <img
          class="slider-item"
          src="images/Imagenes-14.jpg"
        />

        <img
          class="slider-item"
          src="images/imagenes-15.jpg"
          
        /> </br>

    </div>  

    <div class="product b">

        <button class="product" name="product button">See More</button>
        <button class="product" name="product button">See More</button>
        <button class="product" name="product button">See More</button>
        <button class="product" name="product button">See More</button>

    </div>

    <footer class="main-footer">
        <nav class="social">
            <a href="https://facebook.com">
                <i class="fa-brands fa-facebook"></i>
            </a>
            <a href="https://instagram.com">
                <i class="fa-brands fa-square-instagram"></i>
            </a>
            <a href="https://tiktok.com">
                <i class="fa-brands fa-tiktok"></i>
            </a>
        </nav>
        <p class="copyright">&copy; Pro Grear Hub 2025. All rights reserved.</p>
    </footer>
</body>

</html>


