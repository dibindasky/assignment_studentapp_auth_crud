import 'dart:io';
import 'package:image_picker/image_picker.dart';

Future<String?> chooseImage({required ImageSource imageSource}) async{
  try {
  final result = await ImagePicker().pickImage(source: imageSource);
    if(result !=null){
      return File(result.path).path;
    }
    return null;
  } catch (e) {
    return null;
  }
}
