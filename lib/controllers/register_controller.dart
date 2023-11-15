import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterController extends GetxController {
  var isObsecure = true.obs;

  var username = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  var isEmailValid = false.obs;
  var isPasswordValid = false.obs;
  var isChecked = false.obs;
  var isEmailUnique = true.obs;
  var isUsernameValid= false.obs;

  bool isAllValid() {
    return 
        isUsernameValid.value &&
        isEmailValid.value &&
        isPasswordValid.value &&
        isChecked.value;
  }

  void setObsecure() {
    isObsecure.value = !isObsecure.value;
  }

  Future<void> createUserLogin() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      await addDataToFirestore(); 
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // Handle weak password
      } else if (e.code == 'email-already-in-use') {
        isEmailUnique.value = false;
        isEmailValid.value = false;
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> addDataToFirestore() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      final user = FirebaseAuth.instance.currentUser;
      // Access the ID of the newly added document
      await firestore.collection('users').doc(user?.uid).set({
        'id': user?.uid,
        'username': username.value,
        'email': email.value,
        // Add more fields as needed
      });
    } catch (e) {
      print('Error adding data to Firestore: $e');
    }
  }

  String? validateEmail(String value) {
    // Regular expression untuk memeriksa alamat email
    final emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
    );

    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }

    return null;
  }
}