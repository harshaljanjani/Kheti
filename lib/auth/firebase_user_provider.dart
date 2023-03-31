import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KhetiAppFirebaseUser {
  KhetiAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

KhetiAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KhetiAppFirebaseUser> khetiAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<KhetiAppFirebaseUser>(
      (user) {
        currentUser = KhetiAppFirebaseUser(user);
        return currentUser!;
      },
    );
