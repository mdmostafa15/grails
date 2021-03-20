package sms

class Student {
    String name
    int age

    static constraints = {
        name size: 3..15, blank: false, unique: true, nullable: false
        age size: 3, blank: false, nullable: false
    }
}
