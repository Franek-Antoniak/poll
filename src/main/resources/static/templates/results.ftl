<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Poll Site" />
    <meta name="author" content="Franek Antoniak" />
    <title>Results Page</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/assets/homepage.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/css/homepage.css" rel="stylesheet" />
    <!-- Log out scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-5PGH8YYN7C"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-5PGH8YYN7C');
    </script>
</head>
<body class="d-flex flex-column min-vh-100">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand">Głosowanie</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link" aria-current="page" href="/">Głosuj</a></li>
                <li class="nav-item"><a class="nav-link" aria-current="page" href="/admin/results">Wyniki</a></li>
                <li class="nav-item"><a class="nav-link" aria-current="page" href="/admin/creator">Kreator</a></li>
                <li class="nav-item"><a class="nav-link" aria-current="page" href="/admin/settings">Ustawienia</a></li>
                <li class="nav-item"><a class="nav-link" aria-current="page" href="https://github.com/Franek-Antoniak" target="_blank">Github</a></li>
                <li class="nav-item dropdown">
            </ul>
            <a href="/perform_logout" class="btn btn-outline-dark">Wyloguj się</a>
        </div>
    </div>
</nav>
<!-- Header-->
<header class="bg-dark py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Wyniki głosowania</h1>
            <p class="lead fw-normal text-white-50 mb-0">Dostęp do strony jest możliwy tylko dla administratora</p>
        </div>
    </div>
</header>
<!-- Section-->
<section class="py-5" style="min-height: 285px;">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <!-- box-start -->
            <#list imageList as image>
            <div class="col mb-5">
                <div class="card h-100">
                    <a href="${image.path}">
                        <!-- Click badge-->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Click</div>
                        <!-- Product image-->
                        <img class="card-img-top" src="${image.path}" alt="..." />
                    <a/>
                    <!-- Product details-->
                    <div class="card-body p-4"> </div>
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark">Liczba głosów: ${image.votes}</a></div>
                    </div>
                </div>
            </div>
            </#list>
            <!-- box-end -->
        </div>
    </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark mt-auto">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Paco 2021</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
