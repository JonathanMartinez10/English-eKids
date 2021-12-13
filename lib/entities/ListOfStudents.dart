import 'package:english_ekids/entities/StudentDetailsClass.dart';

class ListOfStudents {
  static final List<StudentDetail> students = [];

  void addStudents(StudentDetail student) {
    students.add(student);
  }

  void removeStudents(int index) {
    students.removeAt(index);
  }

  List<StudentDetail> getStudents() {
    return students;
  }
}
