import 'package:flutter/material.dart';
import 'package:travel_app/Auth/authentication.dart';
import 'package:get/get.dart';
import 'package:travel_app/Models/user_model.dart';
import 'home.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _nameField = TextEditingController();
  final TextEditingController _contactField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: _nameField,
              decoration: const InputDecoration(
                labelText: "Name" 
              ),
            ),
            TextFormField(
              controller: _emailField,
              decoration: const InputDecoration(
                labelText: "email" 
              ),
            ),
            TextFormField(
              obscureText: true,
              controller: _contactField,
              decoration: const InputDecoration(
                labelText: "contact" 
              ),
            ),
            const SizedBox(height: 12,),

            TextButton(onPressed: ()async{
              final user = User(name: _nameField.text, email: _emailField.text, contact: _contactField.text);

              bool create = await user.createUser();

              
              if (create){
                Get.to(()=>const Home());
              }
            },
             child: const Text("Register"))
          ],
        ),
      ),
    );
  }
}