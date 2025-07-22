import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 100),
              SizedBox(height: 55,
                width:double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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