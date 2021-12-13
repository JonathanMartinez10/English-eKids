import 'dart:html';
import 'package:flutter/material.dart';
import 'package:english_ekids/entities/StudentDetailsClass.dart';

class SignUpPage extends StatelessWidget {
  String name = "";
  String email = "";
  String pass = "";
  String pass2 = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SignUpPage();
  static final List<StudentDetail> students = [];

  void iniciarSesion(context) {
    FormState? _formState = _formKey.currentState;

    if (_formState!.validate()) {
      _formState.save();
      students.add(new StudentDetail.parameters(name, email, pass));
      Navigator.pushReplacementNamed(context, 'login_page');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: ListView(children: <Widget>[
            Card(
              child: Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 60.0,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        'Ingresa tus datos',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Username',
                          hintText: 'Nombre de usuario',
                          icon: const Icon(Icons.account_circle),
                        ),
                        validator: (var valor) {
                          if (valor != null && valor.length > 4) {
                            return null;
                          } else {
                            return "Debe ingresar un nombre";
                          }
                        },
                        onSaved: (var value) => name = value.toString(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Email',
                          labelText: 'Email',
                          icon: const Icon(Icons.email),
                        ),
                        onChanged: (valor) {},
                        validator: (var value) {
                          RegExp emailCorrect = RegExp(
                              r'[a-zA-Z0-9]*@{1}((gmail)|(hotmail)|(outlook)){1}((\.com)|(\.es)|(\.mx)){1}');
                          if (emailCorrect.hasMatch((value.toString()))) {
                            StudentDetail studentDetails =
                                new StudentDetail.parameters(
                                    name, value.toString(), pass);
                          } else {
                            return "Correo incorrecto";
                          }
                        },
                        onSaved: (var value) => email = value.toString(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Password',
                          labelText: 'Password',
                          icon: const Icon(Icons.lock_open),
                        ),
                        onChanged: (valor) {},
                        validator: (var value) {
                          RegExp passCorrect = RegExp(r'[a-zA-Z]|[0-9]+.*');
                          if (value != null &&
                              value.length > 9 &&
                              passCorrect.hasMatch((value.toString()))) {
                            return null;
                          } else {
                            return "Su contrasena es insegura agregue numeros,letras,otro caracter";
                          }
                        },
                        onSaved: (var value) => pass = value.toString(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Password',
                          labelText: 'Confirm password',
                          icon: const Icon(Icons.lock_open),
                        ),
                        onChanged: (valor) {},
                        validator: (var value) {
                          RegExp passCorrect = RegExp(r'[a-zA-Z]|[0-9]+.*');
                          if (value != null &&
                              value.length > 9 &&
                              passCorrect.hasMatch((value.toString()))) {
                            return null;
                          } else {
                            return "Su contrasena es insegura agregue numeros,letras,otro caracter";
                          }
                        },
                        onSaved: (var value) => pass2 = value.toString(),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 10),
                        color: Colors.deepPurple,
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        onPressed: () {
                          //verifica so no hay un usuario con coincidencias
                          iniciarSesion(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
