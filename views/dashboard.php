<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 04/12/2016
 * Time: 06.50
 */
?>

<div id="page-content">
    <?php
    if(@$_SESSION['admin']){
        $user_terlogin = @$_SESSION['admin'];
    }elseif(@$_SESSION['visitor']){
        $user_terlogin = @$_SESSION['visitor'];
    }

    $sql_user = mysqli_query($connect,"SELECT * from login where id = '$user_terlogin'")or die(mysqli_error());
    $data_user = mysqli_fetch_array($sql_user);
    ?>
    <!-- Dashboard Header -->
    <!-- For an image header add the class 'content-header-media' and an image as in the following example -->
    <div class="content-header content-header-media">
        <div class="header-section">
            <div class="row">
                <!-- Main Title (hidden on small devices for the statistics to fit) -->
                <div class="col-md-4 col-lg-6 hidden-xs hidden-sm">
                    <h1>Selamat Datang <strong><?php echo $data_user['nama'] ?></strong><br><small>Toko Bunga</small></h1>
                </div>
                <!-- END Main Title -->

                <!-- Top Stats -->

                <!-- END Top Stats -->
            </div>
        </div>
        <!-- For best results use an image with a resolution of 2560x248 pixels (You can also use a blurred image with ratio 10:1 - eg: 1000x100 pixels - it will adjust and look great!) -->
        <img src="assets/img/placeholders/headers/dashboard_header.jpg" alt="header image" class="animation-pulseSlow">
    </div>
    <!-- END Dashboard Header -->

    <!-- Mini Top Stats Row -->
    <div class="row">
        <div class="col-sm-6 col-lg-3">
            <!-- Widget -->
            <a href="page_ready_article.html" class="widget widget-hover-effect1">
                <div class="widget-simple">
                    <div class="widget-icon pull-left themed-background-autumn animation-fadeIn">
                        <i class="fa fa-file-text"></i>
                    </div>
                    <h3 class="widget-content text-right animation-pullDown">
                        New <strong>Article</strong><br>
                        <small>Mountain Trip</small>
                    </h3>
                </div>
            </a>
            <!-- END Widget -->
        </div>
        <div class="col-sm-6 col-lg-3">
            <!-- Widget -->
            <a href="page_comp_charts.html" class="widget widget-hover-effect1">
                <div class="widget-simple">
                    <div class="widget-icon pull-left themed-background-spring animation-fadeIn">
                        <i class="gi gi-usd"></i>
                    </div>
                    <h3 class="widget-content text-right animation-pullDown">
                        + <strong>250%</strong><br>
                        <small>Sales Today</small>
                    </h3>
                </div>
            </a>
            <!-- END Widget -->
        </div>
        <div class="col-sm-6 col-lg-3">
            <!-- Widget -->
            <a href="page_ready_inbox.html" class="widget widget-hover-effect1">
                <div class="widget-simple">
                    <div class="widget-icon pull-left themed-background-fire animation-fadeIn">
                        <i class="gi gi-envelope"></i>
                    </div>
                    <h3 class="widget-content text-right animation-pullDown">
                        5 <strong>Messages</strong>
                        <small>Support Center</small>
                    </h3>
                </div>
            </a>
            <!-- END Widget -->
        </div>
        <div class="col-sm-6 col-lg-3">
            <!-- Widget -->
            <a href="page_comp_gallery.html" class="widget widget-hover-effect1">
                <div class="widget-simple">
                    <div class="widget-icon pull-left themed-background-amethyst animation-fadeIn">
                        <i class="gi gi-picture"></i>
                    </div>
                    <h3 class="widget-content text-right animation-pullDown">
                        +30 <strong>Photos</strong>
                        <small>Gallery</small>
                    </h3>
                </div>
            </a>
            <!-- END Widget -->
        </div>
        <div class="col-sm-6">
            <!-- Widget -->
            <a href="page_comp_charts.html" class="widget widget-hover-effect1">
                <div class="widget-simple">
                    <div class="widget-icon pull-left themed-background animation-fadeIn">
                        <i class="gi gi-wallet"></i>
                    </div>
                    <div class="pull-right">
                        <!-- Jquery Sparkline (initialized in assets/js/pages/index.js), for more examples you can check out http://omnipotent.net/jquery.sparkline/#s-about -->
                        <span id="mini-chart-sales"></span>
                    </div>
                    <h3 class="widget-content animation-pullDown visible-lg">
                        Latest <strong>Sales</strong>
                        <small>Per hour</small>
                    </h3>
                </div>
            </a>
            <!-- END Widget -->
        </div>
        <div class="col-sm-6">
            <!-- Widget -->
            <a href="page_widgets_stats.html" class="widget widget-hover-effect1">
                <div class="widget-simple">
                    <div class="widget-icon pull-left themed-background animation-fadeIn">
                        <i class="gi gi-crown"></i>
                    </div>
                    <div class="pull-right">
                        <!-- Jquery Sparkline (initialized in assets/js/pages/index.js), for more examples you can check out http://omnipotent.net/jquery.sparkline/#s-about -->
                        <span id="mini-chart-brand"></span>
                    </div>
                    <h3 class="widget-content animation-pullDown visible-lg">
                        Our <strong>Brand</strong>
                        <small>Popularity over time</small>
                    </h3>
                </div>
            </a>
            <!-- END Widget -->
        </div>
    </div>
    <!-- END Mini Top Stats Row -->

    <!-- Widgets Row -->
    <div class="row">
        <div class="col-md-6">
            <!-- Timeline Widget -->

            <!-- END Timeline Widget -->

            <!-- Advanced Gallery Widget -->
            <div class="widget">
                <div class="widget-advanced">
                    <!-- Widget Header -->
                    <div class="widget-header text-center themed-background-dark">
                        <h3 class="widget-content-light clearfix">
                            Awesome <strong>Gallery</strong><br>
                            <small>4 Photos</small>
                        </h3>
                    </div>
                    <!-- END Widget Header -->

                    <!-- Widget Main -->
                    <div class="widget-main">
                        <a href="page_comp_gallery.html" class="widget-image-container">
                            <span class="widget-icon themed-background"><i class="gi gi-picture"></i></span>
                        </a>
                        <div class="gallery gallery-widget" data-toggle="lightbox-gallery">
                            <div class="row">
                                <div class="col-xs-6 col-sm-3">
                                    <a href="assets/img/placeholders/photos/photo15.jpg" class="gallery-link" title="Image Info">
                                        <img src="assets/img/placeholders/photos/photo15.jpg" alt="image">
                                    </a>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <a href="assets/img/placeholders/photos/photo5.jpg" class="gallery-link" title="Image Info">
                                        <img src="assets/img/placeholders/photos/photo5.jpg" alt="image">
                                    </a>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <a href="assets/img/placeholders/photos/photo6.jpg" class="gallery-link" title="Image Info">
                                        <img src="assets/img/placeholders/photos/photo6.jpg" alt="image">
                                    </a>
                                </div>
                                <div class="col-xs-6 col-sm-3">
                                    <a href="assets/img/placeholders/photos/photo13.jpg" class="gallery-link" title="Image Info">
                                        <img src="assets/img/placeholders/photos/photo13.jpg" alt="image">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Widget Main -->
                </div>
            </div>
            <!-- END Advanced Gallery Widget -->
        </div>
        <div class="col-md-6">
            <!-- Your Plan Widget -->

            <!-- END Your Plan Widget -->

            <!-- Charts Widget -->

            <!-- END Charts Widget -->

            <!-- Weather Widget -->

            <!-- END Weather Widget-->

            <!-- Advanced Gallery Widget -->

            <!-- END Advanced Gallery Widget -->
        </div>
    </div>
    <!-- END Widgets Row -->
</div>
