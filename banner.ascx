<%@ Control Language="C#" AutoEventWireup="true" CodeFile="banner.ascx.cs" Inherits="banner" %>


       
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
     
		<noscript>
			<link rel="stylesheet" type="text/css" href="css/noscript.css" />
		</noscript>
		
  
        <div class="container">
            <div class="header">
               
                <div class="clr"></div>
            </div>
            
            <div class="wrapper">
                <div id="ei-slider" class="ei-slider">
                    <ul class="ei-slider-large">
						<li>
                            <img src="banner/large/6.jpg" alt="image06"/>
                            <div class="ei-title">
                                <h2>Passionate</h2>
                                <h3>Seeker</h3>
                            </div>
                        </li>
                        <li>
                            <img src="banner/large/1.jpg" alt="image01" />
                            <div class="ei-title">
                                <h2>Creative</h2>
                                <h3>Duet</h3>
                            </div>
                        </li>
                        <li>
                            <img src="banner/large/2.jpg" alt="image02" />
                            <div class="ei-title">
                                <h2>Friendly</h2>
                                <h3>Devil</h3>
                            </div>
                        </li>
                        <li>
                            <img src="banner/large/3.jpg" alt="image03"/>
                            <div class="ei-title">
                                <h2>Tranquilent</h2>
                                <h3>Compatriot</h3>
                            </div>
                        </li>
                        <li>
                            <img src="banner/large/4.jpg" alt="image04"/>
                            <div class="ei-title">
                                <h2>Insecure</h2>
                                <h3>Hussler</h3>
                            </div>
                        </li>
                        <li>
                            <img src="banner/large/5.jpg" alt="image05"/>
                            <div class="ei-title">
                                <h2>Loving</h2>
                                <h3>Rebel</h3>
                            </div>
                        </li>
                        <li>
                            <img src="banner/large/7.jpg" alt="image07"/>
                            <div class="ei-title">
                                <h2>Crazy</h2>
                                <h3>Friend</h3>
                            </div>
                        </li>
                    </ul><!-- ei-slider-large -->
                    <ul class="ei-slider-thumbs">
                        <li class="ei-slider-element">Current</li>
						<li><a href="#">Slide 6</a><img src="banner/thumbs/6.jpg" alt="thumb06" /></li>
                        <li><a href="#">Slide 1</a><img src="banner/thumbs/1.jpg" alt="thumb01" /></li>
                        <li><a href="#">Slide 2</a><img src="banner/thumbs/2.jpg" alt="thumb02" /></li>
                        <li><a href="#">Slide 3</a><img src="banner/thumbs/3.jpg" alt="thumb03" /></li>
                        <li><a href="#">Slide 4</a><img src="banner/thumbs/4.jpg" alt="thumb04" /></li>
                        <li><a href="#">Slide 5</a><img src="banner/thumbs/5.jpg" alt="thumb05" /></li>
                        <li><a href="#">Slide 7</a><img src="banner/thumbs/7.jpg" alt="thumb07" /></li>
                    </ul><!-- ei-slider-thumbs -->
                </div><!-- ei-slider -->
           
            </div><!-- wrapper -->
        </div>
       <%-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>--%>
       

    <script src="script/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="script/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="script/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#ei-slider').eislideshow({
					animation			: 'center',
					autoplay			: true,
					slideshow_interval	: 3000,
					titlesFactor		: 0
                });
            });
        </script>
