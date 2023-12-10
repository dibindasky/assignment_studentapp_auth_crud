import 'package:json_annotation/json_annotation.dart';

part 'student.g.dart';

@JsonSerializable()
class Student {
  String? id;
  String name;
  int age;
  String? image;

  Student({this.id, required this.name,required this.age, this.image});

  factory Student.fromJson(Map<String, dynamic> json) {
    return _$StudentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StudentToJson(this);
}
