import 'package:chat_bloc_app/src/model/user.dart';
import 'package:rxdart/rxdart.dart';

abstract class AuthService {
  User getCurrentUser();

  Future<bool> handleUserSignIn();

  Future<void> handleUserSignOut();

  Future<bool> isUserSignedIn();

  Future<User> getCurrentLocalUser();

  Observable<User> get currentUser;

  void setCurrentUser(User user);

  void dispose();
}
