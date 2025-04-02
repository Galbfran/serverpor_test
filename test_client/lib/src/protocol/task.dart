/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'user.dart' as _i2;

abstract class Task implements _i1.SerializableModel {
  Task._({
    this.id,
    required this.description,
    bool? end,
    DateTime? createAt,
    required this.userId,
    this.user,
  })  : end = end ?? false,
        createAt = createAt ?? DateTime.now();

  factory Task({
    int? id,
    required String description,
    bool? end,
    DateTime? createAt,
    required int userId,
    _i2.User? user,
  }) = _TaskImpl;

  factory Task.fromJson(Map<String, dynamic> jsonSerialization) {
    return Task(
      id: jsonSerialization['id'] as int?,
      description: jsonSerialization['description'] as String,
      end: jsonSerialization['end'] as bool,
      createAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createAt']),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String description;

  bool end;

  DateTime createAt;

  int userId;

  _i2.User? user;

  /// Returns a shallow copy of this [Task]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Task copyWith({
    int? id,
    String? description,
    bool? end,
    DateTime? createAt,
    int? userId,
    _i2.User? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'description': description,
      'end': end,
      'createAt': createAt.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TaskImpl extends Task {
  _TaskImpl({
    int? id,
    required String description,
    bool? end,
    DateTime? createAt,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          description: description,
          end: end,
          createAt: createAt,
          userId: userId,
          user: user,
        );

  /// Returns a shallow copy of this [Task]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Task copyWith({
    Object? id = _Undefined,
    String? description,
    bool? end,
    DateTime? createAt,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Task(
      id: id is int? ? id : this.id,
      description: description ?? this.description,
      end: end ?? this.end,
      createAt: createAt ?? this.createAt,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}
