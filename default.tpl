<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <link type="text/css" rel="stylesheet" href="%root_path%assets/css/bootstrap.css" />
    <!-- <link type="text/css" rel="stylesheet" href="%root_path%assets/css/bootstrap-responsive.css" /> -->
    <!-- <link type="text/css" rel="stylesheet" href="%root_path%assets/css/default.css" /> -->
    <link type="text/css" rel="stylesheet" href="%root_path%assets/css/docs.css" />
    <link type="text/css" rel="stylesheet" href="%root_path%assets/css/monokai.css" />
    <link type="text/css" rel="stylesheet" href="%root_path%assets/font-awesome/css/font-awesome.css">
    <link type="text/css" rel="stylesheet" href="%root_path%assets/css/vimwiki.css" />

    <script type="text/javascript" src="%root_path%assets/js/jquery-3.2.0.js"></script>
    <script type="text/javascript" src="%root_path%assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="%root_path%assets/js/highlight.pack.js"></script>

    <title>%title%</title>

  </head>
  <body data-spy="scroll" data-target=".bs-docs-sidebar">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="avatar" href="#"><img src="%root_path%assets/avatar.png" ></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active"><a href="%root_path%index.html"><i class="fa fa-home fa-fw"></i>Home<span class="sr-only">(current)</span></a></li>
            <li><a href="#">Todo</a></li>
          </ul>
          <p class="navbar-text navbar-right">Maonx's life</p>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
    <div class="container">
      <div class="row-fluid">
        <!-- <div class="span3 bs-docs-sidebar"> -->
        <!--   <ul id="sidebar_list" class="nav nav-list bs-docs-sidenav affix"> -->
        <!--   </ul> -->
        <!-- </div> -->

        <div class="span7">
          <!--Body content-->
          %content%

        </div>
      </div>
    </div>
    <a href="#" class="backtotop"><i class="fa fa-arrow-circle-up fa-4x"></i></a>
    <!-- Footer
      ================================================== -->
      <footer class="footer ">
        <div class="container">
          <p>© 2017 <i class="fa fa-heart fa-1x"></i> Maonx | Powered by <a href="http://vimwiki.github.io/" target="_blank">Vimwiki</a></p>
        </div>
      </footer>
      <script>
$("img").each(function(){
  var temp;
  temp = $(this).attr("src").replace(/\.\.\/.*\\/i, "\.\.\/");
  $(this).attr("src", temp);
})
$('h1').each(function() {
  $(this).wrap('<section id="' + this.id + '"/>');
});

$('h1').wrap('<div class="page-header" />');
$('h1').wrap('<div class="well well-small" />');

$(document).ready(function() {
  var items = [];
  $('h1').each(function() {
    items.push('<li><a href="#' + this.id + '"><i class="fa fa-chevron-right pull-right"></i> ' + $(this).text() + '</a></li>');
  });  // close each()

  $('#sidebar_list').append( items.join('') );

  $('table').each(function() {
    $(this).addClass('table table-striped table-condensed table-hover');
  });

  $('.done0').each(function() {
    $(this).html('<div class="alert alert-info"><i class="fa fa-check-square-o"></i>'+$(this).html()+'</div></li>');
  });

  $('.done4').each(function() {
    $(this).html('<div class="alert alert-success"><i class="fa fa-square-o"></i>'+$(this).html()+'</div></li>');
  });

  // Fade Out Back-To-Top-Link on new page
  $('.backtotop').fadeOut();

  $(document).ready(function(){
    $(window).scroll(function(){
      if ($(this).scrollTop() > 100) {
        $('.backtotop').fadeIn();
      } else {
        $('.backtotop').fadeOut();
      }
    });
    $('.backtotop').click(function(){
      $("html, body").animate({ scrollTop: 0 }, 600);
      return false;
    });
  });

  $('pre').each(function() {
    $(this).html('<code>'+$(this).html()+'</code>');
  });
  hljs.initHighlightingOnLoad();
});
      </script>
  </body>
</html>
