import 'package:application_action/consts/consts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  //textcontroller
  var email = ''.obs;
  var password = ''.obs;
  var username = ''.obs;
  var confirmPassword = ''.obs;

  //login method

  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;
    try {
      await auth.signInWithEmailAndPassword(
          email: email.value, password: email.value);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //signup method

  Future<UserCredential?> signupMethod() async {
    UserCredential? userCredential;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email.value, password: password.value);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    return userCredential;
  }

  //storing data method

  storeUserData({name, password, email}) async {
    DocumentReference store =
        await firestore.collection(UserCollection).doc(currentUser!.uid);
    store.set(
        {'name': name, 'password': password, 'email': email, 'imageUrl': ''});
  }

  //signout method

  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: toString());
    }
  }
}
