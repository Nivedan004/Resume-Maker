package resumemaker

import org.springframework.web.multipart.MultipartFile

import java.text.SimpleDateFormat

class ProfileController {

    def index() {
        def userEmail = session.getAttribute("email")
        def userProfile = Profile.findByEmail(userEmail)
        if (userProfile) {

            render(view: "index", model: [profile: userProfile])
        } else {
            render(view: "/error")
        }
    }

    def createResume() {
        def userEmail = session.getAttribute("email")
        def userProfile = Profile.findByEmail(userEmail)
        if (userProfile) {

            render(view: "createResume", model: [profile: userProfile])
        } else {
            render(view: "/login")
        }
    }

    def addDetails() {
        try {
            // Retrieve the email from the session
            def email = session.getAttribute("email")

            if (email) {
                // Create a new profile
                def profile = Profile.findByEmail(email)
                // Set profile properties
                profile.setFullName(params.fullname)
                profile.setSummary(params.summary)
                profile.setTitle(params.profiletitle)
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date dateOfBirth = dateFormat.parse(params.date_of_birth);

//// Set the time to midnight to extract only the date part
//                Calendar calendar = Calendar.getInstance();
//                calendar.setTime(dateOfBirth);
//                calendar.set(Calendar.HOUR_OF_DAY, 0);
//                calendar.set(Calendar.MINUTE, 0);
//                calendar.set(Calendar.SECOND, 0);
//                calendar.set(Calendar.MILLISECOND, 0);
//                dateOfBirth = calendar.getTime();

                profile.setDateOfBirth(dateOfBirth);


                profile.setGender(params.gender)
                profile.setContactNumber(params.mobile)
                profile.setAddress(params.address)
                profile.setMaritalStatus(params.marital_status)
                profile.setNationality(params.nationality)
                MultipartFile imageFile = params.profileimage

                if (imageFile && !imageFile.isEmpty()) {
                    // Save profile photo to the server
                    String uploadDir = AppConstants.PROFILEPATH
                    String fileName = "profile_${System.currentTimeMillis()}.jpg"
                    imageFile.transferTo(new File(uploadDir + fileName))

                    // Set profile photo path in the profile object
                    profile.profilePhoto = fileName
                }
                // Save the profile
                Profile savedProfile = profile.save(flush: true)

                if (savedProfile) {
                    response.status = 200
                } else {
                    response.status = 400
                }
            } else {
                response.status = 401 // User email not found in session
            }
        } catch (Exception ex) {
            println "An exception occurred: ${ex.message}"
            response.status = 500
        }
    }


    def editResume() {

    }

    def renderImage() {
        def imageName = params.imageName
        def imageFile = new File(AppConstants.PROFILEPATH + imageName)

        if (!imageFile.exists()) {
            response.status = 404 // Image not found
            return
        }

        // Set content type based on the image file extension
        response.setContentType('image/jpeg') // Adjust according to the image type
        response.outputStream << imageFile.newInputStream()
    }

}
