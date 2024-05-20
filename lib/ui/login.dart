// Mengimpor paket Flutter
import 'package:flutter/material.dart';

// Definisi kelas Login, yang merupakan StatefulWidget
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  // Membuat state dari kelas Login
  @override
  _LoginState createState() => _LoginState();
}

// Definisi kelas _LoginState, yang merupakan State dari kelas Login
class _LoginState extends State<Login> {
  // Membuat key untuk form
  final _formKey = GlobalKey<FormState>();
  // Membuat controller untuk input username dan password
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  // Membuat build method untuk membentuk tampilan UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat layout menggunakan SingleChildScrollView dan SafeArea
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Membuat teks "Login Admin"
                Text(
                  "Login Admin",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50),
                // Membuat form login
                Center(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          // Memanggil widget untuk input username
                          _usernameTextField(),
                          SizedBox(height: 20),
                          // Memanggil widget untuk input password
                          _passwordTextField(),
                          SizedBox(height: 40),
                          // Memanggil widget untuk tombol login
                          _tombolLogin(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Membuat widget untuk input username
  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _usernameCtrl,
    );
  }

  // Membuat widget untuk input password
  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password"),
      obscureText: true,
      controller: _passwordCtrl,
    );
  }

  // Membuat widget untuk tombol login
  Widget _tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(child: Text("Login"), onPressed: () {}),
    );
  }
}
