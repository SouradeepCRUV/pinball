import 'package:firebase_auth/firebase_auth.dart';

/// {@template authentication_exception}
/// Exception for authentication repository failures.
/// {@endtemplate}
class AuthenticationException implements Exception {
  /// {@macro authentication_exception}
  const AuthenticationException(this.error, this.stackTrace);

  /// The error that was caught.
  final Object error;

  /// The Stacktrace associated with the [error].
  final StackTrace stackTrace;
}

/// {@template authentication_repository}
/// Repository to manage user authentication.
/// {@endtemplate}
class AuthenticationRepository {
  /// {@macro authentication_repository}
  AuthenticationRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  /// Sign in the existing user anonymously using [FirebaseAuth]. If the
  /// authentication process can't be completed, it will throw an
  /// [AuthenticationException].
  Future<void> authenticateAnonymously() async {
    // try {
    //   final credential =
    //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //     email: 'abc@gmail.com',
    //     password: 'password',
    //   );
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'weak-password') {
    //     print('The password provided is too weak.');
    //   } else if (e.code == 'email-already-in-use') {
    //     print('The account already exists for that email.');
    //   }
    // } catch (e) {
    //   print(e);
    // }
    //
    // try {
    //   await _firebaseAuth.signInAnonymously();
    // } on Exception catch (error, stackTrace) {
    //   throw AuthenticationException(error, stackTrace);
    // }
  }
}
