library topic_details_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:history/shared/serializers.dart';

part 'topic_details_model.g.dart';

abstract class TopicDetails
    implements Built<TopicDetails, TopicDetailsBuilder> {
  String get topicName;
  BuiltList<Century> get centuries;

  TopicDetails._();
  factory TopicDetails([void Function(TopicDetailsBuilder) updates]) =
      _$TopicDetails;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TopicDetails.serializer, this));
  }

  static TopicDetails? fromJson(String jsonStr) {
    return serializers.deserializeWith(TopicDetails.serializer, jsonStr);
  }

  static Serializer<TopicDetails> get serializer => _$topicDetailsSerializer;
}

abstract class Century implements Built<Century, CenturyBuilder> {
  int get start;
  int get end;
  String get overview;

  Century._();
  factory Century([void Function(CenturyBuilder) updates]) = _$Century;

  String toJson() {
    return json.encode(serializers.serializeWith(Century.serializer, this));
  }

  static Century? fromJson(String jsonStr) {
    return serializers.deserializeWith(Century.serializer, jsonStr);
  }

  static Serializer<Century> get serializer => _$centurySerializer;
}
