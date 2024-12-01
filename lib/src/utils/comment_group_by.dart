/// Enum for comment group by
enum CommentGroupBy {
  comment._('comment'),
  post._('post');

  final String _value;

  const CommentGroupBy._(this._value);

  @override 
  String toString() => _value;
}