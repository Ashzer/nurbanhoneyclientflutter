import 'dart:convert';

import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';

abstract class BoardRemoteDataSource {
  Future<List<BoardInfoModel>> getBoards();
}

class BoardRemoteDataSourceImpl implements BoardRemoteDataSource {
  final http.Client client;
  BoardRemoteDataSourceImpl({required this.client});
  static String baseUrl = "http://3.37.155.214:8128/board";

  @override
  Future<List<BoardInfoModel>> getBoards() async {
    final uri = Uri.parse("$baseUrl");
    final response = await client.get(
      uri,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => BoardInfoModel.fromJson(e)).toList();
    } else {
      return _generateExceptions(response.statusCode);
    }
  }

  _generateExceptions(int responseStatusCode) {
    if (responseStatusCode == 401) {
      throw AuthorizationException();
    } else {
      throw ServerException();
    }
  }
}
