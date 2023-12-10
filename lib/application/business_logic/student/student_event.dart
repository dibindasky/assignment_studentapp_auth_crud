part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.getAllData() = GetAllData;
  const factory StudentEvent.pickImage({required ImageSource imageSource}) = PickImage;
  const factory StudentEvent.addStudent({required Student student}) =
      AddStudent;
  const factory StudentEvent.sortData({required int start, required int end}) =
      SortData;
  const factory StudentEvent.searchData({required String qurrey}) = SearchData;
}
