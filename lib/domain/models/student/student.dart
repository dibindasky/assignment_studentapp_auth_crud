import 'dart:io';

class Student {
  int? id;
  String name;
  int age;
  File? image;
  Student({required this.name, required this.age, this.image,this.id});

  static Student fromMap(Map<String, Object?> map) {
    return Student(
      id: map['id']as int,
      name: map['name']as String,
      age: map['age']as int,
      image: map['image']as String == '' ? null : File(map['image']as String),
    );
  }
}
