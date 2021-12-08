import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
      
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const[
                SizedBox(height: 60.0,),
                Text('Sign Up',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                SizedBox(height: 50.0,),
                Text('Ingresa tus datos',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
      
                _CrearInputs(),
                SizedBox(height: 40,),
                
                _BotonSignUp()
              ],
            ),
          ),
        ),
      ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          SizedBox(height: 20,),
          _CrearNombre(),
          SizedBox(height: 20,),
          _CrearEmail(),
          SizedBox(height: 20,),
          _CrearPassword(),
          SizedBox(height: 20,),
          _CrearPassword2(),
        ],
      ),
    );
  }
}

class _CrearNombre extends StatelessWidget {
  const _CrearNombre({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: 'Username',
        hintText: 'Nombre de usuario',
        icon: const Icon(Icons.account_circle),
      ),
      onChanged: (valor){},
    );
  }
}

class _CrearEmail extends StatelessWidget {
  const _CrearEmail({
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

class _CrearPassword2 extends StatelessWidget {
  const _CrearPassword2({
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
        labelText: 'Confirm password',
        icon: const Icon(Icons.lock_open),
      ),
      onChanged: (valor){},
    );
  }
}

class _BotonSignUp extends StatelessWidget {
  const _BotonSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      color: Colors.deepPurple,
      child: const Text('Sign Up', style: TextStyle(fontSize: 30,color: Colors.white),),
      onPressed: (){},
    );
  }
}
