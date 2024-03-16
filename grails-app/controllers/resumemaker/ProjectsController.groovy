package resumemaker

import grails.converters.JSON

class ProjectsController {

    def index() { }

    def addProject(){
        try {
            println(params.projects)
            def projs = JSON.parse(params.projects)
            def userEmail = session.getAttribute("email")

            if (userEmail) {
                // Retrieve or create the user's profile
                Profile userProfile = Profile.findByEmail(userEmail)
                if (!userProfile) {
                    userProfile = new Profile(email: userEmail)
                }
                def projects = []
                projs.each { project ->
                    def projectTitle = project.projectTitle
                    def projectDescription = project.projectDescription
                    def projectRole = project.projectRole
                    def projectStartDate = project.projectStartDate
                    def projectEndDate = project.projectEndDate
                    def technologiesUsed = project.technologiesUsed.split(',').collect { it.trim() }
                    def newProject = new Project(
                            title: projectTitle,
                            description: projectDescription,
                            role: projectRole,
                            startDate: projectStartDate,
                            endDate: projectEndDate,
                            technologiesUsed: technologiesUsed
                    )
                    projects.add(newProject)
                }

                // Associate the projects with the user's profile
                userProfile.projects = projects

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
