package resumemaker

class BootStrap {
    def init = { servletContext ->
        def existingProfile = Profile.findByEmail("niv@gmail.com")

        if (!existingProfile) {
            // Create a new Profile instance
            Profile profile = new Profile(
                    fullName: "Nivedan K B",
                    address: "Chikkamagaluru",
                    contactNumber: "9480946312",
                    email: "niv@gmail.com",
                    summary: "Experienced professional with expertise in Java",
                    dateOfBirth: new Date(97, 4, 5), // Assuming 04/05/1997
                    gender: "Male",
                    maritalStatus: "Single",
                    nationality: "Indian",
                    declarationText: "I certify that the information provided is true and accurate."
            )
            // Initialize lists as empty lists
            profile.skills = []
            profile.languages = []
            profile.projects = []
            profile.educations = []
            profile.experiences = []

            // Add elements to the lists
            profile.skills.addAll([new Skill(name: "Java"), new Skill(name: "Python")])
            profile.languages.addAll([new Language(name: "English"), new Language(name: "Spanish")])
            profile.projects.addAll([new Project(title: "Project A"), new Project(title: "Project B")])
            profile.educations.addAll([new Education(studyProgramName: "Bachelor's in Computer Science"), new Education(studyProgramName: "Master's in Business Administration")])
            profile.experiences.addAll([new Experience(jobTitle: "Software Engineer at Company X"), new Experience(jobTitle: "Product Manager at Company Y")])

            // Save the profile
            Profile.withTransaction { status ->
                Profile savedProfile = profile.save(flush: true)
                if (savedProfile == null) {
                    status.setRollbackOnly()
                    println "Error occurred while saving profile."
                } else if (savedProfile.hasErrors()) {
                    status.setRollbackOnly()
                    println "Error occurred while saving profile: ${savedProfile.errors}"
                } else {
                    println "Profile saved successfully: $savedProfile"
                }
            }
        } else {
            println "A profile with the same email address already exists. Skipping creation."
        }
    }

    def destroy = {
    }
}
