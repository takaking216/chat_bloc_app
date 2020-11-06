import 'package:flutter/material.dart';
import 'package:chat_bloc_app/src/routing/route_router.dart';
import 'package:chat_bloc_app/src/services/auth_service.dart';
import 'package:chat_bloc_app/src/utils/color_const.dart';
import 'package:chat_bloc_app/src/utils/string_const.dart';

import '../main.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: primarySwatch,
          primaryColor: primaryColor,
          accentColor: accentColor,
          canvasColor: canvasColor,
        ),
        initialRoute: StringConstant.route_sign_in,
        onGenerateRoute: RouteRouter.generateRoute);
  }

  @override
  void dispose() {
    locator<AuthService>().dispose();
    super.dispose();
  }
}
