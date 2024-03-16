package resumemaker

import grails.converters.JSON

class EducationController {

    def index() {

    }

    def addEducation() {
        try {
            println(params.educations)
            def edu = JSON.parse(params.educations)
            def userEmail = session.getAttribute("email")

            if (userEmail) {
                // Retrieve or create the user's profile
                Profile userProfile = Profile.findByEmail(userEmail)
                if (!userProfile) {
                    userProfile = new Profile(email: userEmail)
                }
                def educations = []
                edu.each { education ->
                    def StudyProgramName = education.studyProgramName
                    def Institution = education.institution
                    def StartDate = education.startDate
                    def EndDate = education.endDate
                    def Place = education.place
                    def Grade = education.grade
                    def neweducation = new Education(studyProgramName: StudyProgramName, institution: Institution,startDate:StartDate,endDate:EndDate,place:Place,grade:Grade)
                    educations.add(neweducation)
                }

                // Associate the education with the user's profile
                userProfile.educations=educations

                // Save the user's profile
                userProfile.save(flush: true)

                response.status = 200
            } else {
                response.status = 401 // User not logged in
            }
        } catch (Exception ex) {
            println "An exception occurred: ${ex.message}"
            response.status = 500 // Internal server error
        }
    }
}