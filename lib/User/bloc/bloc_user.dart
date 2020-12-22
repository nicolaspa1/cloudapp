import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:cloud_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class UserBloc implements Bloc{

  final _authRepository = AuthRepository();

  Stream<auth.User> streamFirebase = auth.FirebaseAuth.instance.authStateChanges();
  Stream<auth.User> get authStatus => streamFirebase;

  Future<auth.User> signIn(){
    return _authRepository.signInFirebase();
  }

  signOut(){
    _authRepository.signOut();
  }

  @override
  void dispose() {

  }
}