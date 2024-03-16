<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="Anil z" name="author">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Creating a professional, modern and sophisticated online resume website is easy with Martyn CV / Resume">
    <meta name="keywords" content="CV, resume, card, vcard, online cv, online resume, professional resume, portfolio, one page, bootstrap responsive, creative html template, creative design, parallax, personal">

    <!-- SITE TITLE -->
    <title>Resume Maker</title>
    <!-- Favicon Icon -->
    <asset:stylesheet src="sweetalert2.css"/>
    <!-- Animation CSS -->
    <asset:stylesheet  href="animate.css"/>
    <!-- Latest Bootstrap min CSS -->
    <asset:stylesheet  href="css/bootstrap.min.css"/>
    <!-- Google Font -->
    <asset:stylesheet href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>
    <asset:stylesheet href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet"/>
    <!-- Icon Font CSS -->
    <asset:stylesheet  href="ionicons.min.css"/>
    <asset:stylesheet  href="themify-icons.css"/>
    <!-- FontAwesome CSS -->
    <asset:stylesheet  href="all.min.css"/>
    <!-- Flaticon Font CSS -->
    <asset:stylesheet  href="flaticon.css"/>
    <!--- owl carousel CSS-->
    <asset:stylesheet  href="css/owl.carousel.min.css"/>
    <asset:stylesheet href="css/owl.theme.css"/>
    <asset:stylesheet  href="css/owl.theme.default.min.css"/>
    <!-- Magnific Popup CSS -->
    <asset:stylesheet  href="magnific-popup.css"/>
    <!-- Scrollbar Css -->
    <asset:stylesheet  href="jquery.mCustomScrollbar.min.css"/>
    <!-- Style CSS -->
    <asset:stylesheet  href="style.css"/>
    <asset:stylesheet  href="responsive.css"/>

    <style>
/*.image_container {*/
/*    position: relative;*/
/*    width: 100%;*/
/*    height: 0;*/
/*    padding-top: 100%; !* This creates a square aspect ratio (1:1), adjust as needed *!*/
/*    overflow: hidden;*/
/*}*/

/*.profile_image {*/
/*    position: absolute;*/
/*    top: 0;*/
/*    left: 0;*/
/*    width: 100%;*/
/*    height: 50%;*/
/*    object-fit: cover; !* This property ensures the image covers the entire container while maintaining its aspect ratio *!*/
/*}*/

</style>
</head>

<body data-spy="scroll" data-target=".navbar-nav" data-offset="110">

<!-- LOADER -->
<div class="preloader">
    <div class="loader">
        <div class="loader-inner ball-scale">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
</div>
<!-- END LOADER -->

<!-- START HEADER -->
<header class="header_wrap fixed-top light_skin hover_menu_style3 transparent-header">
    <div class="container">
        <nav class="navbar navbar-expand-lg">
            <a class="navbar-brand page-scroll" href="#home_section">
                <asset:image class=" logo_light"  src="cv.png" alt="logo" style="height: 40px; width: 40px;" />
                <img  class="logo_dark" src="assets/images/logo_dark.png" alt="logo" />
                <img class="logo_default" src="assets/images/logo_dark.png" alt="logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="ion-android-menu"></span> </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <a class="navbar-brand page-scroll" href="#home_section">
                    <img class="logo_light" src="assets/images/logo_white.png" alt="logo" />
                    <img class="logo_dark" src="assets/images/logo_dark.png" alt="logo" />
                    <img class="logo_default" src="assets/images/logo_dark.png" alt="logo" />
                </a>
                <ul class="navbar-nav">
                    <li>
                        <a class="nav-link active page-scroll" href="#home_section">Home</a>
                    </li>
                    <li>
                        <a class="nav-link page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="nav-link page-scroll" href="#education">Education</a>
                    </li>
                    <li>
                        <a class="nav-link page-scroll" href="#portfolio">Project</a>
                    </li>
                    <li>
                        <a class="nav-link page-scroll" href="#experience">Experience</a>
                    </li>
                    <li>
                        <a class="nav-link page-scroll" href="#contact">contact</a>
                    </li>
                    <li>
                            <a class="nav-link page-scroll" href="createresume">Edit Resume</a>
                    </li>
%{--                    <li>--}%
%{--                            <a class="nav-link page-scroll" href="generatedresume">Generated Resume</a>--}%
%{--                    </li>--}%
                    <li>
                            <a class="nav-link page-scroll" href="logout">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>
<!-- START HEADER -->

<!-- START SECTION BANNER -->
<section id="home_section" class="banner_section full_screen parallax_bg overlay_bg_blue_90" data-parallax-bg-image="assets/images/banner_img.jpg">
    <div class="banner_slide_content">
        <div class="container"><!-- STRART CONTAINER -->
            <div class="row align-items-center">
                <div class="col-xl-6">
                    <div class="image_banner animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                        <div class="image_container">
                            <img src="profileimage?imageName=${profile.profilePhoto}" alt="Profile Image" class="profile_image"/>
                        </div>
                        <div class="circle_bg1">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 order-xl-first">
                    <div class="banner_content text_white text-center text-xl-left">
                        <h2 class="animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                            <g:if test="${profile}">
                                Hello, I'm ${profile.fullName}
                            </g:if>
                            <div id="typed-strings" class="d-none">
                                <b>${profile.title}</b>
                            </div>
                        </h2>
                        <h4 class="animation" data-animation="fadeInUp" data-animation-delay="0.03s">I'm a <span id="typed-text" class="text_default"></span></h4>
                        <p class="animation" data-animation="fadeInUp" data-animation-delay="0.04s"></p>
                        <div class="col-md-4">
                            <div class="text-md-right">
                                <a href="#" id="downloadCVBtn" class="btn btn-default btn-radius btn-aylen btn-sm">Download MY CV</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- END CONTAINER-->
    </div>
    <a href="#about" class="down down_white page-scroll">
        <span class="mouse"><span></span></span>
    </a>
</section>
<!-- END SECTION BANNER -->

<!-- START SECTION ABOUT US -->
<section id="about" class="bg_black4">
    <div class="container">
        <div class="row align-items-center animation" data-animation="fadeInUp" data-animation-delay="0.02s">
            <div class="col-md-8">
                <div class="heading_s1 heading_light">
                    <h2>About Me</h2>
                </div>
                <p class="text-white">${profile.summary}</p>

            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="medium_divider clearfix"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <div class="about_img2 animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <img src="profileimage?imageName=${profile.profilePhoto}" alt="Profile Image"/>
                </div>
            </div>            <div class="col-lg-8 col-md-12">
                <div class="about_info text_white animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="heading_s1 mb-4">
                                <h5>Basic Info</h5>
                            </div>
                            <ul class="profile_info_style2 list_none">
                                <li>
                                    <span class="title">Date of birth:</span>
                                    <p class="text-white">${formatDate(date: profile.dateOfBirth, format: 'dd-MM-yyyy')}</p>
                                </li>
                                <li>
                                    <span class="title">Phone No:</span>
                                    <p>${profile.contactNumber}</p>
                                </li>
                                <li>
                                    <span class="title">Email:</span>
                                    <a href="mailto:${profile.email}">${profile.email}</a>

                                </li>
                                <li>
                                    <span class="title">Address:</span>
                                    <p>${profile.address}</p>
                                </li>
                            </ul>
                            <ul class="list_none social_icons rounded_social mt-3">
                                <li><a href="#" class="sc_facebook"><i class="ion-social-facebook"></i></a></li>
                                <li><a href="#" class="sc_twitter"><i class="ion-social-twitter"></i></a></li>
                                <li><a href="#" class="sc_google"><i class="ion-social-googleplus"></i></a></li>
                                <li><a href="#" class="sc_youtube"><i class="ion-social-youtube-outline"></i></a></li>
                                <li><a href="#" class="sc_instagram"><i class="ion-social-instagram-outline"></i></a></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <div class="heading_s1 mb-4">
                                <h5>My Skills</h5>
                            </div>
                            <div class="skills">
                                <g:each in="${profile.skills}" var="skill">
                                    <div class="skill_content pr_style1">
                                        <div class="progrees_bar_text">
                                            <b>${skill.name}</b>
                                        </div>
                                        <div class="progress">
                                            <div class="count_pr"><span class="counter">${skill.proficiencyLevel}</span>%</div>
                                            <div class="progress-bar d-block" role="progressbar" aria-valuenow="${skill.proficiencyLevel}" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </div>
                                </g:each>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION ABOUT US -->

<!-- START SECTION SERVICES -->
<section id="education" class="bg_black2">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-lg-7 col-md-9 text-center">
                <div class="heading_s1 heading_light animation text-center" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <h2>Education Details</h2>
                </div>
            </div>
        </div>
        <div class="row animation" data-animation="fadeInUp" data-animation-delay="0.04s">
            <g:each in="${profile.educations}" var="education">
                <div class="col-lg-5 col-sm-6 text-center">
                    <div class="icon_box icon_box_style_3 radius_box_10 box_dark">
                        <div class="box_icon mb-3">
                            <i class=" ti-book"></i>
                        </div>
                        <div class="icon_box_content text_white">
                            <h5>${education.studyProgramName}</h5>
                            <p>${education.institution}</p>
                            <p>${formatDate(date: education.startDate, format: 'yyyy-MM-dd')} - ${formatDate(date: education.endDate, format: 'yyyy-MM-dd')}</p>
                            <p>${education.place}</p>
                            <p>${education.grade}</p>
                        </div>
                    </div>
                </div>
            </g:each>
        </div>
    </div>
</section>

<!-- END SECTION SERVICES -->

<!-- START SECTION PORTFOLIO -->
<section id="portfolio" class="bg_black2">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-lg-7 col-md-9 text-center">
                <div class="heading_s1 heading_light animation text-center" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <h2>My Projects</h2>
                </div>
            </div>
        </div>
        <div class="row animation" data-animation="fadeInUp" data-animation-delay="0.04s">
            <g:each in="${profile.projects}" var="project">
                <div class="col-lg-5 col-sm-6 text-center">
                    <div class="icon_box icon_box_style_3 radius_box_10 box_dark">
                        <div class="box_icon mb-3">
                            <i class="ti-folder"></i>
                        </div>
                        <div class="icon_box_content text_white">
                            <h5>${project.title}</h5>
                            <p>${project.description}</p>
                            <p>Technologies Used: ${project.technologiesUsed}</p>
                            <p>Start Date: ${formatDate(date: project.startDate, format: 'yyyy-MM-dd')}</p>
                            <p>End Date: ${formatDate(date: project.endDate, format: 'yyyy-MM-dd')}</p>
                        </div>
                    </div>
                </div>
            </g:each>
        </div>
    </div>
</section>

<!-- END SECTION PORTFOLIO -->

<!-- START WORK EXPERIENCES -->
<section id="experience" class="bg_black2">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-lg-7 col-md-9 text-center">
                <div class="heading_s1 heading_light animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <h2>Experience Details</h2>
                </div>
            </div>
        </div>
        <div class="row animation" data-animation="fadeInUp" data-animation-delay="0.04s">
            <div class="col-sm-6">
                <g:each in="${profile.experiences}" var="experience">
                    <div class="icon_box icon_box_style_2 radius_box_10 box_dark">
                        <div class="icon_box_content text_white">
                            <h4>${experience.jobTitle}</h4>
                            <p><span class="text_default">${formatDate(date: experience.startDate, format: 'yyyy-MM-dd')}</span> - <span class="text_default">${formatDate(date: experience.endDate, format: 'yyyy-MM-dd')}</span> ${experience.companyName}</p>
                            <hr>
                            <p>${experience.responsibilities}</p>
                        </div>
                    </div>
                </g:each>
            </div>
        </div>
    </div>
</section>


<!-- END WORK EXPERIENCES -->


<!-- START SECTION CONTACT -->
<section id="contact" class="bg_black2">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-lg-7 col-md-9 text-center">
                <div class="heading_s1 heading_light animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <h2>Contact Me</h2>
                </div>
            </div>
        </div>
        <div class="row align-items-center animation" data-animation="fadeInUp" data-animation-delay="0.04s">
            <div class="col-md-4 text-center">
                <div class="icon_box icon_box_style_2 box_dark text_white radius_box_10">
                    <div class="box_icon mb-3">
                        <i class="ti-location-pin"></i>
                    </div>
                    <div class="icon_box_content">
                        <h5 class="text-uppercase py-md-2">Address</h5>
                        <p>${profile.address}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="icon_box icon_box_style_2 box_dark text_white radius_box_10">
                    <div class="box_icon mb-3">
                        <i class="ti-mobile"></i>
                    </div>
                    <div class="icon_box_content">
                        <h5 class="text-uppercase py-md-2">Phone</h5>
                        <p>${profile.contactNumber}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="icon_box icon_box_style_2 box_dark text_white radius_box_10">
                    <div class="box_icon mb-3">
                        <i class="ti-email"></i>
                    </div>
                    <div class="icon_box_content">
                        <h5 class="text-uppercase py-md-2">Email</h5>
                        <p>${profile.email}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="medium_divider clearfix"></div>
            </div>
        </div>
    </div>
</section>
<!-- START SECTION CONTACT -->

<!-- START FOOTER SECTION -->
%{--<footer class="footer_dark background_bg overlay_bg_blue_90" data-img-src="assets/images/footer_bg.jpg">--}%
%{--    <div class="top_footer">--}%
%{--        <div class="container">--}%
%{--            <div class="row">--}%
%{--                <div class="col-lg-4 col-sm-6">--}%
%{--                    <div class="footer_logo">--}%
%{--                        <a href="index.html"><img alt="logo" src="assets/images/logo_white.png"></a>--}%
%{--                    </div>--}%
%{--                    <p>Phasellus blandit massa enim. elit id varius nunc. Lorems ipsum dolor sit amet, consectetur industry.</p>--}%
%{--                    <ul class="list_none social_icons rounded_social socail_style1 social_white">--}%
%{--                        <li><a href="#"><i class="ion-social-facebook"></i></a></li>--}%
%{--                        <li><a href="#"><i class="ion-social-twitter"></i></a></li>--}%
%{--                        <li><a href="#"><i class="ion-social-googleplus"></i></a></li>--}%
%{--                        <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>--}%
%{--                        <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>--}%
%{--                    </ul>--}%
%{--                </div>--}%
%{--                <div class="col-lg-4 col-sm-6 mt-4 mt-lg-0">--}%
%{--                    <h6 class="widget_title">USEFUL LINKS</h6>--}%
%{--                    <ul class="list_none widget_links widget_links_style1">--}%
%{--                        <li><a href="#">Home</a></li>--}%
%{--                        <li><a href="#">About Us</a></li>--}%
%{--                        <li><a href="#">Services</a></li>--}%
%{--                        <li><a href="#">Experience</a></li>--}%
%{--                        <li><a href="#">Contact Us</a></li>--}%
%{--                    </ul>--}%
%{--                </div>--}%
%{--                <div class="col-lg-4 col-sm-12 mt-4 mt-lg-0">--}%
%{--                    <h6 class="widget_title">Subscribe Newsletter</h6>--}%
%{--                    <p>Contrary to popular belief of lorem Ipsm Latin amet ltin from consectetur industry.</p>--}%
%{--                    <div class="newsletter_form">--}%
%{--                        <form>--}%
%{--                            <div class="rounded_input">--}%
%{--                                <input type="text" required="" placeholder="Enter Email Address">--}%
%{--                            </div>--}%
%{--                            <button type="submit" title="Subscribe" class="btn btn-default btn-radius btn-aylen" name="submit" value="Submit">--}%
%{--                                subscribe--}%
%{--                            </button>--}%
%{--                        </form>--}%
%{--                    </div>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--    <div class="container">--}%
%{--        <div class="row">--}%
%{--            <div class="col-12">--}%
%{--                <div class="bottom_footer border_top_tran">--}%
%{--                    <div class="row">--}%
%{--                        <div class="col-12">--}%
%{--                            <p class="copyright m-0 text-center">© 2019 All Rights Reserved By <a href="#" class="text_default">Bestwebcreator</a></p>--}%
%{--                        </div>--}%
%{--                    </div>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</footer>--}%
<!-- END FOOTER SECTION -->

<a href="#" class="scrollup" style="display: none;"><i class="ion-ios-arrow-up"></i></a>

<!-- Latest jQuery -->
<asset:javascript src="jquery-1.12.4.min.js"/>
<!-- jquery-ui -->
<asset:javascript src="jquery-ui.js"/>
<!-- popper min js -->
<asset:javascript src="popper.min.js"/>
<!-- Latest compiled and minified Bootstrap -->
<asset:javascript src="js/bootstrap.min.js"/>
<!-- owl-carousel min js  -->
<asset:javascript src="js/owl.carousel.min.js"/>
<!-- magnific-popup min js  -->
<asset:javascript src="magnific-popup.min.js"/>
<!-- waypoints min js  -->
<asset:javascript src="waypoints.min.js"/>
<!-- parallax js  -->
<asset:javascript src="parallax.js"/>
<!-- countdown js  -->
<asset:javascript src="jquery.countdown.min.js"/>
<!-- jquery.counterup.min js -->
<asset:javascript src="jquery.counterup.min.js"/>
<!-- imagesloaded js -->
<asset:javascript src="imagesloaded.pkgd.min.js"/>
<!-- isotope min js -->
<asset:javascript src="isotope.min.js"/>
<!-- vanilla-tilt.babel.min js -->
<asset:javascript src='vanilla-tilt.babel.min.js'/>
<!-- typed.min js -->
<asset:javascript src="typed.min.js"/>
<!-- typed text js -->
<asset:javascript src="typed-text.js"/>
<!-- mCustomScrollbar.concat.min js -->
<asset:javascript src="jquery.mCustomScrollbar.concat.min.js"/>
<!-- scripts js -->
<asset:javascript src="scripts.js"/>

<asset:javascript src="sweetalert2.js"/>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        document.getElementById('downloadCVBtn').addEventListener('click', function(event) {
            event.preventDefault(); // Prevent default link behavior

            // Show loading message with black theme and custom animation
            Swal.fire({
                title: 'Generating PDF',
                allowOutsideClick: false,
                background: '#24263c',
                showConfirmButton: false,
                html: '<div id="loadingMessage">Loading...Please wait<span id="loadingDots"></span></div>',
                onBeforeOpen: () => {
                    const loadingDots = document.getElementById('loadingDots');
                    const interval = setInterval(() => {
                        if (loadingDots.innerHTML.length < 3) {
                            loadingDots.innerHTML += '.';
                        } else {
                            loadingDots.innerHTML = '';
                        }
                    }, 500);
                    Swal.getPopup().addEventListener('mouseleave', () => clearInterval(interval));
                }
            });

            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'resume?t=' + new Date(), true); // Adjust the URL as per your Grails controller mapping
            xhr.responseType = 'blob'; // Set the response type to Blob

            xhr.onload = function() {
                if (xhr.status === 200) {
                    // Create a blob URL for the response
                    var blob = new Blob([xhr.response], { type: 'application/pdf' });
                    var url = window.URL.createObjectURL(blob);

                    // Create a temporary link element and trigger the download
                    var a = document.createElement('a');
                    a.href = url;
                    a.download = 'resume.pdf';
                    document.body.appendChild(a);
                    a.click();

                    // Cleanup
                    window.URL.revokeObjectURL(url);
                    document.body.removeChild(a);

                    // Close loading message
                    Swal.close();
                }
            };

            xhr.send();
        });
    });


</script>


</body>
</html>