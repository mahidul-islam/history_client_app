// import 'dart:convert';

// class TopicList {
//   TopicList({
//     this.count,
//     this.topics,
//   });

//   int? count;
//   List<Topic>? topics;

//   factory TopicList.fromRawJson(String str) =>
//       TopicList.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory TopicList.fromJson(Map<String, dynamic> json) => TopicList(
//         count: json["count"] == null ? null : json["count"],
//         topics: json["topics"] == null
//             ? null
//             : List<Topic>.from(json["topics"].map((x) => Topic.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "count": count == null ? null : count,
//         "topics": topics == null
//             ? null
//             : List<dynamic>.from(topics!.map((x) => x.toJson())),
//       };
// }

// class Topic {
//   Topic({
//     this.name,
//     this.start,
//     this.end,
//     this.eventCount,
//   });

//   String? name;
//   int? start;
//   int? end;
//   int? eventCount;

//   factory Topic.fromRawJson(String str) => Topic.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory Topic.fromJson(Map<String, dynamic> json) => Topic(
//         name: json["name"] == null ? null : json["name"],
//         start: json["start"] == null ? null : json["start"],
//         end: json["end"] == null ? null : json["end"],
//         eventCount: json["event_count"] == null ? null : json["event_count"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name == null ? null : name,
//         "start": start == null ? null : start,
//         "end": end == null ? null : end,
//         "event_count": eventCount == null ? null : eventCount,
//       };
// }
library home_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:history/shared/serializers.dart';

part 'home_model.g.dart';

abstract class TopicList implements Built<TopicList, TopicListBuilder> {
  int get count;
  BuiltList<Topic> get topics;

  TopicList._();
  factory TopicList([void Function(TopicListBuilder) updates]) = _$TopicList;

  String toJson() {
    return json.encode(serializers.serializeWith(TopicList.serializer, this));
  }

  static TopicList? fromJson(String jsonStr) {
    return serializers.deserializeWith(
        TopicList.serializer, json.decode(jsonStr));
  }

  static Serializer<TopicList> get serializer => _$topicListSerializer;
}

abstract class Topic implements Built<Topic, TopicBuilder> {
  String get name;
  int get start;
  int get end;
  int get eventCount;
  int get newField;

  Topic._();
  factory Topic([void Function(TopicBuilder) updates]) = _$Topic;

  String toJson() {
    return json.encode(serializers.serializeWith(Topic.serializer, this));
  }

  static Topic? fromJson(String jsonStr) {
    return serializers.deserializeWith(Topic.serializer, jsonStr);
  }

  static Serializer<Topic> get serializer => _$topicSerializer;
}
