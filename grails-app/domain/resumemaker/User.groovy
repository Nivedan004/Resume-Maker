package resumemaker

class User {
    String mobileNumber
    String email

    static constraints = {
        mobileNumber unique: true,nullable: true
        email unique: true
    }
}
