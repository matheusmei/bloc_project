// import 'dart:convert';

// import 'package:bloc_project/models/data_model.dart';
// import 'package:dio/dio.dart';

// class GameRepositoryDio {
//   Future<DataModel> fetchAllGameData() async {
//     final dio = Dio();
//     const baseUrl = 'https://www.gamerpower.com/api/giveaways';
//     final response = await dio.get<String>(baseUrl);
//     final json = jsonDecode(response.data!);
//   }
// }
