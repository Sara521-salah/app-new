import 'package:app_new/layout/Bussines.dart';
import 'package:app_new/layout/DioHelper.dart';
import 'package:app_new/layout/Science.dart';
import 'package:app_new/layout/Sports.dart';
import 'package:app_new/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyCubit extends Cubit<States> {
  MyCubit() : super(initialState());

  static MyCubit get(context) => BlocProvider.of(context);
  int curr_index = 0;
  List<Widget> screens = [
    BussinessPage(),
    SportsPage(),
    SciencePage(),
  ];
  List<dynamic> business = [];
  List<dynamic> sports = [];
  List<dynamic> science = [];

  void changeState(int index) {
    curr_index = index;
    emit(changeIndexstate());
  }

  void getBusiness() {
    DioHelper.getData(url: "v2/top-headlines", query: {
      "country": "eg",
      "category": "business",
      "apiKey": "21ec5da562414c9e9fb0525d87dbb2e6"
    }).then((value) {
      business = value.data['articles'];
      print(business.toString());
    }).catchError((onError){
      print(onError.toString());
    });
  }
  void getSports() {
    DioHelper.getData(url: "v2/top-headlines", query: {
      "country": "eg",
      "category": "sports",
      "apiKey": "21ec5da562414c9e9fb0525d87dbb2e6"
    }).then((value) {
      sports = value.data['articles'];
      print(sports[0]['title']);
    }).catchError((onError){
      print(onError.toString());
    });
  }
  void getScience() {
    DioHelper.getData(url: "v2/top-headlines", query: {
      "country": "eg",
      "category": "science",
      "apiKey": "21ec5da562414c9e9fb0525d87dbb2e6"
    }).then((value) {
      science = value.data['articles'];
      print(science[0]['title']);
    }).catchError((onError){
      print(onError.toString());
    });
  }


}
