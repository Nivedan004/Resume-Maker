package resumemaker

class Profile {

    String profilePhoto
    String title
    String fullName
    String address
    String contactNumber
    String email
    String summary

    Date dateOfBirth
    String gender
    String maritalStatus
    String nationality

    List <Skill> skills
    List <Language> languages
    List <Project> projects
    List <Education> educations
    List <Experience> experiences


    Date dateCreated
    Date lastUpdated

    static  embedded = ['skills','languages','projects','educations','experiences']


    static constraints = {

         profilePhoto nullable: true
        title nullable: true
         fullName nullable: true
         address nullable: true
         contactNumber nullable: true
         email unique: true
        summary nullable: true

         dateOfBirth nullable: true
         gender nullable: true
        maritalStatus nullable: true
         nationality nullable: true
        skills nullable:true
        languages nullable:true
        projects nullable:true
        educations nullable:true
        experiences nullable:true

    }
}
