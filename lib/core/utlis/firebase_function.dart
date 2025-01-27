
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseFunctions{
  static createAccount(String email,String password,){
     FirebaseAuth.instance.createUserWithEmailAndPassword(
         email: email,
         password: password);
  }
}

