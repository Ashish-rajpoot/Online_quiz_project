<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  <meta name="description" content="Learners Academy established in 2003. The primary aim of the institution is to provide global education and descipline to the students. It has rapidly gained recognition as one of the most reputed school,Offering Excellent Academics With Deeni Taleem. ">
<meta name="keywords" content="www.learneracademy.net, learners academy school for children, learners academy in A.C GUARD, Shanti Nagar Hyderabad, learners academy in hyderabad, school in hyderabad, school in A.C GUARD, shanti Nagar Hyderabad, best school in hyderabad.">
  <meta name="author" content="www.learnersacademy.net">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/revolution-slider.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/-ui.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
<jsp:include page="./includes/header2.jsp" />
    <form method="post" action="./banner-slider.slider" id="form1" class="mainform">
<div class="aspNetHidden">
        <!--#region header-->
        <div class="header public clearfix">
        </div>
        <script src="//jssors8.azureedge.net/script/jssor.slider-28.1.0.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            window.jssor_1_slider_init = function() {

                var jssor_1_SlideshowTransitions = [
                  {$Duration:800,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
                  {$Duration:800,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
                ];

                var jssor_1_options = {
                  $AutoPlay: 1,
                  $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: jssor_1_SlideshowTransitions,
                    $TransitionsOrder: 1
                  },
                  $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                  },
                  $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,
                    $Orientation: 2,
                    $NoDrag: true
                  }
                };

                var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                /*#region responsive code begin*/

                var MAX_WIDTH = 980;

                function ScaleSlider() {
                    var containerElement = jssor_1_slider.$Elmt.parentNode;
                    var containerWidth = containerElement.clientWidth;

                    if (containerWidth) {

                        var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                        jssor_1_slider.$ScaleWidth(expectedWidth);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }

                ScaleSlider();

                $Jssor$.$AddEvent(window, "load", ScaleSlider);
                $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                /*#endregion responsive code end*/
            };
        </script>
        <style>
            /*jssor slider loading skin spin css*/
            .jssorl-009-spin img {
                animation-name: jssorl-009-spin;
                animation-duration: 1.6s;
                animation-iteration-count: infinite;
                animation-timing-function: linear;
            }

            @keyframes jssorl-009-spin {
                from { transform: rotate(0deg); }
                to { transform: rotate(360deg); }
            }

            .jssora061 {display:block;position:absolute;cursor:pointer;}
            .jssora061 .a {fill:none;stroke:#fff;stroke-width:360;stroke-linecap:round;}
            .jssora061:hover {opacity:.8;}
            .jssora061.jssora061dn {opacity:.5;}
            .jssora061.jssora061ds {opacity:.3;pointer-events:none;}
        </style>    
    
     <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
            <!-- Loading Screen -->
            <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
                <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="//jssors8.azureedge.net/theme/svg/loading/static-svg/spin.svg" />
            </div>
            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
              <div>
                    <img data-u="image" src="./IMG/learn.jpg" />
                </div>
               <div>
                    <img data-u="image" src="./IMG/learn01.jpg" />
                </div>
                <div>
                    <img data-u="image" src="./IMG/learn02.jpg" />
                </div>
                <div>
                    <img data-u="image" src="./IMG/learn03.jpg" />
                </div>
                <div>
                    <img data-u="image" src="./IMG/learn04.jpg" />
                </div>
                <div>
                    <img data-u="image" src="./IMG/learn05.jpg" />
                </div>
            </div><a data-scale="0" href="https://www.jssor.com" style="display:none;position:absolute;">image gallery</a>
            <!-- Thumbnail Navigator -->
            <!-- Arrow Navigator -->
            <div data-u="arrowleft" class="jssora061" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <path class="a" d="M11949,1919L5964.9,7771.7c-127.9,125.5-127.9,329.1,0,454.9L11949,14079"></path>
                </svg>
            </div>
            <div data-u="arrowright" class="jssora061" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <path class="a" d="M5869,1919l5984.1,5852.7c127.9,125.5,127.9,329.1,0,454.9L5869,14079"></path>
                </svg>
            </div>
        </div>
        <script type="text/javascript">jssor_1_slider_init();
        </script>
        <!-- #endregion Jssor Slider End -->
</body>
</html>