
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chapter5</title>


        <!-- Custom styles for this template -->
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
                                <li><a href="index.jsp">Home</a></li>
                                <li class="active"><a href="#">Books</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>  <!-- end mainNavigationRow -->
        </header>

        <div class="container">
            <div class="row">

                <div class="col-md-10">

                    <h2 class="specialHeading">Self-portrait in a Straw Hat</h2>
                    <p>By <a href="#">Louise Elisabeth Lebrun</a></p>

                    <div class="row">
                        <div class="col-md-5">

                            <img src="images/113010.jpg" class="img-thumbnail img-responsive" alt="Self-portrait in a Straw Hat"/>
                        </div>
                        <div class="col-md-7">
                            <p>
                                The painting appears, after cleaning, to be an autograph replica of a picture, the original of which was painted in Brussels in 1782 in free imitation of Rubens's 'Chapeau de Paille', which LeBrun had seen in Antwerp. It was exhibited in Paris in 1782 at the Salon de la Correspondance. LeBrun's original is recorded in a private collection in France. 
                            </p>
                            <p class="price">$700</p>
                            <div class="btn-group btn-group-lg">
                                <button type="button" class="btn btn-default">
                                    <a href="#"><span class="glyphicon glyphicon-gift"></span> Add to Wish List</a>  
                                </button>
                                <button type="button" class="btn btn-default">
                                    <a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Add to Shopping Cart</a>
                                </button>
                            </div>               
                            <p>&nbsp;</p>
                            <div class="panel panel-default">
                                <div class="panel-heading"> Product Details </div>
                                <table class="table">
                                    <tr>
                                        <th>Date:</th>
                                        <td>1782</td>
                                    </tr>
                                    <tr>
                                        <th>Medium:</th>
                                        <td>Oil on canvas</td>
                                    </tr>  
                                    <tr>
                                        <th>Dimensions:</th>
                                        <td>98cm x 71cm</td>
                                    </tr> 
                                    <tr>
                                        <th>Home:</th>
                                        <td><a href="#">National Gallery, London</a></td>
                                    </tr>  
                                    <tr>
                                        <th>Genres:</th>
                                        <td><a href="#">Realism</a>, <a href="#">Rococo</a></td>
                                    </tr> 
                                    <tr>
                                        <th>Subjects:</th>
                                        <td><a href="#">People</a>, <a href="#">Arts</a></td>
                                    </tr>     
                                </table>
                            </div>                              
                        </div>
                    </div>

                    <p>&nbsp;</p>

                    <h3 class="specialHeading">Similar Products </h3> 
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
                <div class="col-md-2">
                    <div class="panel panel-primary">
                        <h3 class="panel-heading panel-title specialHeading">Cart </h3>
                        <div class="panel-body">
                            <div class="media">
                                <a class="pull-left" href="#">
                                    <img class="media-object" src="images/tiny/116010.jpg" alt="..." width="32">
                                </a>
                                <p class="media-body cartText"><a href="#">Artist Holding a Thistle</a></p>
                            </div>
                            <div class="media">
                                <a class="pull-left" href="#">
                                    <img class="media-object" src="images/tiny/113010.jpg" alt="..." width="32">
                                </a>
                                <p class="media-body cartText"><a href="#">Self-portrait in a Straw Hat</a></p>
                            </div>
                            <strong class="cartText">Subtotal: <span >$1200</span></strong>
                            <div>
                                <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-info-sign"></span> Edit</button>
                                <button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-arrow-right"></span> Checkout</button>    
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-info">
                        <h3 class="panel-heading panel-title specialHeading">Popular Artists</h3>
                        <div class="panel-body">
                            <ul class="nav nav-stacked">
                                <li><a href="#">Caravaggio</a></li>
                                <li><a href="#">Cezanne</a></li>
                                <li><a href="#">Matisse</a></li>
                                <li><a href="#">Michelangelo</a></li>
                                <li><a href="#">Picasso</a></li>
                                <li><a href="#">Raphael</a></li>
                                <li><a href="#">Van Gogh</a></li>
                            </ul>
                        </div>
                    </div>    

                    <div class="panel panel-info">
                        <h3 class="panel-heading panel-title specialHeading">Popular Genres</h3>
                        <div class="panel-body">
                            <ul class="nav nav-stacked">
                                <li><a href="#">Baroque</a></li>
                                <li><a href="#">Cubism</a></li>
                                <li><a href="#">Impressionism</a></li>
                                <li><a href="#">Renaissance</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <h4><span class="glyphicon glyphicon-info-sign"></span> About Us</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                    </div>

                    <div class="col-md-3">
                        <h4><span class="glyphicon glyphicon-earphone"></span> Customer Service</h4>
                        <ul class="nav nav-stacked">
                            <li><a href="#">Delivery Information</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Terms and Conditions</a></li>
                        </ul> 
                    </div>          

                    <div class="col-md-3">
                        <h4><span class="glyphicon glyphicon-shopping-cart"></span> Just Ordered</h4>
                        <div class="media">


                            <a class="pull-left" href="#">
                                <img class="media-object" src="images/tiny/13030.jpg" alt="...">
                            </a>
                            <div class="media-body">
                                <p class="media-heading similarTitle"> <a href="#">Arrangement in Grey and Black</a></p>
                                <em>5 minutes ago</em>
                            </div>



                        </div>
                        <div class="media">


                            <a class="pull-left" href="#">
                                <img class="media-object" src="images/tiny/116010.jpg" alt="...">
                            </a>
                            <div class="media-body">
                                <p class="media-heading similarTitle"><a href="#">Artist Holding a Thistle</a></p>
                                <em>11 minutes ago</em>
                            </div>


                        </div>   
                        <div class="media">


                            <a class="pull-left" href="#">
                                <img class="media-object" src="images/tiny/113010.jpg" alt="...">
                            </a>
                            <div class="media-body">
                                <p class="media-heading similarTitle"><a href="#">Self-portrait in a Straw Hat</a></p>
                                <em>23 minutes ago</em>
                            </div>


                        </div>
                    </div>

                    <div class="col-md-3">
                        <h4><span class="glyphicon glyphicon-envelope"></span> Contact us</h4>
                        <form role="form">
                            <div class="form-group tight-form-group">
                                <label class="sr-only" for="name">Name</label>
                                <input class="form-control" type="text" name="email" placeholder="Enter name ...">
                            </div>

                            <div class="form-group tight-form-group">
                                <label class="sr-only" for="email">Email</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter email ...">
                            </div>
                            <div class="form-group tight-form-group">
                                <label class="sr-only" for="email">Email</label>
                                <textarea class="form-control" rows="3" placeholder="Enter message ..."></textarea>
                            </div>
                            <button class="btn btn-primary btn-block" type="submit">Submit</button>
                        </form>  
                    </div>
                </div>
            </div>


            <div id="copyrightRow">
                <div class="container">
                    <div class="row">
                        <p class="text-muted">All images are copyright to their owners. This is just a hypothetical site
                            <span class="pull-right">&copy; 2014 Copyright Art Store</span></p>
                    </div>
                </div>
            </div>
        </footer>

        <script type="text/javascript" src="jquery-3.2.1.js"></script>
        <script type="text/javascript" src="bootstrap-3.2.0-dist/js/bootstrap.js"></script>

    </body>
</html>