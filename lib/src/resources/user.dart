part of '../resource.dart';

final class User extends Resource {

  final String createdAt;
  final String name;
  final int level;
  final int baseUploadLimit;
  final int postUploadCount;
  final int postUpdateCount;
  final int noteUpdateCount;
  final bool isBanned;
  final bool canApprovePosts;
  final bool canUploadFree;
  final String levelString;
  final int? avatarId;

  const User({
    required super.id,
    required this.createdAt,
    required this.name,
    required this.level,
    required this.baseUploadLimit,
    required this.postUploadCount,
    required this.postUpdateCount,
    required this.noteUpdateCount,
    required this.isBanned,
    required this.canApprovePosts,
    required this.canUploadFree,
    required this.levelString,
    required this.avatarId,
  });

  User.fromMap(super.map) 
    : createdAt = map['created_at'],
      name = map['name'],
      level = map['level'],
      baseUploadLimit = map['base_upload_limit'],
      postUploadCount = map['post_upload_count'],
      postUpdateCount = map['post_update_count'],
      noteUpdateCount = map['note_update_count'],
      isBanned = map['is_banned'],
      canApprovePosts = map['can_approve_posts'],
      canUploadFree = map['can_upload_free'],
      levelString = map['level_string'],
      avatarId = map['avatar_id'],
      super._fromMap();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! User) return false;
    return other.createdAt == createdAt &&
      other.name == name &&
      other.level == level &&
      other.baseUploadLimit == baseUploadLimit &&
      other.postUploadCount == postUploadCount &&
      other.postUpdateCount == postUpdateCount &&
      other.noteUpdateCount == noteUpdateCount &&
      other.isBanned == isBanned &&
      other.canApprovePosts == canApprovePosts &&
      other.canUploadFree == canUploadFree &&
      other.levelString == levelString &&
      other.avatarId == avatarId;
  }

  @override
  Resource copyWith({
    String? createdAt,
    String? name, 
    int? level,
    int? baseUploadLimit,
    int? postUploadCount,
    int? postUpdateCount,
    int? noteUpdateCount,
    bool? isBanned,
    bool? canApprovePosts,
    bool? canUploadFree,
    String? levelString,
    int? avatarId}) {
    return User(id: id, 
    createdAt: createdAt ?? this.createdAt, 
    name: name ?? this.createdAt, 
    level: level ?? this.level, 
    baseUploadLimit: baseUploadLimit ?? this.baseUploadLimit, 
    postUploadCount: postUploadCount ?? this.postUploadCount, 
    postUpdateCount: postUpdateCount ?? this.postUpdateCount, 
    noteUpdateCount: noteUpdateCount ?? this.noteUpdateCount, 
    isBanned: isBanned ?? this.isBanned, 
    canApprovePosts: canApprovePosts ?? this.canApprovePosts, 
    canUploadFree: canUploadFree ?? this.canUploadFree, 
    levelString: levelString ?? this.levelString, 
    avatarId: avatarId ?? this.avatarId);
  }

  @override
  // TODO: implement hashCode
  int get hashCode => 
    createdAt.hashCode ^
    name.hashCode ^
    level.hashCode ^
    baseUploadLimit.hashCode ^
    postUploadCount.hashCode ^
    postUpdateCount.hashCode ^
    noteUpdateCount.hashCode ^
    isBanned.hashCode ^
    canApprovePosts.hashCode ^
    canUploadFree.hashCode ^
    levelString.hashCode ^
    avatarId.hashCode;

    @override
  String toString() {
    return 'User{createdAt: $createdAt, name: $name, level: $level, baseUploadLimit: $baseUploadLimit, postUploadCount: $postUploadCount, postUpdateCount: $postUpdateCount, noteUpdateCount: $noteUpdateCount, isBanned: $isBanned, canApprovePosts: $canApprovePosts, canUploadFree: $canUploadFree, levelString: $levelString, avatarId: $avatarId}';
  }
}