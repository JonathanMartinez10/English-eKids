import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String email = "";
  String pass = "";
  String emailTemp = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginPage();

  void iniciarSesion(context) {
    FormState? _formState = _formKey.currentState;

    if (_formState!.validate()) {
      _formState.save();
      print("Correcto");
      Navigator.pushNamed(context, 'home_page');
    } else {
      print("No");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: ListView(
            children: <Widget>[
              Card(
                child: Container(
                  //padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          'Ingresa tu correo',
                          style: TextStyle(fontSize: 17),
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
                          onChanged: (value) {
                            emailTemp = value;
                          },
                          validator: (value) {
                            //hacer un select
                            if (false) {
                              return "Compruve su correo, o registrece";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (var value) => email = value.toString(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Ingresa tu contraseña',
                            style: TextStyle(fontSize: 17)),
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
                          validator: (value) {
                            //comparar si el usuario existe
                            if (emailTemp == emailTemp) {
                              return null;
                            } else {
                              return "No esxiste el usuario";
                            }
                          },
                          onSaved: (var value) => pass = value.toString(),
                        ),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 10),
                            color: Colors.deepPurple,
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            onPressed: () {
                              iniciarSesion(context);
                            }),
                      ],
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
