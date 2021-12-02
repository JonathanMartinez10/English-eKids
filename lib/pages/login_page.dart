import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        
        child: const SafeArea(
          child: _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        SizedBox(height: 60.0,),
        Text('Login',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
        SizedBox(height: 50.0,),
        Text('Login to your account',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
        SizedBox(height: 50.0,),

        _CrearInputs(),

        SizedBox(height: 40,),

        _BotonLogin(),
      ],
    );
  }
}

class _BotonLogin extends StatelessWidget {
  const _BotonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      color: Colors.deepPurple,
      child: const Text('Login', style: TextStyle(fontSize: 30,color: Colors.white),),
      onPressed: ()=>Navigator.pushNamed(context, 'home_page'),
    );
  }
}

class _CrearInputs extends StatelessWidget {
  const _CrearInputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      //color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          Text('Ingresa tu correo',style: TextStyle(fontSize: 17),),
          SizedBox(height: 20,),

          _CrearEmai(),

          SizedBox(height: 20,),
          Text('Ingresa tu contraseña', style: TextStyle(fontSize: 17)),
          SizedBox(height: 20,),

          _CrearPassword()
        ],
      ),
    );
  }
}

class _CrearPassword extends StatelessWidget {
  const _CrearPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: 'Password',
        labelText: 'Password',
        icon: const Icon(Icons.lock_open),
      ),
      onChanged: (valor){},
    );
  }
}

class _CrearEmai extends StatelessWidget {
  const _CrearEmai({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Email',
        labelText: 'Email',
        icon: const Icon(Icons.email),
      ),
      onChanged: (valor){},
    );
  }
}