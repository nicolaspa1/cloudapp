import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:cloud_app/User/repository/firebase_auth_api.dart';

class AuthRepository{

      final _firebaseAuthApi = FirebaseAuthAPI();

      Future<auth.User> signInFirebase() => _firebaseAuthApi.signIn();
}