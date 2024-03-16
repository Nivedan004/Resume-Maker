package resumemaker

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "User",action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
        "/profileimage"(controller: "Profile",action: "renderImage")


        "/sigin"(controller: "User",action: "index")
        "/login"(controller: "User",action: "login")
        "/logout"(controller: "User",action: "logout")
        "/profile"(controller: "Profile",action: "index")
        "/createresume"(controller: "Profile",action: "createResume")

        "/skills"(controller: "Skill",action: "addSkills")
        "/about"(controller: "Profile",action: "addDetails")
        "/education"(controller: "Education",action: "addEducation")
        "/project"(controller: "Projects",action: "addProject")
        "/experience"(controller: "Experience",action: "addExperience")
        "/resume"(controller: "Resume",action: "generateResumePdf")
        "/generatedresume"(controller: "Resume",action: "index")

    }
}
