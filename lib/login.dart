import 'package:flutter/material.dart';
import 'package:registration_app_flutter/signup.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Login to your Account",
                style: TextStyle(color: Colors.black),
              ),
              Align(alignment: Alignment.topLeft, child: Text("Email")),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(alignment: Alignment.topLeft, child: Text("Password"),),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
              SizedBox(height: 100),
              SizedBox(height: 55,
                width:double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => signup(),));
                    },
                    child: Text("Signup",style: TextStyle(fontWeight: FontWeight.bold),))
                ],
              ),SizedBox(height: 30),
              SizedBox(
                height: 200,
                width: 300,
                child: Image(image: AssetImage("login.jpg"), fit: BoxFit.cover),
              ),],
          ),
        ),
      ),
    );
  }
}
