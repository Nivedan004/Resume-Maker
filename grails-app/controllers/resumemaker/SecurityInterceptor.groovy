package resumemaker

class SecurityInterceptor {
    SecurityInterceptor() {
        matchAll()
    }

    boolean before() {
        if ((actionName == "login" || (controllerName == 'user' && actionName == 'index'))) {
            return true
        }
 // Check if the user is authenticated
        if (session.web && session.userProfile) {
            return true
        }

        // Redirect unauthenticated users to the login page
        redirect(uri:'/')
//        redirect(action: "index", controller: "user")
        return false
    }

    boolean after() {
        return true
    }

    void afterView() {
        // no-op
    }
}
