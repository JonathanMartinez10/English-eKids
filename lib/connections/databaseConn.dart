import 'package:english_ekids/Entities/StudentDetailsClass.dart';
import 'package:sqflite/sqflite.dart';

class StudentDatabase {
  var db;

  initDB() async {
    db = await openDatabase('students.db', version: 1,
    onCreate: (Database data, int version){
      data.execute("CREATE TABLE student (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "
          "name TEXT, email TEXT , "
          "pass TEXT)");
    } );
    print("DB Inicializada");
  }

  insert(StudentDetail studentDetails) async{
    db.insert('student', studentDetails.toMap());
  }

  update(StudentDetail studentDetails) async{
    db.update('student',studentDetails.toMap(),where: "id=?",whereArgs: [studentDetails.id]);
  }
  
  delete(StudentDetail studentDetails) async{
    db.delete('student',where: "id=?",whereArgs: [studentDetails.id]);
  }
  
  Future<List<StudentDetail>> getAll() async{
    print("Listar");
    List<Map<String,dynamic>> results = await db.query('student');
    return results.map((map) => StudentDetail.fromMap(map)).toList();
  }

}