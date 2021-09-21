import 'package:flutter/material.dart';
import 'package:login/activity/home_activity/home_activity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/activity/instagram_home.dart';

import '../colors.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({Key? key}) : super(key: key);

  @override
  _LoginActivityState createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter, colors: [
          Colors.blue.shade900,
          Colors.blue.shade100,
          Colors.blue.shade50,
          Colors.blue.shade50,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: height/3,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontFamily: 'Fredoka'),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Fredoka'),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: Container(
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _usernameController,
                              style: TextStyle(
                                fontFamily: 'Fredoka',
                                color: Colors.grey.shade900,
                              ),
                              decoration: InputDecoration(
                                  labelText: 'Username',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Fredoka',
                                      color: Colors.grey.shade400,
                                      fontWeight: FontWeight.w100),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade600)),
                                  focusColor: Colors.grey.shade400),
                              cursorColor: Colors.grey.shade400,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: hidePassword,
                              controller: _passwordController,
                              style: TextStyle(
                                fontFamily: 'Fredoka',
                                color: Colors.grey.shade900,
                              ),
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Fredoka',
                                      color: Colors.grey.shade400,
                                      fontWeight: FontWeight.w100),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade600)),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        hidePassword = !hidePassword;
                                      });
                                    },
                                    icon: Icon(
                                      hidePassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey.shade900,
                                    ),
                                  )),
                              cursorColor: Colors.grey.shade400,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment(1.0, 0.0),
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 20,
                              ),
                              child: const InkWell(
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      fontFamily: 'Fredoka',
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            // loginButton(
                            //     usernameController: _usernameController,
                            //     passwordController: _passwordController)

                            Container(
                              height: (MediaQuery.of(context).size.height)/15,
                                width: double.infinity,
                              child:signUpButton(
                                onPressed: (){
                                  String username = _usernameController.text;
                                  String password = _passwordController.text;

                                  if (username == "") {
                                    print('username empty');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("Username cannot be empty")),
                                    );

                                    // Toast.show("Toast plugin app", context, duration: Toast.LENGTH_LONG, gravity:  ToastGravity.CENTER);

                                  } else if (password == "") {
                                    print('password empty');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("Password cannot be empty")),
                                    );
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => HomeActivity()),
                                      //MaterialPageRoute(builder: (context) => InstaHome()),
                                    );
                                  }
                                },) ,
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class signUpButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const signUpButton({Key? key, this.onPressed}) :
        super(key: key);
  @override
  Widget build(BuildContext context) {
    colorPrimary=  Color(Colors.grey.shade900.hashCode);
    return  Container(


      child: TextButton(
          style:TextButton.styleFrom(
             backgroundColor:colorPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),

          ),

          onPressed: onPressed,
          child: Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
    );

  }
}


class loginButton extends StatelessWidget {
  const loginButton({
    Key? key,
    required TextEditingController usernameController,
    required TextEditingController passwordController,
  })  : _usernameController = usernameController,
        _passwordController = passwordController,
        super(key: key);

  final TextEditingController _usernameController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Material(
        borderRadius: BorderRadius.circular(15),
        shadowColor: Colors.blue.shade900,
        color: Colors.blue.shade900,
        elevation: 7,
        child: InkWell(
          onTap: () {
            print('click login');
            // Validate returns true if the form is valid, or false otherwise.
            String username = _usernameController.text;
            String password = _passwordController.text;

            if (username == "") {
              print('username empty');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Username cannot be empty")),
              );

              // Toast.show("Toast plugin app", context, duration: Toast.LENGTH_LONG, gravity:  ToastGravity.CENTER);

            } else if (password == "") {
              print('password empty');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Password cannot be empty")),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeActivity()),
                //MaterialPageRoute(builder: (context) => InstaHome()),
              );
            }
            // ScaffoldMessenger.of(context).showSnackBar(
            //    SnackBar(content: Text(username)),
            // );
          },
          child: Center(
            child: Text(
              'LOGIN',
              style: TextStyle(color: Colors.white, fontFamily: 'Fredoka'),
            ),
          ),
        ),
      ),
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
