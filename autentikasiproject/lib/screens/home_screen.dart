import 'package:autentikasiproject/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
  FirebaseAuth auth = FirebaseAuth.instance;
  if (auth.currentUser != null){
    print(auth.currentUser!.email);
  }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: const Icon(Icons.notifications),onPressed: () {}),
                IconButton(icon: const Icon(Icons.extension),onPressed: () {}),
              ],
            ),
            const SizedBox(height: 37,),
            Text.rich(
              TextSpan(
                children:<TextSpan>[
                  TextSpan(
                    text: "Welcome, \n",
                    style: TextStyle(
                      color: Colors.blue[300]),
                  ),
                    TextSpan(
                      text: auth.currentUser!.email,
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                ],
                ),
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, size: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                  hintText: "Search"),
              ),
              const SizedBox(height: 10,),
              const Text("Recomended Place", 
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20,),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    _signOut().then((value) => Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(
                        builder: (context) => LoginScreen())));
                  },
                   child: const Text("Log out"),
                  ))
                ],
              )
        ),
         );
  }
}
final countries = ["Tokyo", "Berlin", "Roma","Monas"];