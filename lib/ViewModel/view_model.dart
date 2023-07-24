
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../Model/model.dart';

class SchoolProvider with ChangeNotifier{
  Future<String> _loadFromAsset() async {
    return await rootBundle.loadString('assets/JSONdata/SchoolData.json');
  }
  SchoolDataModel ?schoolDataModel;
  Future getSchoolData() async {
    String jsonString = await _loadFromAsset();
    final jsonResponse = json.decode(jsonString)[0];
    schoolDataModel=SchoolDataModel.fromJson(jsonResponse);
    notifyListeners();
  }
}