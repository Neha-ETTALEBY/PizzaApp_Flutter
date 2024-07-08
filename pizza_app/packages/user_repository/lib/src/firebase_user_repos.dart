import 'package:user_repository/src/models/user.dart';
import 'package:user_repository/src/user_repos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseUserRepo implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  final userCollection = FirebaseFirestore.instance.collection('users');

  FirebaseUserRepo({
    FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;


  @override
  Future<MyUser> signUp(MyUser myUser, String password) async {
   throw UnimplementedError();
  }

  @override
  Future<void> setUserData(MyUser user) async {
     throw UnimplementedError();
  }

  @override
  Future<void> signIn(String email, String password) async {
     throw UnimplementedError();
  }

  @override
  Future<void> logOut() async {
  throw UnimplementedError();  }
  
  @override
  // TODO: implement user
  Stream<MyUser?> get user => throw UnimplementedError();
}
