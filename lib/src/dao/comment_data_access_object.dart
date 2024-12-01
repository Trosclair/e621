part of '../data_access_object.dart';

final class CommentDataAccessObject extends DataAccessObject<Comment> {
  const CommentDataAccessObject(E621Client client) : super(client, 'comments');

  Future<List<Comment>> list({
    CommentOrder? commentOrder,
    CommentGroupBy? commentGroupBy,
    List<int>? postIds, 
    String? body, 
    String? postTagsMatch,
    String? postNoteUpdaterName, 
    String? postNoteUpdaterId, 
    String? creatorName, 
    int? creatorId, 
    bool? isSticky, 
    bool? isHidden, 
    bool? doNotBumpPost}) async {

    final Map<String, String> queryParameters = {
      ...(commentOrder != null ? {'search[order]': commentOrder.toString()} : {}),
      ...(commentGroupBy != null ? {'group_by': commentGroupBy.toString()} : {'group_by': 'comment'}),
      ...(postIds != null ? {'search[post_id]': postIds.join(',')} : {}),
      ...(body != null ? {'search[body_matches]': body} : {}),
      ...(postTagsMatch != null ? {'search[post_tags_match]': postTagsMatch} : {}),
      ...(postNoteUpdaterName != null ? {'search[post_note_updater_name]': postNoteUpdaterName} : {}),
      ...(postNoteUpdaterId != null ? {'search[post_note_updater_id]': postNoteUpdaterId} : {}),
      ...(creatorName != null ? {'search[creator_name]': creatorName} : {}),
      ...(creatorId != null ? {'search[creator_id]': creatorId.toString()} : {}),
      ...(isSticky != null ? {'search[is_sticky]': isSticky.toString()} : {}),
      ...(isHidden != null ? {'search[is_hidden]': isHidden.toString()} : {}),
      ...(doNotBumpPost != null ? {'search[do_not_bump_post]': doNotBumpPost.toString()} : {})
    };

    final Uri uri = Uri.https(super.host, '$_endpoint.json', queryParameters);

    final Response response;

    try {
      response = await client.get(uri);
    } on ClientException catch (_) {
      rethrow;
    }

    if (response.statusCode != HttpStatus.ok) {
      throw E621Exception(
          message: response.body,
          statusCode: response.statusCode,
          reasonPhrase: response.reasonPhrase);
    }

    final List<dynamic> json = jsonDecode(response.body);

    return json
      .map((dynamic e) => fromJson(e as Map<String, dynamic>))
      .toList();
  }
  
  @override
  Comment fromJson(Map<String, dynamic> json) {
    return Comment.fromMap(json);
  }
}