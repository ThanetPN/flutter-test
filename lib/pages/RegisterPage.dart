import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ลงทะเบียน')),
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
            Text('Register',
                style: TextStyle(fontSize: 30, color: Colors.white)),
            Padding(
              padding: EdgeInsets.all(10),
              child: FormBuilder(
                key: _formKey,
                initialValue: {
                  'name': '',
                  'email': '',
                  'password': '',
                  //'dob': DateTime.now()
                },
                child: Column(
                  children: <Widget>[
                    FormBuilderTextField(
                        name: 'name',
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: "Name",
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
                    FormBuilderDateRangePicker(
                      name: 'dob',
                      firstDate: DateTime(1970),
                      lastDate: DateTime(2030),
                      format: DateFormat('yyyy-MM-dd'),
                      //onChanged: _onChanged,
                      decoration: InputDecoration(
                        labelText: 'Date',
                        labelStyle: TextStyle(color: Colors.black87),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 200,
                      child: MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState!.saveAndValidate()) {
                            print(_formKey.currentState!.value);
                          } else {
                            print("validation failed");
                          }
                        },
                        child: Text('Register',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                        padding: EdgeInsets.all(15),
                        color: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
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
