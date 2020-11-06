import 'package:flutter/material.dart';
import 'package:chat_bloc_app/src/routing/arguments/chatArgs.dart';
import 'package:chat_bloc_app/src/utils/string_const.dart';
import 'package:chat_bloc_app/src/widgets/screen_chat.dart';
import 'package:chat_bloc_app/src/widgets/screen_chat_list.dart';
import 'package:chat_bloc_app/src/widgets/screen_sign_in.dart';
import 'package:chat_bloc_app/src/widgets/screen_user_settings.dart';

class RouteRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case StringConstant.route_sign_in:
        return MaterialPageRoute(builder: (context) => SignIn());
      case StringConstant.route_chat_list:
        return MaterialPageRoute(builder: (context) => ChatList());
      case StringConstant.route_chat:
        return MaterialPageRoute(
            builder: (context) =>
                Chat(chatInfo: (settings.arguments as ChatArgs).chatInfo));
      case StringConstant.route_user_settings:
        return MaterialPageRoute(builder: (context) => UserSettings());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                body: Center(
                    child: Text(StringConstant.error_widget_not_found))));
    }
  }
}
