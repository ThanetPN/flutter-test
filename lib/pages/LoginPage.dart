import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ])),
        child: Center(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Image(
              image: AssetImage('assets/images/logo.jpg'),
              fit: BoxFit.cover,
            ),
            Text('Login', style: TextStyle(fontSize: 30, color: Colors.white)),
            Padding(
              padding: EdgeInsets.all(10),
              child: FormBuilder(
                key: _formKey,
                initialValue: {
                  'email': '',
                  'password': '',
                },
                child: Column(
                  children: <Widget>[
                    FormBuilderTextField(
                        name: 'email',
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.black87),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            errorStyle: TextStyle(color: Colors.white)),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.numeric(context),
                        ])),
                    SizedBox(height: 20),
                    FormBuilderTextField(
                        name: 'password',
                        maxLines: 1,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.black87),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            errorStyle: TextStyle(color: Colors.white)),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.numeric(context),
                          FormBuilderValidators.minLength(context, 3),
                        ])),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 200,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text('Login',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        padding: EdgeInsets.all(20),
                        color: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: MaterialButton(
                              child: Text('ลงทะเบียน',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline)),
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              child: Text('ลืมรหัสผ่าน?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline)),
                              onPressed: () {},
                            ),
                          )
                        ])
                  ],
                ),
              ),
            )
          ])),
        ),
      ),
    );
  }
}
