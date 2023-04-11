import 'dart:convert';

import 'package:covid_tracker/services/utilities/app_url.dart';
import 'package:covid_tracker/Model/worldStatesModel.dart';

import 'package:http/http.dart' as http;

class statesServices {
  Future<WorldStatesModel> fetchWorldStatesApi() async {
    http.Response response = await http.get(Uri.parse(AppUrls.worldStatesApi));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      return WorldStatesModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> countriesStateApi() async {
    var data;
    http.Response response = await http.get(Uri.parse(AppUrls.countriesList));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
