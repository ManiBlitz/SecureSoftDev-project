<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link href="${pageContext.request.contextPath}/css-entities/bootstrap-3.2.0-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Abel" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css-entities/style.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <div id="topHeaderRow">
                <div class="container">
                    <nav class="navbar navbar-inverse" role="navigation">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <span class="navbar-text">Welcome to the <strong>Book Store</strong></span>
                            </div>
                            <ul class="nav navbar-nav pull-right">
                                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>            
                            </ul>
                        </div>
                    </nav>
                </div>   <!-- end topHeaderRow -->

                <div id="logoRow" class="container">
                    <h1 class="pull-left">eMarket</h1> 

                    <form class="form-inline pull-right" role="search">
                        <label class="sr-only" for="search">Search</label>
                        <input class="form-control" type="text" placeholder="Search" name="search">

                        <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span></button>
                    </form> 
                </div>  <!-- end logoRow -->

                <div id="mainNavigationRow" >
                    <div class="container">
                        <nav class="navbar navbar-default">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="assign2-index.html">Home</a></li>
                                <li><a href="library.jsp">Books</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>  <!-- end mainNavigationRow -->
        </header>

        <div class="container">
            <div class="card" style="width: 20rem;">
                <div class="card-img-top">
                    <img class="d-block w-100" src="css-entities/img/front.jpg" alt="Second slide">
                </div>

                <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </body>
</html>