<!DOCTYPE html>
<html>

<?php
//include head section
include"components/head.php";
?>

<body>
    <header class="main-header">
        <a href="index.html">
            <img class="logo" src="images/Icon-logo-10.png">
        </a>
        <button type="button" class="menu-button">
            <i class="fa-solid fa-bars"></i>
        </button>
        <form id="search">
            <input type="search" name="search" placeholder="type your search">
            <button type="submit" name="search-button">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <nav class="main-navigation">
            <a href="index.html">
                <!-- <i class="fa-solid fa-house"></i> -->
                Home
            </a>
            <a href="products.html">Products</a>
            <a href="about.html">About</a>
            <a href="contact.html">Contact</a>
        </nav>
    </header>
    <main>
        <section class="contact">
            <h1>Contact Us</h1>
            <h2>Our Location</h2>
            <iframe id="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.3017990638295!2d151.1926181765805!3d-33.88188041973795!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae2919221809%3A0x632437ffb309dcce!2s7%20Kelly%20St%2C%20Ultimo%20NSW%202007!5e0!3m2!1sen!2sau!4v1743580695994!5m2!1sen!2sau" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            <h2>Get in touch</h2>
            <form id="contact-form">
                <label for="name">Your name</label>
                <input type="text" id="name" name="name" placeholder="Gina Marcela">
                <label for="email">Your email address</label>
                <input type="email" id="email" name="email" placeholder="ginamarcela@example.com">
                <label for="message">Your message</label>
                <textarea id="message" name="message" cols="30" rows="5" placeholder="Hi!"></textarea>
                <button type="reset">Cancel</button>
                <button type="submit">Submit</button>
            </form>
        </section>
    </main>
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