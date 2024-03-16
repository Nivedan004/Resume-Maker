package resumemaker

class Skill {

    String name
    String proficiencyLevel // E.g., Basic, Intermediate, Advanced


    static constraints = {
        proficiencyLevel nullable: true
    }
}
