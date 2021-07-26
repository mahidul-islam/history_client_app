import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:history/app/pages/home/api/home_api.dart';
import 'package:history/app/pages/home/model/home_model.dart';
import 'package:history/shared/dio/default_response.dart';

class TopicListRepo {
  // final HomeApi api = MockHomeApi();
  final HomeApi api = HttpHomeApi();

  Future<Either<String, TopicList?>> getTopicList(
      {required bool forceRefresh}) async {
    final Either<String, DefaultRes?> _response =
        await api.getTopicList(forceRefresh: forceRefresh);
    return _response.fold((dynamic error) {
      return Left<String, TopicList?>(error.toString());
    }, (DefaultRes? result) {
      if (result != null) {
        print(result);
        print(result.runtimeType);
        return Right<String, TopicList?>(
          TopicList.fromJson(json.encode(result.data)),
        );
      } else {
        return Right<String, TopicList?>(null);
      }
    });
  }
}
