import 'package:flutter/material.dart';
import 'package:pogram12/screens/homepage.dart';
class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login page'),),
      body: Column(children: [TextFormField(
        validator: (value) {
                      if (value == null || value.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(
                              value.trim())) {
                        return 'please enter email';
                      }
                      else {
                        var val = value.trim();
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(val)) {
                          return 'please enter valid email';
                        }
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com')
                ),
                SizedBox(height: 50,),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter correct password';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
                Center(child: Text("forgot password")),
              ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar
                            (
                            const SnackBar(content: Text('Processing Data')),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homepage()),
                          );
                        }
                      },child: const Text(
                        style: TextStyle(color: Colors.white), 'Login'),
                    // style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
              ]),
    );
  }
}