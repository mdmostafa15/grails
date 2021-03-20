package sms

class SmsController {

    def index() {
        def students= Student.list(sort:"name")
        [students:students]
    }
    def add(){
        [message: params.message]
    }
    def search(){

    }
    def stDataSave={
        def name = params.stName
        def age = params.stAge
        if (name && age){
            age = Integer.parseInt(age)
            def s = new Student(name: name, age:age)
            if(s.save())
                redirect(action:"add",params:[message:"success!"])
            else
                redirect (action: "add",params:[message: "unsuccessful!"])
        }
        else{
            redirect(action: "add",params:[message: "field are must not be blank"])
        }
    }
    def stSearch(){
        def name = params.sname
        def s = Student.findByName(name)
        if(s)
            render "${s.name}'s age is ${s.age}"
        else
            render "There is not student named ${name}"
    }

}
