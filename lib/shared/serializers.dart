import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:history/app/pages/home/model/home_model.dart';
import 'package:history/app/pages/topic_details/model/topic_details_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  TopicDetails,
  TopicList,
  Topic,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
