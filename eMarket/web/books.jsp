<%-- 
    Document   : books
    Created on : Oct 1, 2017, 11:28:16 PM
    Author     : AlexPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/css-entities/bootstrap-3.2.0-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Abel" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css-entities/style.css" rel="stylesheet">

    </head>
    <body>
        <header>
            <div class="container">
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
                                    <li><a href="index.jsp">Home</a></li>
                                    <li class="active"><a href="#">Books</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>  <!-- end mainNavigationRow -->
            </div>
        </header>

        <div class="container">
            <div class="row"> 
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/116010.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Artist Holding a Thistle</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                   

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/120010.jpg" alt="..." class="img-responsive img-thumbnail">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Portrait of Eleanor of Toledo</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                   
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/107010.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Madame de Pompadour</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/106020.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Girl with a Pearl Earring</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row"> 
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/116010.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Artist Holding a Thistle</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                   

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/120010.jpg" alt="..." class="img-responsive img-thumbnail">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Portrait of Eleanor of Toledo</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                   
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/107010.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Madame de Pompadour</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/106020.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Girl with a Pearl Earring</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row"> 
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/116010.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Artist Holding a Thistle</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                   

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/120010.jpg" alt="..." class="img-responsive img-thumbnail">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Portrait of Eleanor of Toledo</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                   
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/107010.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Madame de Pompadour</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>                
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/thumbs/106020.jpg" alt="..." class="img-thumbnail img-responsive">
                        <div class="caption">
                            <p class="similarTitle"><a href="#">Girl with a Pearl Earring</a></p>
                            <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> View</button>
                            <button type="button" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-gift"></span> Wish</button>
                            <button type="button" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</html>
