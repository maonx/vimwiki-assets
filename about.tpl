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
  <body>
    <header class="navbar navbar-static-top bs-docs-nav">
      <div class="container">
        <div class="row">
          <div class="col-sm-2"></div>
          <div class="col-sm-8">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../">I'm Maonx</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <nav id="bs-navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav navbar-right">
                <li class=""><a href="%root_path%index.html"><i class="fa fa-home fa-fw"></i>Home<span class="sr-only">(current)</span></a></li>
                <li><a href="%root_path%diary/diary.html"><i class="fa fa-book fa-fw"></i>Blog</a></li>
                <li><a href="%root_path%about.html">About</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </header>
    <div class="container">
      <div class="row">
        <!-- <div class="span3 bs-docs-sidebar"> -->
        <!--   <ul id="sidebar_list" class="nav nav-list bs-docs-sidenav affix"> -->
        <!--   </ul> -->
        <!-- </div> -->
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
          <!--Body content-->
          %content%
          
          <div id="disqus_thread" style="margin-top:100px;"></div>
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
var disqus_config = function () {
this.page.url = 'http://maonx.github.io/about.html';  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = 'about'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://imaonx.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
        </div>
      </div>
    </div>
    <a href="#" class="backtotop"><i class="fa fa-arrow-circle-up fa-4x"></i></a>
    <!-- Footer
      ================================================== -->
      <footer class="footer">
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
/* $('h1').each(function() { */
/*   $(this).wrap('<section id="' + this.id + '"/>'); */
/* }); */

$('h1').wrap('<div class="page-header" />');
/* /1* $('h1').wrap('<div class="well well-small" />'); *1/ */

$(document).ready(function() {
  /* var items = []; */
  /* $('h1').each(function() { */
  /*   items.push('<li><a href="#' + this.id + '"><i class="fa fa-chevron-right pull-right"></i> ' + $(this).text() + '</a></li>'); */
  /* });  // close each() */

  /* $('#sidebar_list').append( items.join('') ); */

  $('table').each(function() {
    $(this).addClass('table table-striped table-condensed table-hover');
  });

  $('.tag').each(function() {
    $(this).addClass('label label-primary');
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
      <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-69295870-1', 'auto');
  ga('send', 'pageview');

</script>
  </body>
</html>
