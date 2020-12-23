
import 'package:cloud_app/User/model/user.dart';
import 'package:cloud_app/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreApi = CloudFirestoreAPI();

  void updateUserDataFirestore(User  user) => _cloudFirestoreApi.updateUserDate(user);


}