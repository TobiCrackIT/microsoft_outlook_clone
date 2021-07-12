
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class User extends ChangeNotifier{

  int _age;
  String _name;
  Dio _dio;

  User(this._age, this._name,this._dio);

  int get age=>_age;
  String get name=>_name;

  void birthday(){
    _dio.get('google.com');
    _age++;
    notifyListeners();
  }

  void changeName(String newName){
    _name=newName;
    notifyListeners();
  }
}