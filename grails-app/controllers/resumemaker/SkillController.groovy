package resumemaker

import grails.converters.JSON

class SkillController {

    def index() {}

    def addSkills() {
        try {

            def skillsinput = JSON.parse(params.skills)
            def userEmail = session.getAttribute("email")

            if (userEmail) {
                // Retrieve or create the user's profile
                Profile userProfile = Profile.findByEmail(userEmail)
                if (!userProfile) {
                    userProfile = new Profile(email: userEmail)
                }

                def skills = []

                // Iterate over the submitted skill data and create Skill objects
                skillsinput.each { skill ->
                    def skillName = skill.skill_name
                    def skillLevel = skill.skill_level
                    def newSkill = new Skill(name: skillName, proficiencyLevel: skillLevel)
                    skills.add(newSkill)
                }

                // Set the skills for the user's profile
                userProfile.skills = skills

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
