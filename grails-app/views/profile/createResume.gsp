<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">>
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="Anil z" name="author">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
          content="Creating a professional, modern and sophisticated online resume website is easy with Martyn CV / Resume">
    <meta name="keywords"
          content="CV, resume, card, vcard, online cv, online resume, professional resume, portfolio, one page, bootstrap responsive, creative html template, creative design, parallax, personal">

    <!-- SITE TITLE -->
    <title>Resume Maker</title>
    <!-- Favicon Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png">
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
    <asset:stylesheet href="datepicker.min.css"/>
    <!-- Magnific Popup CSS -->
    <asset:stylesheet href="magnific-popup.css"/>
    <!-- Scrollbar Css -->
    <asset:stylesheet href="jquery.mCustomScrollbar.min.css"/>
    <asset:stylesheet src="sweetalert2.css"/>

    <!-- Style CSS -->
    <asset:stylesheet href="style.css"/>
    <asset:stylesheet href="responsive.css"/>
    <style>
    /* Custom styles for dark theme dropdown */
    .custom-select-dark {
        color: white;
        background-color: #343a40; /* Dark background color */
        border-color: #343a40; /* Dark border color */
    }

    .custom-select-dark option {
        color: black; /* Text color for options */
        background-color: white; /* Background color for options */
    }

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
    <!-- Your header content goes here -->

</header>
<!-- END HEADER -->

<!-- START SECTION TABS -->
<section id="tabs" class="bg_black4">
    <div class="container">
        <div class="row">
            <div class="col-12 text-right">
                <a href="profile" class="btn btn-success btn-sm add-education" role="button">View Profile</a>

            </div>

            <div class="col-12">
                <br>

                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <strong class="nav-link " style="color: white" id="about-tab" data-toggle="tab"
                                href="#about-form"
                                role="tab" aria-controls="about-form" aria-selected="true">About</strong>
                    </li>
                    <li class="nav-item">
                        <strong class="nav-link" id="skills-tab" style="color: white" data-toggle="tab"
                                href="#skills-form"
                                role="tab" aria-controls="skills-form" aria-selected="true">Skills</strong>
                    </li>
                    <li class="nav-item">
                        <strong class="nav-link" id="education-tab" style="color: white" data-toggle="tab"
                                href="#education-form" role="tab" aria-controls="education-form"
                                aria-selected="false">Education</strong>
                    </li>
                    <li class="nav-item">
                        <strong class="nav-link" id="projects-tab" style="color: white" data-toggle="tab"
                                href="#projects-form" role="tab" aria-controls="projects-form"
                                aria-selected="false">Projects</strong>
                    </li>
                    <li class="nav-item">
                        <strong class="nav-link" id="experiences-tab" style="color: white" data-toggle="tab"
                                href="#experiences-form" role="tab" aria-controls="experiences-form"
                                aria-selected="false">Experiences</strong>
                    </li>

                </ul>


                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="about-form" role="tabpanel" aria-labelledby="about-tab">
                        <!-- Your About form content goes here -->
                        <section id="about" class="bg_black4 form_style2">
                            <div class="container">

                                <form id="about_form" enctype="multipart/form-data">
                                    <div class="row align-items-center animation" data-animation="fadeInUp"
                                         data-animation-delay="0.02s">
                                        <div class="col-12">
                                            <div class="heading_s1 heading_light">
                                                <h2>About Me</h2>
                                            </div>
                                        </div>


                                        <div class="col-md-4">
                                            <div class="form-group ">
                                                <label for="fullname">Full Name:</label>
                                                <input type="text" class="form-control" id="fullname"
                                                       value="${profile.fullName}" name="fullname"
                                                       required>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group ">
                                                <label for="profiletitle">Profile Title:</label>
                                                <input type="text" class="form-control" id="profiletitle"
                                                       value="${profile.title}" name="profiletitle"
                                                       required>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="date_of_birth">Date of Birth:</label>
                                                <%
                                                    def dateFormat = new java.text.SimpleDateFormat('yyyy-MM-dd')
                                                    def formattedDate = dateFormat.format(profile.dateOfBirth)
                                                %>
                                                <input type="date" class="form-control" id="date_of_birth" name="date_of_birth" value="${formattedDate}">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="mobile">Mobile:</label>
                                                <input type="tel" class="form-control" id="mobile" name="mobile"
                                                       value="${profile.contactNumber}"
                                                       required>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="gender" style="color: white;">Gender:</label>
                                                <select class="form-control custom-select-dark" id="gender"
                                                        name="gender" required>
                                                    <option value=""
                                                            style="background-color: white;">Select Gender</option>
                                                    <option value="Male" ${profile.gender == 'Male' ? 'selected' : ''}>Male</option>
                                                    <option value="Female" ${profile.gender == 'Female' ? 'selected' : ''}>Female</option>
                                                    <option value="Other" ${profile.gender == 'Other' ? 'selected' : ''}>Other</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="marital_status"
                                                       style="color: white;">Marital Status:</label>
                                                <select class="form-control custom-select-dark" id="marital_status"
                                                        name="marital_status" required>
                                                    <option value=""
                                                            style="background-color:white;">Select Marital Status</option>
                                                    <option value="Single" ${profile.maritalStatus == 'Single' ? 'selected' : ''}>Single</option>
                                                    <option value="Married" ${profile.maritalStatus == 'Married' ? 'selected' : ''}>Married</option>
                                                    <option value="Divorced" ${profile.maritalStatus == 'Divorced' ? 'selected' : ''}>Divorced</option>
                                                    <option value="Widowed" ${profile.maritalStatus == 'Widowed' ? 'selected' : ''}>Widowed</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group ">
                                                <label for="nationality">Nationality:</label>
                                                <input type="text" class="form-control" id="nationality"
                                                       name="nationality"
                                                       value="${profile.nationality}" required>
                                            </div>
                                        </div>

                                        <div class="col-md-8">
                                            <div class="form-group ">
                                                <label for="address">Address:</label>
                                                <input type="text" class="form-control" id="address" name="address"
                                                       value="${profile.address}"
                                                       required>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group ">
                                                <label for="summary">Summary:</label>
                                                <textarea class="form-control" id="summary" name="summary" rows="3"
                                                          required>${profile.summary}</textarea>
                                            </div>
                                        </div>


                                        <div class="col-md-12">
                                            <div class="about_img2 animation" data-animation="fadeInUp"
                                                 data-animation-delay="0.02s">
                                                <label for="profileimage">Upload Image:</label>
                                                <input type="file" class="form-control-file" id="profileimage"
                                                       name="profileimage"
                                                       value="${profile.profilePhoto}"
                                                       accept="image/*">
                                            </div>
                                        </div>

                                    </div>
                                    <!-- Submit button at the bottom -->
                                    <div class="row">
                                        <div class="col-md-12 text-center">
                                            <button type="submit" class="btn btn-primary">Save Profile</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </section>
                    </div>

                    <div class="tab-pane fade" id="skills-form" role="tabpanel" aria-labelledby="skills-tab">
                        <!-- Your Skills form content goes here -->
                        <section id="skills" class="bg_black4">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="heading_s1 heading_light">
                                            <h2>Skills</h2>
                                        </div>
                                    </div>
                                </div>


                                <div id="skills_container" class=" form_style2 ">
                                    <g:each in="${profile.skills}" var="skill">
                                        <form class="skills_form">
                                            <div class="row">
                                                <!-- Initial skill input fields -->
                                                <div class="form-group col-md-4">
                                                    <label for="skill_name_1">Skill Name:</label>
                                                    <input type="text" class="form-control" value="${skill.name}"
                                                           id="skill_name_1"
                                                           name="skill_name" required>
                                                </div>

                                                <div class="form-group col-md-4">
                                                    <label for="skill_version_${skill.name}">Skill Level:</label>
                                                    <input type="number" class="form-control"
                                                           id="skill_version_${skill.name}" name="skill_level"
                                                           value="${skill.proficiencyLevel}" min="0" max="100">
                                                </div>
                                            </div>
                                        </form>
                                    </g:each>
                                </div>


                                <div class="row mt-3">
                                    <div class="col-md-12 text-left">
                                        <button type="button" class="btn btn-secondary btn-sm"
                                                id="add_skill_btn">Add Skill</button>


                                        <button type="button" class="btn btn-primary btn-sm"
                                                id="skillsubmit_button">Save Skills</button>

                                        <button type="button" class="btn btn-secondary btn-sm"
                                                id="remove_skill_btn">Remove Skill</button>
                                    </div>
                                </div>
                            </div>

                            <!-- Submit button outside the dynamic form container -->
                            %{--        <div class="row mt-3">--}%
                            %{--            <div class="col-md-12 text-center">--}%

                            %{--            </div>--}%
                            %{--        </div>--}%

                        </section>
                    </div>

                    <div class="tab-pane fade" id="education-form" role="tabpanel" aria-labelledby="education-tab">
                        <!-- Your Education form content goes here -->
                        <section id="education" class="bg_black4">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="heading_s1 heading_light">
                                            <h2>Education Details</h2>
                                        </div>
                                    </div>

                                    <div id="education_container" class="form_style2">
                                        <!-- Initial education input fields -->

                                        <div class="education-section">
                                            <g:each in="${profile.educations}" var="edu">
                                                <form class="education_form">
                                                    <div class="row">
                                                        <div class="form-group col-md-4">
                                                            <label for="study_program_name_1">Study Program Name:</label>
                                                            <input type="text" class="form-control"
                                                                   id="study_program_name_1"
                                                                   name="studyProgramName"
                                                                   value="${edu.studyProgramName}" required>
                                                        </div>


                                                        <div class="form-group col-md-4">
                                                            <label for="institution_1">Institution:</label>
                                                            <input type="text" class="form-control" id="institution_1"
                                                                   name="institution"
                                                                   value="${edu.institution}" required>
                                                        </div>

                                                        <div class="form-group col-md-4">
                                                            <label for="place_1">Place:</label>
                                                            <input type="text" class="form-control" id="place_1"
                                                                   name="place"
                                                                   value="${edu.place}" required>
                                                        </div>


                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="start_date_1">Start Date:</label>
                                                                <%
                                                                    def startDateFormat = new java.text.SimpleDateFormat('yyyy-MM-dd')
                                                                    def formattedStartDate = startDateFormat.format(edu.startDate)
                                                                %>
                                                                <input type="date" class="form-control" id="start_date_1" name="startDate" value="${formattedStartDate}">
                                                            </div>
                                                        </div>


                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="end_date_1">End Date:</label>
                                                                <%
                                                                    def endDateFormat = new java.text.SimpleDateFormat('yyyy-MM-dd')
                                                                    def formattedEndDate = endDateFormat.format(edu.endDate)
                                                                %>
                                                                <input type="date" class="form-control" id="end_date_1" name="endDate" value="${formattedEndDate}">
                                                            </div>
                                                        </div>



                                                        <div class="form-group col-md-4">
                                                            <label for="grade_1">Grade:</label>
                                                            <input type="text" class="form-control" id="grade_1"
                                                                   name="grade"
                                                                   value="${edu.grade}" required>
                                                        </div>
                                                    </div>
                                                </form>
                                            </g:each>
                                        </div>
                                    </div>

                                    <div class="row mt-3">
                                        <div class="col-md-12 text-center">
                                            <button type="button"
                                                    class="btn btn-secondary btn-sm add-education">Add Education</button>
                                            <button type="button" class="btn btn-primary btn-sm"
                                                    id="educationsubmit_button">Save Education</button>
                                            <button type="button" class="btn btn-secondary btn-sm"
                                                    id="educationremove_button">Remove Education</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>

                    <div class="tab-pane fade" id="projects-form" role="tabpanel" aria-labelledby="projects-tab">
                        <!-- Your Projects form content goes here -->
                        <section id="projects" class="bg_black4">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="heading_s1 heading_light">
                                            <h2>Project Details</h2>
                                        </div>
                                    </div>

                                    <div id="projects_container" class="form_style2">
                                        <!-- Initial project input fields -->
                                        <div class="project-section">
                                            <g:each in="${profile.projects}" var="project">
                                                <form class="project_form">
                                                    <div class="row">
                                                        <div class="form-group col-md-6">
                                                            <label for="project_title_1">Project Title:</label>
                                                            <input type="text" class="form-control" id="project_title_1"
                                                                   name="projectTitle" value="${project.title}"
                                                                   required>
                                                        </div>


                                                        <div class="form-group col-md-6">
                                                            <label for="project_role_1">Project Role:</label>
                                                            <input type="text" class="form-control" id="project_role_1"
                                                                   name="projectRole" value="${project.role}" required>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="project_start_date_1">Start Date:</label>
                                                                <%
                                                                    def projectStartDateFormat = new java.text.SimpleDateFormat('yyyy-MM-dd')
                                                                    def formattedProjectStartDate = projectStartDateFormat.format(project.startDate)
                                                                %>
                                                                <input type="date" class="form-control" id="project_start_date_1" name="projectStartDate" value="${formattedProjectStartDate}">
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="project_end_date_1">End Date:</label>
                                                                <%
                                                                    def projectEndDateFormat = new java.text.SimpleDateFormat('yyyy-MM-dd')
                                                                    def formattedProjectEndDate = projectEndDateFormat.format(project.endDate)
                                                                %>
                                                                <input type="date" class="form-control" id="project_end_date_1" name="projectEndDate" value="${formattedProjectEndDate}">
                                                            </div>
                                                        </div>

                                                        <div class="form-group col-md-6">
                                                            <label for="technologies_used_1">Technologies Used:</label>
                                                            <input type="text" class="form-control"
                                                                   id="technologies_used_1"
                                                                   name="technologiesUsed"
                                                                   value="${project.technologiesUsed}" required>
                                                        </div>

                                                        <div class="form-group col-md-12">
                                                            <label for="project_description_1">Project Description:</label>
                                                            <textarea class="form-control" id="project_description_1"
                                                                      name="projectDescription"
                                                                      required>${project.description}</textarea>
                                                        </div>

                                                    </div>
                                                </form>
                                            </g:each>
                                        </div>
                                    </div>

                                    <div class="row mt-3">
                                        <div class="col-md-12 text-center">
                                            <button type="button"
                                                    class="btn btn-secondary btn-sm add-project">Add Project</button>
                                            <button type="button" class="btn btn-primary btn-sm"
                                                    id="projectsubmit_button">Save Project</button>
                                            <button type="button" class="btn btn-secondary btn-sm"
                                                    id="remove_project_btn">Remove Project</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>

                    <div class="tab-pane fade" id="experiences-form" role="tabpanel" aria-labelledby="experiences-tab">
                        <!-- Your Experiences form content goes here -->
                        <section id="experiences" class="bg_black4">
                            <div class="container">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="heading_s1 heading_light">
                                            <h2>Experiences</h2>
                                        </div>
                                    </div>

                                    <div id="experiences_container" class="form_style2">
                                        <g:each in="${profile.experiences}" var="experience">
                                            <form class="experience_form">
                                                <div class="row">
                                                    <!-- Initial experience input fields -->
                                                    <div class="form-group col-md-6">
                                                        <label for="job_title_1">Job Title:</label>
                                                        <input type="text" class="form-control"
                                                               value="${experience.jobTitle}" id="job_title_1"
                                                               name="job_title" required>
                                                    </div>

                                                    <div class="form-group col-md-6">
                                                        <label for="company_name_1">Company Name:</label>
                                                        <input type="text" class="form-control"
                                                               value="${experience.companyName}" id="company_name_1"
                                                               name="company_name" required>
                                                    </div>



                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="start_date_1">Start Date:</label>
                                                            <%
                                                                def experienceStartDateFormat = new java.text.SimpleDateFormat('yyyy-MM-dd')
                                                                def formattedExperienceStartDate = experienceStartDateFormat.format(experience.startDate)
                                                            %>
                                                            <input type="date" class="form-control" id="start_date" name="start_date" value="${formattedExperienceStartDate}">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="end_date_1">End Date:</label>
                                                            <%
                                                                def experienceEndDateFormat = new java.text.SimpleDateFormat('yyyy-MM-dd')
                                                                def formattedExperienceEndDate = experienceEndDateFormat.format(experience.endDate)
                                                            %>
                                                            <input type="date" class="form-control" id="end_date" name="end_date" value="${formattedExperienceEndDate}">
                                                        </div>
                                                    </div>


                                                    <div class="form-group col-md-6">
                                                        <label for="location_1">Location:</label>
                                                        <input type="text" class="form-control"
                                                               value="${experience.location}" id="location_1"
                                                               name="location" required>
                                                    </div>

                                                    <div class="form-group col-md-12">
                                                        <label for="responsibilities_1">Responsibilities:</label>
                                                        <textarea class="form-control" id="responsibilities_1"
                                                                  name="responsibilities" rows="4"
                                                                  required>${experience.responsibilities}</textarea>
                                                    </div>
                                                </div>
                                            </form>
                                        </g:each>
                                    </div>

                                    <div class="row mt-3">
                                        <div class="col-md-12 text-center">
                                            <button type="button" class="btn btn-secondary btn-sm"
                                                    id="add_experience_btn">Add Experience</button>


                                            <button type="button" class="btn btn-primary btn-sm"
                                                    id="experience_submit_button">Save Experience</button>



                                            <button type="button" class="btn btn-secondary btn-sm"
                                                    id="remove_experience_btn">Remove Experience</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- START HEADER -->




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
%{--                            <button type="submit" title="Subscribe" class="btn btn-default btn-radius btn-aylen"--}%
%{--                                    name="submit" value="Submit">--}%
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
%{--                            <p class="copyright m-0 text-center">© 2019 All Rights Reserved By <a href="#"--}%
%{--                                                                                                  class="text_default">Bestwebcreator</a>--}%
%{--                            </p>--}%
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

<asset:javascript src="sweetalert2.js"/>
<!-- typed.min js -->
%{--<asset:javascript src="typed.min.js"/>--}%
<!-- typed text js -->
%{--<asset:javascript src="typed-text.js"/>--}%
<!-- mCustomScrollbar.concat.min js -->
<asset:javascript src="jquery.mCustomScrollbar.concat.min.js"/>
<!-- scripts js -->
<asset:javascript src="scripts.js"/>

<script>
    $(document).ready(function () {
        $('#myTab a').on('click', function (e) {
            e.preventDefault();
            $(this).tab('show');
        });
    });


    $(document).ready(function () {
        var skillIndex = 2; // Initialize skill index

        $('#add_skill_btn').click(function () {
            const newSkillField = `
           <div class="skill-section animation"data-animation="fadeInUp" data-animation-delay="0.04s">
            <form class="skill_form">
             <div class="row">
            <div class="form-group col-md-4">
                <label for="skill_name_${skillIndex}">Skill Name:</label>
                <input type="text" class="form-control" id="skill_name_${skillIndex}" name="skill_name" required>
            </div>
            <div class="form-group col-md-4">
                <label for="skill_level_${skillIndex}">Skill Level:</label>
                <input type="number" class="form-control" id="skill_level_${skillIndex}" name="skill_level" min="0" max="100" required>
            </div>
            </div>
         </form>
     </div>
        `;
            $('#skills_container').append(newSkillField);
            skillIndex++; // Increment skill index
        });


        $('#skillsubmit_button').click(function (event) {
            event.preventDefault();
            var formDataArray = [];

            // Serialize form data for each form
            var forms = $('#skills_container').find("form")


            forms.each(function (index, form) {
                var formData = Object.fromEntries(new FormData(form))
                formDataArray.push(formData);
                console.log(formData)
            });

            console.log(forms)
            console.log(formDataArray)

            // Combine serialized form data
            // var combinedFormData = formDataArray.join('&');

            // Send data to the server using AJAX
            $.ajax({
                type: 'POST',
                url: 'skills',
                data: {skills: JSON.stringify(formDataArray)},
                success: function (response) {
                    Swal.fire({
                        title: 'Skills successfully Saved!',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $('#skills_form')[0].reset(); // Reset the form
                        }
                    });
                }
                ,
                error: function (xhr, status, error) {
                    alert('Error: ' + error);
                }
            });
        });
        $('#remove_skill_btn').click(function () {
            if (skillIndex > 2) {
                $('.skill-section:last').remove();
                skillIndex--; // Decrement skill index
            } else {
                alert("You can't remove all skill fields.");
            }
        });


    })


    //education
    $(document).ready(function () {
        var educationIndex = 2; // Initialize education index

        // Function to add new education fields
        $('.add-education').click(function () {
            const newEducationField = `
        <div class="education-section animation"data-animation="fadeInUp" data-animation-delay="0.04s">
            <form class="education_form">
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="study_program_name_${educationIndex}">Study Program Name:</label>
                        <input type="text" class="form-control" id="study_program_name_${educationIndex}" name="studyProgramName" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="institution_${educationIndex}">Institution:</label>
                        <input type="text" class="form-control" id="institution_${educationIndex}" name="institution" required>
                    </div>
                      <div class="form-group col-md-4">
                        <label for="place_${educationIndex}">Place:</label>
                        <input type="text" class="form-control" id="place_${educationIndex}" name="place" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="start_date_${educationIndex}">Start Date:</label>
                        <input type="date" class="form-control" id="start_date_${educationIndex}" name="startDate" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="end_date_${educationIndex}">End Date:</label>
                        <input type="date" class="form-control" id="end_date_${educationIndex}" name="endDate" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="grade_${educationIndex}">Grade:</label>
                        <input type="text" class="form-control" id="grade_${educationIndex}" name="grade" required>
                    </div>
                </div>
            </form>
        </div>
        `;
            $('#education_container').append(newEducationField);
            educationIndex++; // Increment education index
        });


        // Function to submit education data
        $('#educationsubmit_button').click(function (event) {
            event.preventDefault();
            var formDataArray = [];

            // Serialize form data for each form
            $('.education_form').each(function (index, form) {
                var formData = {};
                $(form).find('input').each(function () {
                    formData[$(this).attr('name')] = $(this).val();
                });
                formDataArray.push(formData);
            });

            console.log(formDataArray);

            // Send data to the server using AJAX
            $.ajax({
                type: 'POST',
                url: 'education',
                data: {educations: JSON.stringify(formDataArray)},
                success: function (response) {
                    Swal.fire({
                        title: 'Education Details successfully Saved!',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $('.education_form')[0].reset(); // Reset the form
                        }
                    });
                }
                ,
                error: function (xhr, status, error) {
                    alert('Error: ' + error);
                }
            });
        });
        $('#educationremove_button').click(function () {
            if (educationIndex > 2) {
                $('.education-section:last').remove(); // Remove the last education section
                educationIndex--; // Decrement education index
            } else {
                alert("You can't remove all education fields.");
            }
        });

    });

    //projects
    $(document).ready(function () {
        var projectIndex = 2; // Initialize project index

        $('.add-project').click(function () {
            const newProjectField = `
            <div class="project-section animation" data-animation="fadeInUp" data-animation-delay="0.04s">
                <form class="project_form">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="project_title_${projectIndex}">Project Title:</label>
                            <input type="text" class="form-control" id="project_title_${projectIndex}" name="projectTitle" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="project_role_${projectIndex}">Project Role:</label>
                            <input type="text" class="form-control" id="project_role_${projectIndex}" name="projectRole" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="project_start_date_${projectIndex}">Start Date:</label>
                            <input type="date" class="form-control" id="project_start_date_${projectIndex}" name="projectStartDate" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="project_end_date_${projectIndex}">End Date:</label>
                            <input type="date" class="form-control" id="project_end_date_${projectIndex}" name="projectEndDate" required>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="technologies_used_${projectIndex}">Technologies Used:</label>
                            <input type="text" class="form-control" id="technologies_used_${projectIndex}" name="technologiesUsed" required>
                        </div>

                        <div class="form-group col-md-12">
                            <label for="project_description_${projectIndex}">Project Description:</label>
                            <textarea class="form-control" id="project_description_${projectIndex}" name="projectDescription" required></textarea>
                        </div>
                    </div>
                </form>
            </div>
        `;
            $('#projects_container').append(newProjectField);
            projectIndex++; // Increment project index
        });

        $('#projectsubmit_button').click(function (event) {
            event.preventDefault();
            var formDataArray = [];

            // Serialize form data for each form
            $('.project_form').each(function (index, form) {
                var formData = {};
                $(form).find('input, textarea').each(function () {
                    formData[$(this).attr('name')] = $(this).val();
                });
                formDataArray.push(formData);
            });

            console.log(formDataArray);

            // Send data to the server using AJAX
            $.ajax({
                type: 'POST',
                url: 'project', // Change to your backend endpoint
                data: {projects: JSON.stringify(formDataArray)},
                success: function (response) {
                    // Display success message using SweetAlert2
                    Swal.fire({
                        title: 'Project Details successfully Saved!',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Reset the form with class 'project_form'
                            $('.project_form').trigger('reset');
                        }
                    });
                }
                ,
                error: function (xhr, status, error) {
                    alert('Error: ' + error);
                }
            });
        });
        $('#remove_project_btn').click(function () {
            if (projectIndex > 2) {
                $('.project-section:last').remove();
                projectIndex--;
            } else {
                alert("Cannot remove the last experience section.");
            }
        });

    });
    //Experience


    $(document).ready(function () {
        var experienceIndex = 2; // Initialize experience index (1 is already present)

        $('#add_experience_btn').click(function () {
            const newExperienceField = `
                <div class="row experience-section" data-index="${experienceIndex}">
                    <form class="experience_form">
                      <div class="row">
                        <div class="form-group col-md-6">
                            <label for="job_title_${experienceIndex}">Job Title:</label>
                            <input type="text" class="form-control" id="job_title_${experienceIndex}" name="job_title" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="company_name_${experienceIndex}">Company Name:</label>
                            <input type="text" class="form-control" id="company_name_${experienceIndex}" name="company_name" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="start_date_${experienceIndex}">Start Date:</label>
                            <input type="date" class="form-control" id="start_date_${experienceIndex}" name="start_date">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="end_date_${experienceIndex}">End Date:</label>
                            <input type="date" class="form-control" id="end_date_${experienceIndex}" name="end_date">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="location_${experienceIndex}">Location:</label>
                            <input type="text" class="form-control" id="location_${experienceIndex}" name="location" required>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="responsibilities_${experienceIndex}">Responsibilities:</label>
                            <textarea class="form-control" id="responsibilities_${experienceIndex}" name="responsibilities" rows="4" required></textarea>
                        </div>
                        </div>
                    </form>
                </div>
            `;
            $('#experiences_container').append(newExperienceField);
            experienceIndex++; // Increment experience index
        });

        $('#experience_submit_button').click(function (event) {
            event.preventDefault();
            var formDataArray = [];

            // Serialize form data for each form
            $('.experience_form').each(function (index, form) {
                var formData = {};
                $(form).find('input, textarea').each(function () {
                    formData[$(this).attr('name')] = $(this).val();
                });
                formDataArray.push(formData);
            });

            console.log(formDataArray);

            // Send data to the server using AJAX
            $.ajax({
                type: 'POST',
                url: 'experience',
                data: {experiences: JSON.stringify(formDataArray)},
                success: function (response) {
                    // Display success message using SweetAlert2
                    Swal.fire({
                        title: 'Experience successfully Saved!',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Reset the form with class 'experience_form'
                            $('.experience_form').trigger('reset');
                        }
                    });
                }
                ,
                error: function (xhr, status, error) {
                    alert('Error: ' + error);
                }
            });
        });

        // Remove experience section
        $('#remove_experience_btn').click(function () {
            if (experienceIndex > 2) {
                $('.experience-section:last').remove();
                experienceIndex--;
            } else {
                alert("Cannot remove the last experience section.");
            }
        });
    });

    //    about ajax
    $(document).ready(function () {
        $('#about_form').submit(function (event) {
            event.preventDefault(); // Prevent the default form submission

            // Create a new FormData object and pass the form element directly
            var formData = new FormData(this);

            // Append additional fields to the FormData object
            formData.append('additionalField', 'additionalValue');

            // Send data to the server using AJAX
            $.ajax({
                type: 'POST',
                url: 'about',
                data: formData,
                contentType: false, // Set contentType to false
                processData: false, // Prevent jQuery from processing the data
                success: function () {
                    Swal.fire({
                        title: 'About Details successfully saved!',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $('#about_form')[0].reset(); // Reset the form
                        }
                    });

                },
                error: function (xhr, status, error) {
                    // Handle error response
                    alert('Error: ' + error);
                }
            });
        });
    });

</script>
</body>
</html>