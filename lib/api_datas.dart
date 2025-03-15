import 'dart:convert';
import 'dart:developer';

import 'package:api_testing_app/api_model.dart';
import 'package:http/http.dart' as http;

class ApiDatas {
  Future<ApiModel?> getApiData() async {
    final snapShot =
        await http.get(Uri.parse('https://api.adviceslip.com/advice'));
    if (snapShot.statusCode == 200) {
      log('succesfull');
      final data = jsonDecode(snapShot.body);
      final apiModel = ApiModel(advice: data['slip']['advice']);
      return apiModel;
    } else {
      log('error got he');
    }
    return null;
  }
}
