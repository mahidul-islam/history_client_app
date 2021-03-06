import 'dart:convert';

import 'package:history/app/pages/home/model/home_model.dart';

class Coderunner {
  static void runCode() {
    var myJson = "{\"label\":{\"hello\":\"world\"}}";

    var decodedJson = json.decode(myJson);
    print(decodedJson.runtimeType);
    var jsonValue = decodedJson['label'];
    print(jsonValue.runtimeType);

    Topic topic = Topic((b) => b
      ..name = 'First'
      ..end = 1921
      ..start = 1920
      ..eventCount = 4);
    TopicList topicList = TopicList((b) => b
      ..count = 1
      ..topics.addAll([topic]));
    // print(topic);
    // print(topicList);
    print(topicList.toJson());
    print(TopicList.fromJson(topicList.toJson()));
  }
}
