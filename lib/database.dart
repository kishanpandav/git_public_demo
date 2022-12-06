import 'package:my_app/model/person.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  late Database db;

  void initDb() async {
    String path = await getDatabasesPath();
    db = await openDatabase(join(path, 'person.db'),
        onCreate: (db, version) async {
          print("Databse connect successfuly");
          await db.execute("""create table persons (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
           name TEXT NOT NULL,
           city TEXT NOT NULL
           )
           """);
        },
        onOpen: (db) => print("Databse opened"),
        version: 1);
  }

  Future<int> insertPerson(Person person) async {
    int result = await db.insert('persons', person.toMap());
    print("Person result $result");
    return result;
  }

  Future<List<Person>> retrievePersons() async {
    final List<Map<String, Object?>> queryRes = await db.query('persons');
    return queryRes.map((e) => Person.fromMap(e)).toList();
  }

  Future<int> deletePerson(int id) async {
    int result = await db.delete(
      'persons',
      where: "id = ?",
      whereArgs: [id],
    );
    return result;
  }

  Future<int> updatePerson(Person person, int id) async {
    int result = await db.update(
      'persons',
      person.toMap(),
      where: "id = ?",
      whereArgs: [id],
    );
    return result;
  }
}
