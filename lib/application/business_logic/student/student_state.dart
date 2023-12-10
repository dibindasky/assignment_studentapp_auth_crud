part of 'student_bloc.dart';


@freezed

class StudentState with _$StudentState {

  const factory StudentState(
      {required bool isLoading,
      required bool hasError,
      List<Student>? studentList}) = _Initial;

  factory StudentState.initial() =>
      const StudentState(isLoading: false, hasError: false);
}

