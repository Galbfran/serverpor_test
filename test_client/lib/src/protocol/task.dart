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

abstract class Task implements _i1.SerializableModel {
  Task._({
    this.id,
    required this.description,
    required this.end,
    required this.createAt,
    this.userId,
  });

  factory Task({
    int? id,
    required String description,
    required bool end,
    required DateTime createAt,
    int? userId,
  }) = _TaskImpl;

  factory Task.fromJson(Map<String, dynamic> jsonSerialization) {
    return Task(
      id: jsonSerialization['id'] as int?,
      description: jsonSerialization['description'] as String,
      end: jsonSerialization['end'] as bool,
      createAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createAt']),
      userId: jsonSerialization['userId'] as int?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String description;

  bool end;

  DateTime createAt;

  int? userId;

  /// Returns a shallow copy of this [Task]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Task copyWith({
    int? id,
    String? description,
    bool? end,
    DateTime? createAt,
    int? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'description': description,
      'end': end,
      'createAt': createAt.toJson(),
      if (userId != null) 'userId': userId,
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
    required bool end,
    required DateTime createAt,
    int? userId,
  }) : super._(
          id: id,
          description: description,
          end: end,
          createAt: createAt,
          userId: userId,
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
    Object? userId = _Undefined,
  }) {
    return Task(
      id: id is int? ? id : this.id,
      description: description ?? this.description,
      end: end ?? this.end,
      createAt: createAt ?? this.createAt,
      userId: userId is int? ? userId : this.userId,
    );
  }
}
