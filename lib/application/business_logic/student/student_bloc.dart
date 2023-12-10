import 'package:assignment_wandoor_kayla/domain/models/student/student.dart';
import 'package:assignment_wandoor_kayla/domain/repositories/student.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {

  final StudentRepo studentDb;
  StudentBloc(this.studentDb) : super(StudentState.initial()) {
    on<GetAllData>(getAllData);
    on<AddStudent>(addStudent);
    on<SortData>(sortData);
    on<SearchData>(searchData);
  }

  void getAllData(GetAllData event,Emitter<StudentState> state)async{

  }
  void addStudent(AddStudent event,Emitter<StudentState> state)async{

  }
  void sortData(SortData event,Emitter<StudentState> state)async{

  }
  void searchData(SearchData event,Emitter<StudentState> state)async{

  }
}
