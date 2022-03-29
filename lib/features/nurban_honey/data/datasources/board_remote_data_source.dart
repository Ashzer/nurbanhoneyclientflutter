import 'package:nurbanhoney_flutter/features/nurban_honey/data/models/board_info_model/board_info_model.dart';

abstract class BoardRemoteDataSource {
  Future<List<BoardInfoModel>> getBoards();
}
