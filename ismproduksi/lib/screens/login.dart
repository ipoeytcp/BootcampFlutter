import 'package:flutter/material.dart';
import 'package:ismproduksi/screens/home.dart';
import 'package:ismproduksi/widgets/custom_textfields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nippController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: Color(0xFF1650C0)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/login.png"),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Silahkan Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1650C0),
                    fontSize: 20),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextfield(
                  controller: nippController,
                  textInputType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  hint: "Masukan NIPP"),
              const SizedBox(
                height: 16,
              ),
              CustomTextfield(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                hint: "Masukan password",
                isObscure: isObscure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: SizedBox(
                  width: 500,
                  height: 60,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF1650C0))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
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
