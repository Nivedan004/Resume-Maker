package resumemaker

class Language {
    String name
    String proficiencyLevel // E.g., Basic, Intermediate, Advanced

    static constraints = {
        proficiencyLevel nullable: true
    }
}
