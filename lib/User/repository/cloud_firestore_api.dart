import 'package:cloud_app/User/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirestoreAPI {
  final String USERS = 'users';
  final String EXERCISES = 'exercises';

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  void updateUserDate(User user) async {
    DocumentReference ref = _db.collection(USERS).doc(user.uId);
    return ref.set({
      'uId': user.uId,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myExercises': user.myExercises,
      'myFavouriteExercises': user.myFavouriteExercises,
      'lastSignIn': DateTime.now()
    },SetOptions(merge: true));
  }

}