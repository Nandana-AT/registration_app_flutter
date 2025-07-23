import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> register({
  required String uname,
  required String Email,
  required String password,
  required String confirmPassword,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: Email,
      password: password,
    );

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("User created successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> Login({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("login successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
Future<void>forgetPassword({
  required String email,required BuildContext context,
})async{
  try{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content: Text("send link")));
  }catch(e){
    ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}