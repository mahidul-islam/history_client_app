import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:history/shared/constants.dart';
import 'package:history/shared/dio/default_response.dart';
import 'package:history/shared/dio/dio_helper.dart';
import 'package:history/shared/dio/global_dio.dart' as global;

abstract class HomeApi {
  Future<Either<String, DefaultRes?>> getTopicList(
      {required bool forceRefresh});
}

class HttpHomeApi implements HomeApi {
  @override
  Future<Either<String, DefaultRes?>> getTopicList(
      {required bool forceRefresh}) async {
    const String _url = 'topic_list.json';
    final Options options =
        await DioHelper.getDefaultOptions(forceRefresh: forceRefresh);
    try {
      final Response<dynamic> response =
          await global.dio.get(_url, options: options);
      print(response.data);
      final DefaultRes? profileResponse = DefaultRes.fromJson(response.data);
      // DefaultRes.fromJson(json.encode(response.data));
      print(profileResponse);
      return Right<String, DefaultRes?>(profileResponse); //json.decode(source)
    } catch (e) {
      print(e.toString());
      return Left<String, DefaultRes?>(e.toString());
    }
  }
}

// class MockHomeApi implements HomeApi {
//   @override
//   Future<Either<String, DefaultRes?>> getTopicList(
//       {required bool forceRefresh}) async {
//     // await Future<bool>.delayed(const Duration(seconds: 1));

//     return Right<String, DefaultRes?>(
//       DefaultRes.fromJson(
//         await rootBundle.loadString(JsonPath.home_page),
//       ),
//     );
//   }
// }
