import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FilesHelper{
  
  FilesHelper._();
  static FilesHelper filesHelper=FilesHelper._();
  
  writeInFile(String fileName)async{
    Directory directory=await getApplicationDocumentsDirectory();
    String filePath=directory.path+'\$ fileName.text';
    File file=File(filePath);
    file.writeAsString('hello are you');
  }
  Future <String> readFromFile()async{
    Directory directory=await getApplicationDocumentsDirectory();
    String filePath=directory.path+'\$ fileName.text';
    File file=File(filePath);
    file.readAsString();
  }
}