import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

  //textController
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //login method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }

    return userCredential;
  }


  //signup method
  Future<UserCredential?> signupMethod({email, password, context}) async {
    UserCredential? userCredential;
    print("Check signup 1");
    print('${email}, ${password}');
    try {
      userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      print("Check signup try 1");
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
      print("Check signup catch 1");
    }
    print("Check signup 2");
    return userCredential;
  }

  //storing data method

  storeUserData({name, email, password}) async {

    DocumentReference store = firestore.collection(userCollections).doc(currentUser!.uid);
    print("object");
    store.set({
      'name': name,
      'password': password,
      'email':email,
      'imgUrl':''
    });
  }

  //signout method

  signoutMethod(context) async{
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

}