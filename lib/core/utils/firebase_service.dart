import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  

  bool get isLoggedIn => firebaseAuth.currentUser != null ? true : false ;

  Future<void> register(
      {required String userName,
      required String password,
      required String email}) async {
    await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> updatePassword({
    required String password,
  }) async {
    await firebaseAuth.currentUser?.updatePassword(password);
  }

  Future<void> updateEmail({
    required String email,
  }) async {
    await firebaseAuth.currentUser?.updateEmail(email);
  }

  Future<void> updateUserName({
    required String name,
  }) async {
    await firebaseAuth.currentUser?.updateDisplayName(name);
  }

  Future<void> login({required String password, required String email}) async {
    await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> update(
      {required String collection, required body, required documentId}) async {
    await fireStore.collection(collection).doc(documentId).update(body);
  }

  User getUser() {
    return firebaseAuth.currentUser!;
  }
}
