import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:history/app/pages/home/model/home_model.dart';
import 'package:history/shared/constants.dart';
import 'package:history/shared/dio/default_response.dart';
import 'package:history/shared/dio/dio_helper.dart';
import 'package:history/shared/dio/global_dio.dart' as global;

abstract class TopicDetailsApi {
  Future<Either<String, DefaultRes>> getTopicDetails(
      {required bool forceRefresh, required Topic topic});
}

class HttpTopicDetailsApi implements TopicDetailsApi {
  @override
  Future<Either<String, DefaultRes>> getTopicDetails(
      {required bool forceRefresh, required Topic topic}) async {
    const String _url = 'topic_list.json';
    final Options options =
        await DioHelper.getDefaultOptions(forceRefresh: forceRefresh);
    try {
      final Response<dynamic> response =
          await global.dio.get(_url, options: options);
      final DefaultRes profileResponse = DefaultRes.fromJson(response.data);
      return Right<String, DefaultRes>(profileResponse);
    } catch (e) {
      print(e.toString());
      return Left<String, DefaultRes>(e.toString());
    }
  }
}

class MockTopicDetailsApi implements TopicDetailsApi {
  @override
  Future<Either<String, DefaultRes>> getTopicDetails(
      {required bool forceRefresh, required Topic topic}) async {
    // await Future<bool>.delayed(const Duration(seconds: 1));

    return Right<String, DefaultRes>(
      DefaultRes.fromRawJson(
        await rootBundle.loadString(JsonPath.topic_details),
      ),
    );
  }
}
