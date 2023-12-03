import 'package:flutter/material.dart';
import 'package:newws/home.dart';

class loginScreen extends StatefulWidget{
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool sc = true;
  TextEditingController emailText = TextEditingController();
  TextEditingController passText = TextEditingController();
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "Poppins"
                  ),
              ),
              Text(
                "Again!",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF3A44),
                    fontFamily: "Poppins"
                ),
              ),
              Text(
                "Welcome back you’ve \nbeen missed",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: "Poppins"
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: "Poppins"
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFFF3A44),
                        fontFamily: "Poppins"
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: emailText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: "Poppins"
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFFF3A44),
                        fontFamily: "Poppins"
                    ),
                  ),
                ],
              ),
              TextFormField(
                obscureText: sc,
                controller: passText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {

                        });
                        sc = !sc;
                      },
                      icon: Icon(Icons.remove_red_eye_outlined)
                  )
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Checkbox(
                        value: check,
                        onChanged: (valu){
                          setState(() {

                          });
                          check = valu!;
                        },
                        activeColor: Color(0xFFFF3A44),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Remember me",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: "Poppins"
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: TextButton(
                        onPressed: (){

                        },
                        child: Text(
                          "Forget the password?",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins"
                          ),
                        ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFFF3A44))),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context){
                                return homeScreen();
                              }
                          )
                      );
                    },
                    child: Text("Login")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}