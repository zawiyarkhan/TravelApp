import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/Models/user_model.dart';
import 'package:get/get.dart';
import 'home.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {

  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _nameField = TextEditingController();
  final TextEditingController _contactField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2.3,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/Register.jpg",
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),

            const SizedBox(height: 10,),

            Center(
              child: Text(
                "Register Now!",
                style: GoogleFonts.robotoMono(
                  textStyle : const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700
                  )
                )
              ),
            ),

            const SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameField,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: "Name",
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),    
                        )
                    ),
                  ),

                  const SizedBox(height: 15,),

                  TextFormField(
                  
                    controller: _emailField,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: "Email",
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),    
                        )
                    ),
                  ),

                  const SizedBox(height: 15,),

                  TextFormField(
                    controller: _contactField,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      labelText: "Contact Number",
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),    
                        )
                    ),
                  ),


                  const SizedBox(height: 15,),

                  Center(
                    child: ElevatedButton(onPressed: ()async {
                      final user = User(name: _nameField.text, email: _emailField.text, contact: _contactField.text);
                      bool create = await user.createUser();
                      if (create){
                        Get.to(()=>const Home());
                      }
                    },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0e3a87),
                        fixedSize: const Size(120, 50),
                        //fixedSize: const Size(100,100),
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ), 
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      
                    ),
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}