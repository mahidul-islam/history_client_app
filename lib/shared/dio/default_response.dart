// import 'dart:convert';

// class DefaultRes {
//   var data;

//   DefaultRes({
//     this.data,
//   });

//   factory DefaultRes.fromRawJson(String str) =>
//       DefaultRes.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory DefaultRes.fromJson(Map<String, dynamic> json) => DefaultRes(
//         data: json["data"],
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data,
//       };
// }
library default_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:history/shared/serializers.dart';

part 'default_response.g.dart';

abstract class DefaultRes implements Built<DefaultRes, DefaultResBuilder> {
  Map<String, dynamic>? get data;

  DefaultRes._();
  factory DefaultRes([void Function(DefaultResBuilder) updates]) = _$DefaultRes;

  String toJson() {
    return json.encode(serializers.serializeWith(DefaultRes.serializer, this));
  }

  static DefaultRes? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(DefaultRes.serializer, json);
  }

  // static DefaultRes? fromJson(Map<String, dynamic> json) {
  //   return serializers.deserializeWith(DefaultRes.serializer, json);
  // }

  static Serializer<DefaultRes> get serializer => _$defaultResSerializer;
}
