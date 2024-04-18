import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sanberappflutter/Tugas/Tugas10/HomeScreen.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth =  FirebaseAuth.instance;
  // registerSubmit() async{
  //   try{
  //     await _firebaseAuth.createUserWithEmailAndPassword(
  //       email : emailController.text.toString().trim(),
  //       passsword : _passwordController.Text);
  // } catch (e) {
  //   print(e);
  //   SnackBar(content: Text(e.toString()));
  // }
  // }

loginSubmit() async {
  try{
    _firebaseAuth 
      .signInWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text)
      .then((value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen())));
  } catch (e) {
    print(e);
    SnackBar(content: Text(e.toString()));
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 40),
            child: const Text(
              "latihan auth", 
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30),
            ),
          ),
          Padding(padding: const EdgeInsets.all(8),
          child: Image.network("http://wilanafif.id/assests/images/artikel/Apa_itu_Flutter1591067755.png", 
          height: 100, 
          width: 100,
          ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Username"
              ),
            ),
          ),
          Container(
           padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Password"
              ),
            ),
          ),
          TextButton(
            onPressed: () {}, 
            child: const Text("FOrgot Password"),
            ),
           Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: raisedButtonStyle,
              child: const Text("Register"),
              onPressed: ()  async{
                await _firebaseAuth.createUserWithEmailAndPassword(
                  email: _emailController.text, 
                  password: _passwordController.text);
              }
            ),
           ),
           const SizedBox(height: 10),
           Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: raisedButtonStyle,
              child: const Text("Login"),
              onPressed: () async {
                await _firebaseAuth.signInWithEmailAndPassword(
                  email: _emailController.text, 
                  password: _passwordController.text
                  ).then((value) => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=> HomeScreen())
                  ));
              }
            ),
           ), 

        ],
      ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  //onPrimary: Colors.grey[300],
  //primary: Colors.blue[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);