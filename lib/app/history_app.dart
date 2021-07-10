import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history/app/observer/life_cycle_observer.dart';
import 'package:history/app/routes/routes.dart';
import 'package:history/app/routes/routes_generator.dart';
import 'package:history/shared/analytics.dart';
import 'package:history/shared/locator.dart';
import 'package:history/shared/navigation_services.dart';

import 'bloc/notification/notification_bloc.dart';
import 'bloc/user/user_bloc.dart';

class HistoryApp extends StatefulWidget {
  const HistoryApp({Key? key}) : super(key: key);

  @override
  _HistoryAppState createState() => _HistoryAppState();
}

class _HistoryAppState extends State<HistoryApp> {
  late UserBloc _userBloc;
  late NotificationBloc _notificationBloc;
  late BlocProvider<UserBloc> _userBlocProvider;
  late BlocProvider<NotificationBloc> _notificationBlocProvider;

  @override
  void initState() {
    super.initState();
    _userBloc = UserBloc();
    _notificationBloc = NotificationBloc();
    _userBlocProvider = BlocProvider<UserBloc>(
      lazy: false,
      create: (BuildContext context) {
        return _userBloc;
      },
    );

    _notificationBlocProvider = BlocProvider<NotificationBloc>(
      create: (BuildContext context) {
        return _notificationBloc;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        _notificationBlocProvider,
        _userBlocProvider,
      ],
      child: AppLifeCycleObserver(
        child: MaterialApp(
          title: 'History App Client',
          debugShowCheckedModeBanner: false,
          navigatorKey: locator<NavigationService>().navigatorKey,
          theme: ThemeData(
            fontFamily: 'SFProText',
            // backgroundColor: SGColors.paleGrey,
            primarySwatch: Colors.blue,
            primaryColor: const Color(0xFF2196f3),
            accentColor: const Color(0xFF2196f3),
            canvasColor: const Color(0xFFfafafa),
          ),
          navigatorObservers: <NavigatorObserver>[
            locator<AnalyticsService>().getAnalyticsObserver(),
          ],
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: Routes.index,
          builder: (BuildContext ctx, Widget? child) {
            return Scaffold(
              body: BlocListener<NotificationBloc, NotificationState>(
                listener: (BuildContext context, NotificationState state) {},
                child: child!,
              ),
            );
          },
        ),
      ),
    );
  }
}
