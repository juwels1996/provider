import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class EligibilityScreenProvider extends ChangeNotifier{
  String _message ='Please give your input';
  bool _isEligible =false;


  String get message => _message;
  bool get isEligible => _isEligible;
  void checkEligibility(int age){
    if(age>=18){
      eligible();
    }
    else{
      noteligible();
    }
  }
  void eligible(){
    _isEligible=true;
    _message="You are eligible for marry";
    notifyListeners();
  }
  void noteligible(){
    _isEligible=false;
    _message='You are under age,Please wait for few years ';
    notifyListeners();
  }


}