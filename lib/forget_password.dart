import 'package:flutter/material.dart';
import 'package:registration_app_flutter/sevices.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailcontroller =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [SizedBox(height: 20,),
            Text("Forget Password?",style: TextStyle( color:Colors.black, fontWeight: FontWeight.bold 
            ),
            ),
            Align(alignment: Alignment.topLeft, child: Text("Email")),
              TextField(controller: emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
             SizedBox(height: 20,),
              SizedBox(height: 55,
              
                width:double.infinity,
                child: ElevatedButton(
                  onPressed: () {forgetPassword(email: emailcontroller.text,context: context);},
                  child: Text("Send link"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}