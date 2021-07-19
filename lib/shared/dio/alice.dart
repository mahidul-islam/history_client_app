import 'package:history/shared/locator.dart';
import 'package:history/shared/navigation_services.dart';
import 'package:alice/alice.dart';

final Alice alice = Alice(
  showNotification: true,
  showInspectorOnShake: true,
  darkTheme: true,
  navigatorKey: locator<NavigationService>().navigatorKey,
);
