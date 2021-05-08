<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/title_icon.svg" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;400;700&family=Open+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="font/flaticon.css">
    <link rel="stylesheet" href="css/home.css?v=<?php echo time(); ?>">
    <script src="https://kit.fontawesome.com/68bbd08d56.js" crossorigin="anonymous"></script>
    <title>Musicoholic | Play your beat</title>
</head>

<body>
    <nav class="nav">
        <div class="nav__title">
            <div class="nav__title--logo"><img src="img/title_icon.svg" alt="Musicoholic icon"></div>
            <div class="nav__title--tag">Musicoholic</div>
        </div>
        <ul class="nav__list">
            <li class="nav__list--item"> <a href="#about">ABOUT</a></li>
            <li class="nav__list--item"> <a href="register.php#signup">SIGNUP</a></li>
            <li class="nav__list--item"> <a href="register.php#login">LOGIN</a></li>
        </ul>
    </nav>
    <header>
        <div class="header">
            <div class="header__cta">
                <div class="header__heading">Play Your<br>Own Beat.</div>
                <a href="register.php#signup" class="btn">Get started for free</a>
            </div>

            <div class="header__bg">
                <img src="img/herobg1.png" alt="Girl listening to music">
            </div>
        </div>
    </header>

    <section class="about" id="about">
        <div class="about__text">
            <h1 class="heading--1">What's on Musicoholic?</h1>

            <div class="about__text--group">
                <div class="heading--2">Music</div>
                <p class="text">There are tons of songs on Musicoholic. Play your favourites, discover new tracks
                    and build the perfect collection.</p>
            </div>
            <div class="about__text--group">
                <div class="heading--2">Playlist</div>
                <p class="text">You'll find readymade playlists to match your mood put together by others who love
                    music.</p>
            </div>
            <div class="about__text--group">
                <div class="heading--2">It's easy</div>
                <p class="text">You just need to search or browse your favourites by songs, mood, album and artist.
                </p>
            </div>

        </div>

        <div class="about__graphic">
            <div class="about__graphic--item about__graphic--item1"><img alt="" src="img/about_img1.jpg"></div>
            <div class="about__graphic--item about__graphic--item2"><img alt="" src="img/about_img2.jpg"></div>
            <div class="about__graphic--item about__graphic--item3"><img alt="" src="img/about_img3.jpg"></div>
            <div class="about__graphic--item about__graphic--item4"><img alt="" src="img/about_img4.jpg"></div>
            <div class="about__graphic--item about__graphic--item5"><img alt="" src="img/about_img5.jpg"></div>
            <div class="about__graphic--item about__graphic--item6"><img alt="" src="img/about_img6.jpg"></div>
        </div>
    </section>

    <section class="cta">
        <div class="cta__graphic">
            <img src="img/devices.png" alt="multiple devices">
        </div>
        <div class="cta__text">
            <h1 class="heading--1">One account. Listen everywhere.</h1>
            <div class="heading--2">Create your free account today.</div>
            <a href="register.php#signup" class="btn">Get started for free</a>
        </div>

    </section>

    <footer class="footer">
        <div class="footer__icon">
            <i class="fab fa-twitter foot-icon"></i>
            <i class="fab fa-facebook-f foot-icon"></i>
            <i class="fab fa-instagram foot-icon"></i>
            <i class="fas fa-envelope foot-icon"></i>
        </div>
        <p>© Copyright 2020 Musicoholic</p>
    </footer>


    <!-- <script>
            function toggleScrollClass() {
                var nav = document.querySelectorAll('.nav')[0];
                window.pageYOffset > 0 ? nav.classList.remove('fade') : nav.classList.add('fade')
            }
            window.addEventListener('scroll', function () {
                toggleScrollClass()
            });
            toggleScrollClass();
        </script> -->

    <script>
        var prevScrollpos = window.pageYOffset;
        window.onscroll = function() {
            var currentScrollPos = window.pageYOffset;
            if (prevScrollpos > currentScrollPos) {
                document.querySelector(".nav").style.top = "0";
            } else {
                document.querySelector(".nav").style.top = "-100%";
            }
            prevScrollpos = currentScrollPos;
        }
    </script>

</body>

</html>