part of '../resource.dart';

final class Comment extends Resource {

  final String createdAt;
  final int postId;
  final int creatorId;
  final String body;
  final int score;
  final String updatedAt;
  final int updaterId;
  /// Deprecated.
  //final bool doNotBumpPost
  final bool isHidden;
  final bool isSticky;
  final String? warningType;
  final int? warningUserId;
  final String creatorName;
  final String updaterName;

  /// Creates a new [Comment].
  const Comment({
    required super.id,
    required this.createdAt,
    required this.postId,
    required this.creatorId,
    required this.body,
    required this.score,
    required this.updatedAt,
    required this.updaterId,
    required this.isHidden,
    required this.isSticky,
    required this.warningType,
    required this.warningUserId,
    required this.creatorName,
    required this.updaterName
  });

  Comment.fromMap(super.map) 
    : createdAt = map['created_at'],
      postId = map['post_id'],
      creatorId = map['creator_id'],
      body = map['body'],
      score = map['score'],
      updatedAt = map['updated_at'],
      updaterId = map['updater_id'],
      isHidden = map['is_hidden'],
      isSticky = map['is_sticky'],
      warningType = map['warning_type'],
      warningUserId = map['warning_user_id'],
      creatorName = map['creator_name'],
      updaterName = map['updater_name'],
      super._fromMap();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Comment) return false;
    return other.createdAt == createdAt &&
      other.postId == postId && 
      other.creatorId == creatorId && 
      other.body == body && 
      other.score == score && 
      other.updatedAt == updatedAt && 
      other.updaterId == updaterId &&
      other.isHidden == isHidden &&
      other.isSticky == isSticky &&
      other.warningType == warningType && 
      other.warningUserId == warningUserId &&
      other.creatorName == creatorName && 
      other.updaterName == updaterName;
  }

  @override
  Resource copyWith({
    String? createdAt,
    int? postId,
    int? creatorId,
    String? body,
    int? score,
    String? updatedAt,
    int? updaterId,
    bool? isHidden,
    bool? isSticky,
    String? warningType,
    int? warningUserId,
    String? creatorName,
    String? updaterName}) {
    return Comment(id: id, 
      createdAt: createdAt ?? this.createdAt, 
      postId: postId ?? this.postId, 
      creatorId: creatorId ?? this.creatorId, 
      body: body ?? this.body, 
      score: score ?? this.score, 
      updatedAt: updatedAt ?? this.updatedAt, 
      updaterId: updaterId ?? this.updaterId, 
      isHidden: isHidden ?? this.isHidden, 
      isSticky: isSticky ?? this.isSticky, 
      warningType: warningType ?? this.warningType, 
      warningUserId: warningUserId ?? this.warningUserId, 
      creatorName: creatorName ?? this.creatorName, 
      updaterName: updaterName ?? this.updaterName);
  }

  @override
  int get hashCode => 
    createdAt.hashCode ^
    postId.hashCode ^ 
    creatorId.hashCode ^
    body.hashCode ^
    score.hashCode ^ 
    updatedAt.hashCode ^
    updaterId.hashCode ^ 
    isHidden.hashCode ^
    isSticky.hashCode ^
    warningType.hashCode ^
    warningUserId.hashCode ^ 
    creatorName.hashCode ^ 
    updaterName.hashCode;

  @override
  String toString() {
    return 'Comment{createdAt: $createdAt, postId: $postId, creatorId: $creatorId, body: $body, score: $score, updatedAt: $updatedAt, updaterId: $updaterId, isHidden: $isHidden, isSticky: $isSticky, warningType: $warningType, warningUserId: $warningUserId, creatorName: $creatorName, updaterName: $updaterName, id: $id}';
  }
}