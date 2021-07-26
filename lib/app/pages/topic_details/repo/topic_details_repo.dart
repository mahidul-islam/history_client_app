import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:history/app/pages/home/model/home_model.dart';
import 'package:history/app/pages/topic_details/api/topic_details_api.dart';
import 'package:history/app/pages/topic_details/model/topic_details_model.dart';
import 'package:history/shared/dio/default_response.dart';

class TopicDetailsRepo {
  // final TopicDetailsApi api = MockTopicDetailsApi();
  final TopicDetailsApi api = HttpTopicDetailsApi();

  Future<Either<String, TopicDetails?>> getTopicList(
      {required bool forceRefresh, required Topic topic}) async {
    final Either<String, DefaultRes?> _response =
        await api.getTopicDetails(topic: topic, forceRefresh: forceRefresh);
    return _response.fold((dynamic error) {
      return Left<String, TopicDetails?>(error.toString());
    }, (DefaultRes? result) {
      if (result != null) {
        return Right<String, TopicDetails?>(
          TopicDetails.fromJson(json.encode(result.data)),
        );
      } else {
        return Right<String, TopicDetails?>(null);
      }
    });
  }
}
