/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'models/enum/status.dart' as _i2;
import 'models/example.dart' as _i3;
import 'models/question.dart' as _i4;
import 'models/quiz.dart' as _i5;
import 'protocol.dart' as _i6;
import 'package:quiz_client/src/protocol/models/quiz.dart' as _i7;
export 'models/enum/status.dart';
export 'models/example.dart';
export 'models/question.dart';
export 'models/quiz.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Status) {
      return _i2.Status.fromJson(data) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Question) {
      return _i4.Question.fromJson(data, this) as T;
    }
    if (t == _i5.Quiz) {
      return _i5.Quiz.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Status?>()) {
      return (data != null ? _i2.Status.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Question?>()) {
      return (data != null ? _i4.Question.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Quiz?>()) {
      return (data != null ? _i5.Quiz.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i6.Question>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.Question>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i7.Quiz>) {
      return (data as List).map((e) => deserialize<_i7.Quiz>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Status) {
      return 'Status';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Question) {
      return 'Question';
    }
    if (data is _i5.Quiz) {
      return 'Quiz';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Status') {
      return deserialize<_i2.Status>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Question') {
      return deserialize<_i4.Question>(data['data']);
    }
    if (data['className'] == 'Quiz') {
      return deserialize<_i5.Quiz>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
