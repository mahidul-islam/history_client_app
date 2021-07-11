import 'package:dio/dio.dart';
import 'package:history/app/pages/home/model/home_model.dart';
import 'package:history/shared/dio/global_dio.dart' as global;
import 'package:history/shared/dio/dio_helper.dart';

abstract class TopicListRepo {
  Future<TopicList?> getTopicList({bool forceRefresh});
}

class HttpTopicListApi implements TopicListRepo {
  @override
  Future<TopicList?> getTopicList({bool? forceRefresh}) async {
    const String _url = 'topic_list.json';
    final Options options =
        await DioHelper.getDefaultOptions(forceRefresh: forceRefresh);
    try {
      final Response<dynamic> response =
          await global.dio.get(_url, options: options);
      final TopicList topicList = TopicList.fromJson(response.data);
      return topicList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
