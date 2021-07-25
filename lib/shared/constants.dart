class SharedVariable {
  int activeUser = 1;
  static String getBaseUrl({int activeUser = 1}) {
    return 'https://${SharedConst.userNameList[activeUser]}.github.io/history_collaborative_server/';
  }
}

class SharedConst {
  static const List<String> userNameList = ['mahidul-islam'];
}

class JsonPath {
  static const String home_page = 'assets/json/home_page.json';
  static const String topic_details = 'assets/json/topic_detials.json';
}
