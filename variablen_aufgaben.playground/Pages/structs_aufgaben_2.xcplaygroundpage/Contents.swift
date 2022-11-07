
struct School{
    let nameSchool: String
    var countOfStudent: Int
    let countOfBuilding: Int
    var students: [Student]
    let location: String
    var teacher: Teacher
    
    
    struct City{
        let nameCity: String
        var numberOfResidents: String
    }
}

struct Teacher{
    let teacherName: String
    let teacherAge: Int
    let hauptFach: String
    let nebenFach: String
}

struct Student{
    let studentName: String
    var studentAge: Int
    var averageScore: Double
}

var studentA = Student(studentName: "Jakop", studentAge: 9, averageScore: 3.6)
var studentB = Student(studentName: "Sara", studentAge: 10, averageScore: 2.0)
var studentC = Student(studentName: "Jamaal", studentAge: 17, averageScore: 1.7)

var teacherA = Teacher(teacherName: "Rodriguez", teacherAge: 39, hauptFach: "Geschichte", nebenFach: "Englisch")

var cityA = School.City(nameCity: "Hamburg", numberOfResidents: "1,9 Millionen")

var school = School(nameSchool: "Stadtteil Schule", countOfStudent: 350, countOfBuilding: 10, students: [studentA,studentB,studentC], location: "Hamburg", teacher: teacherA)



