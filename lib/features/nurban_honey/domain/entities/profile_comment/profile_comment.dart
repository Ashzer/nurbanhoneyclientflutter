import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_comment.freezed.dart';

@freezed
class ProfileComment with _$ProfileComment {
  const factory ProfileComment(
      int commentId,
      String comment,
      int articleId,
      String createAt,
      int boardId,
      String boardName,
      String boardAddress,
      String title) = _ProfileComment;
}
