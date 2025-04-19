import 'package:flutter/material.dart';
import 'package:my_first_app/profile_screen.dart';

class LoginWithState extends StatefulWidget {
  const LoginWithState({super.key});

  @override
  State<LoginWithState> createState() => _LoginWithStateState();
}

class _LoginWithStateState extends State<LoginWithState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordNyala = true;
  tampilPassword(){
    setState(() {
      passwordNyala=!passwordNyala;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
                controller: emailController,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon:
                   //Icon( passwordNyala ? Icons.visibility_off : Icons.visibility),
                  IconButton(onPressed: (){
                    tampilPassword();
                  },
                      icon: Icon(
                        passwordNyala ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
                controller: passwordController,
                obscureText: passwordNyala,
              ),
              TextButton(
                  onPressed: () {
                    var push = Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen(
                                nama: passwordController.text,
                               ),
                        ),
                    );
                tampilPassword();
                print("email: ${emailController.text}");
                print("Password: ${passwordController.text}");
              },
                  child: Text("Login")
              ),
            ],
          ),
      ),
    );
  }
}
