import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/State_data.dart';
import 'Utilities/App_urls.dart';

class WorldStatesViewModel {
  Future<Model> fetchWorldRecords() async {
    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));
    print(response.statusCode.toString());
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return Model.fromJson(data);
    } else {
      return Model.fromJson(data);
      //throw Exception('Error');
    }
  }

  Future<List<dynamic>> countriesListApi() async {
    var data;
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    print(response.statusCode.toString());
    print(data);
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
