import 'package:cloud_firestore/cloud_firestore.dart';


class User {
  String name;
  String contact;
  String email;
  
  User({required this.name, required this.email, required this.contact});

  Future<bool> createUser() async{
    try{
      final docUser = FirebaseFirestore.instance.collection('Users').doc('$name');

      final user = User(name: name, email: email, contact: contact);

      final json = user.toJson();
      
      await docUser.set(json);
      return true;

    }
    catch(e){
      return false;
    }
  }

  Map<String,dynamic> toJson() => {
    'name' : name,
    'contact' : contact,
    'email' : email
  };

}