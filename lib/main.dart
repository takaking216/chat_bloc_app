import 'package:flutter/material.dart';
import 'package:chat_bloc_app/src/app.dart';
import 'package:chat_bloc_app/src/services/auth_service.dart';
import 'package:chat_bloc_app/src/services/auth_service_impl.dart';
import 'package:chat_bloc_app/src/services/repository_service.dart';
import 'package:chat_bloc_app/src/services/repository_service_impl.dart';
import 'package:get_it/get_it.dart';

GetIt locator = new GetIt();

void main() {
  locator.registerSingleton<RepositoryService>(new RepositoryServiceImpl());
  locator.registerSingleton<AuthService>(new AuthServiceImpl());
  runApp(MyApp());
}
