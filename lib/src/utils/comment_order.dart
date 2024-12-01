/// Enum for comment order
enum CommentOrder {
  idAscending._('id_ascending'),
  idDescending._('id_descending'),
  status._('status'),
  statusDescending._('status_descending'),
  updatedAtDescending._('updated_at_descending');

  final String _value;

  const CommentOrder._(this._value);

  @override
  String toString() => _value;
}