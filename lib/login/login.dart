import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "images/logo.png",
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Enter Username",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Row(children: [
                        Text("if you havent account "),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("signup");
                          },
                          child: Text(
                            "Click Here",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ])),
                  Container(
                    child: MaterialButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      onPressed: () {},
                      child: Text(
                        "Log In",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
