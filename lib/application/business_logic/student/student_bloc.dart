import 'package:assignment_wandoor_kayla/application/presentation/utils/image_picker/pick_image.dart';
import 'package:assignment_wandoor_kayla/domain/models/student/student.dart';
import 'package:assignment_wandoor_kayla/domain/repositories/student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final StudentRepo studentService;

  TextEditingController nameController=TextEditingController();
  TextEditingController ageController=TextEditingController();

  StudentBloc(this.studentService) : super(StudentState.initial()) {
    on<GetAllData>(getAllData);
    on<AddStudent>(addStudent);
    on<SortData>(sortData);
    on<SearchData>(searchData);
    on<PickImage>(pickImage);
  }

  void getAllData(GetAllData event, Emitter<StudentState> emit) async {
    emit(state.copyWith(hasError: false,isLoading: true,isAdded: false));
    final result=await studentService.getData();
    result.fold((failure) => emit(state.copyWith(isLoading: false,hasError: true)), 
    (list) => emit(state.copyWith(isLoading: false,studentList: list)));
  }
  void pickImage(PickImage event, Emitter<StudentState> emit)async{
    try{
      final image=await chooseImage(imageSource: event.imageSource);
      emit(state.copyWith(image: image));
    }catch (e){
      emit(state.copyWith(image: null));
    }
  }
  void addStudent(AddStudent event, Emitter<StudentState> emit) async {
        emit(state.copyWith(hasError: false,isLoading: true,isAdded: false));
    final result=await studentService.insertInToDb(event.student..image=state.image);
    result.fold((failure) => emit(state.copyWith(isLoading: false,hasError: true,image: null)), 
    (list) {
      nameController.text = '';
      ageController.text ='';
      final list=[...state.studentList!,event.student];
      emit(state.copyWith(isLoading: false,studentList: list,image: null,isAdded: true));
    });
  }
  void sortData(SortData event, Emitter<StudentState> emit) async {
     emit(state.copyWith(hasError: false,isLoading: true,maxAge: event.end,minAge: event.start,isAdded: false));
     print(event.end);
    final result=await studentService.sortData(start: event.start,end: event.end);
    result.fold((failure) => emit(state.copyWith(isLoading: false,hasError: true)), 
    (list) => emit(state.copyWith(isLoading: false,studentList: list)));
  }
  void searchData(SearchData event, Emitter<StudentState> emit) async {
    print(event.qurrey);
        emit(state.copyWith(hasError: false,isLoading: true,qurrey: event.qurrey,isAdded: false));
    final result=await studentService.searchData(qurrey: event.qurrey);
    result.fold((failure) => emit(state.copyWith(isLoading: false,hasError: true)), 
    (list) => emit(state.copyWith(isLoading: false,studentList: list)));
  }
}
