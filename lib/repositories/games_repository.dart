import 'dart:convert';

import 'package:bloc_project/models/data_model.dart';
import 'package:http/http.dart' as http;

class GamesRepository {
  Future<List<DataModel>?> getGamesData() async {
    String baseUrl = 'https://www.gamerpower.com/api/giveaways';
    final response = await http.Client().get(Uri.parse(baseUrl));
    if (response.statusCode != 200) {
      return null;
    } else {
      Iterable models = jsonDecode(response.body);
      List<DataModel> dataModels = [];
      for (var model in models) {
        DataModel dataModel = DataModel.fromJson(model);
        dataModels.add(dataModel);
      }
      return dataModels;
    }
  }
}
