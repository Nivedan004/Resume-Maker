package resumemaker

import grails.converters.JSON

class ExperienceController {

    def index() { }

    def addExperience() {
        try {
            println(params.experiences)
            def exp = JSON.parse(params.experiences)
            def userEmail = session.getAttribute("email")

            if (userEmail) {
                // Retrieve or create the user's profile
                Profile userProfile = Profile.findByEmail(userEmail)
                if (!userProfile) {
                    userProfile = new Profile(email: userEmail)
                }

                def experiences = []
                exp.each { experience ->
                    def JobTitle = experience.job_title
                    def CompanyName = experience.company_name
                    def StartDate = experience.start_date
                    def EndDate = experience.end_date
                    def Location = experience.location
                    def Responsibilities = experience.responsibilities
                    def neweexperience = new Experience(jobTitle: JobTitle, companyName: CompanyName,startDate:StartDate,endDate:EndDate,location:Location,responsibilities:Responsibilities)
                    experiences.add(neweexperience)
                }

                userProfile.experiences=experiences

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