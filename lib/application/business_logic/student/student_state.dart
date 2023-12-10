part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState(
      {required bool isLoading,
      required bool hasError,
      required bool isAdded,
      required int minAge,
      required int maxAge,
      required String qurrey,
      String? image,
      List<Student>? studentList}) = _Initial;

  factory StudentState.initial() =>
      const StudentState(isAdded: false,isLoading: false, hasError: false, minAge: 0,maxAge: 50,qurrey: '',studentList: []);
}
