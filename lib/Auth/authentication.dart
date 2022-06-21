import 'package:firebase_auth/firebase_auth.dart';


// Sign In

Future<bool> signIn(String email, String password)async{
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return true;
  } catch (e) {
    return false;
  }
}



// Register

Future<bool> register(String email, String password) async {
  try{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch (e){
    if (e.code == 'weak-password') {
      // print('Weak Password');
    }
    else if(e.code == 'email-already-in-use'){
      // print('email is already taken');
    }
    return false;
  }
}