import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:history/app/pages/home/model/home_model.dart';
import 'package:history/app/pages/home/repo/home_repo.dart';
import 'package:pedantic/pedantic.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    homeInit();
  }

  final HttpTopicListApi _repo = HttpTopicListApi();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is TopicListApiReqiestEvent) {
      yield HomePageLoadingState();
      unawaited(requestTopicListInfo(forceRefresh: event.forceRefresh));
      // yield HomePageUpdatedState();
    } else if (event is TopicListApiReqiestSuccessEvent) {
      yield TopicListApiReqiestSuccessState(topicList: event.topicList);
    } else if (event is HomePageErrorEvent) {
      yield HomePageErrorState(error: event.error);
    }
  }

  Future<void> requestTopicListInfo({bool forceRefresh = false}) async {
    final TopicList? _response =
        await _repo.getTopicList(forceRefresh: forceRefresh);

    if (_response == null) {
      add(HomePageErrorEvent(error: 'Some error'));
    } else {
      add(TopicListApiReqiestSuccessEvent(topicList: _response));
    }
  }

  void homeInit() {
    add(const TopicListApiReqiestEvent());
  }

  void homeReload() {
    add(const TopicListApiReqiestEvent(forceRefresh: true));
  }
}
