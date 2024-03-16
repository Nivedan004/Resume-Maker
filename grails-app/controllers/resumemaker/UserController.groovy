package resumemaker


class UserController {

    def index() {
        render(view: "index")
    }

    def login() {
        try {
            def email = params.emailaddress
            def user = User.findByEmail(email)

            if (user) {
                // Retrieve the user's profile and store it in the session
                Profile userProfile = Profile.findByEmail(email)
                session.setAttribute("userProfile", userProfile)


                session.setAttribute("email", user.email)
                session.setMaxInactiveInterval(3600)
                session.setAttribute("web", true)
                redirect(uri: "/profile")
            } else {
                User user1 = new User()
                user1.setEmail(params.emailaddress)
                User savedusr = user1.save(flush:true)
                if (savedusr) {
                    // Create a new profile for the user
                    Profile userProfile = new Profile()
                    userProfile.setEmail(params.emailaddress)
                    userProfile.save(flush: true)

                    // Store the user's profile in the session
                    session.setAttribute("userProfile", userProfile)

                    session.setAttribute("email", savedusr.email)
                    session.setAttribute("web", true)
                    redirect(uri: "/createresume")
                } else {
                    response status: 400
                }
            }
        } catch (Exception ex) {
            println "An exception occurred: ${ex.message}"
        }
    }
    def logout() {
        session.invalidate()
        redirect(url: "/")
    }
}