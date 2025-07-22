import 'package:flutter/material.dart';
import 'package:registration_app_flutter/login.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [SizedBox(height: 20),
              Text(
                "Signup",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Create an account, it's free",
                style: TextStyle(color: Colors.black),
              ),
              Align(alignment: Alignment.topLeft, child: Text("Username")),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(alignment: Alignment.topLeft, child: Text("Email"),),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 20,),
              Align(alignment: Alignment.topLeft, child: Text("Password")),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(alignment: Alignment.topLeft, child: Text("Confirm password")),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              SizedBox(
                height:55,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(color: Colors.black),),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                  },
                  child:Text ("Login", style: TextStyle(fontWeight: FontWeight.bold),))
                ],
              )
              ],),
    ),),);
    }
  }