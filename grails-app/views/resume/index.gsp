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
    <title>Generated Resume</title>
    <!-- Favicon Icon -->
    <!-- Animation CSS -->
    <asset:stylesheet href="animate.css"/>
    <!-- Latest Bootstrap min CSS -->
    <asset:stylesheet href="css/bootstrap.min.css"/>
    <!-- Google Font -->
    <asset:stylesheet
            href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet"/>
    <asset:stylesheet
            href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
            rel="stylesheet"/>
    <!-- Icon Font CSS -->
    <asset:stylesheet href="ionicons.min.css"/>
    <asset:stylesheet href="themify-icons.css"/>
    <!-- FontAwesome CSS -->
    <asset:stylesheet href="all.min.css"/>
    <!-- Flaticon Font CSS -->
    <asset:stylesheet href="flaticon.css"/>
    <!--- owl carousel CSS-->
    <asset:stylesheet href="css/owl.carousel.min.css"/>
    <asset:stylesheet href="css/owl.theme.css"/>
    <asset:stylesheet href="css/owl.theme.default.min.css"/>
    <asset:stylesheet href="dataTables.bootstrap4.min.css"/>
    <asset:stylesheet href="datatables.min.css" rel="stylesheet"/>



    <!-- Magnific Popup CSS -->
    <asset:stylesheet href="magnific-popup.css"/>
    <!-- Scrollbar Css -->
    <asset:stylesheet href="jquery.mCustomScrollbar.min.css"/>
    <!-- Style CSS -->
    <asset:stylesheet href="style.css"/>
    <asset:stylesheet href="responsive.css"/>


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

<!-- START HEADER -->

<!-- START SECTION BANNER -->
<section id="home_section" class="banner_section" >
    <div class="banner_slide_content">
        <div class="container"><!-- STRART CONTAINER -->


%{--                <div class="page__heading d-flex flex-column flex-md-row align-items-center justify-content-center justify-content-lg-between text-center text-lg-left">--}%
%{--                    <h1 class="m-lg-3">Account Management </h1>--}%
%{--                </div>--}%

                <div class="row">
                    <div class="col-12">

                        <div class="card-box">

                            %{--                                <h4 class="header-title m-b-15 m-t-0"></h4>--}%

                            <table id="Tableinlist" class="table table-hover m-0 tickets-list table-actions-bar dt-responsive nowrap" cellspacing="0" width="100%" >
                                <thead>

                                <tr>
                                    <th style="text-align: center">Name</th>
                                    <th style="text-align: center">Generated Resumes</th>
                                    <th style="text-align: center">Download</th>



                                </tr>
                                </thead>
                            <tbody>

                            </tbody>

                            </table>
                        </div>
                    </div><!-- end col -->
                </div>


        </div><!-- END CONTAINER-->
    </div>
</section>

<a href="#" class="scrollup" style="display: none;"><i class="ion-ios-arrow-up"></i></a>

<!-- Latest jQuery -->
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
<asset:javascript src="datatables.min.js"/>
<!-- isotope min js -->
<asset:javascript src="isotope.min.js"/>
<!-- vanilla-tilt.babel.min js -->
<asset:javascript src='vanilla-tilt.babel.min.js'/>
<asset:javascript src='dataTables.bootstrap4.min.js'/>
<asset:javascript src='dataTables.responsive.min.js'/>

<!-- mCustomScrollbar.concat.min js -->
<asset:javascript src="jquery.mCustomScrollbar.concat.min.js"/>
<!-- scripts js -->
<asset:javascript src="scripts.js"/>


<script>
        listTable()

    function listTable() {
        $("#Tableinlist").DataTable({
            "order": [[0, "desc"]],
            sPaginationType: "simple_numbers",
            responsive: {
                details: true
            },
            searching:true,
            destroy: true,
            autoWidth: true,
            bJQueryUI: true,
            info: true,
            processing: true,
            serverSide: true,
            language: {
                searchPlaceholder: "Search Resume"
            },
            ajax: {
                type: 'GET',
                url: 'generatedresume',
                dataType: 'json',
                dataSrc: function (json) {
                    // console.log(json.data)
                    var return_data = [];
                    var dwnldbtn = <button type="submit" class="btn btn-success">Download</button>


                    for (var i = 0; i < json.data.length; i++) {


                        return_data.push({
                            'fullname': json.data[i].profile?.fullName,
                            'pdfname': json.data[i].name,
                            'action': dwnldbtn
                        });
                    }
                    return return_data;
                }
            },
            columns: [
                {'data': 'fullname'},
                {'data': 'pdfname'},
                // {'data': 'action'}
            ]

        });



    }

</script>


</body>
</html>