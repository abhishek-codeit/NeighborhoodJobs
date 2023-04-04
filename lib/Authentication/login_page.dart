import 'package:flutter/material.dart';
import 'package:sdg_gdsc/Confirmation/confimation.dart';
import 'package:sdg_gdsc/Employee/employee.dart';
import 'package:sdg_gdsc/Employer/employer.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Logo Image will go here
            // Container(
            //   height: 140,
            //     decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: ExactAssetImage('Logo Coming Soon')
            //             //fit: BoxFit.fitHeight,
            //             )),
            // ),
            const SizedBox(
              height: 8.0,
            ),
            SizedBox(
              height: 50.0,
              width: 300.0,
              child:
              TextFormField(
              controller: _emailField,
              decoration: const InputDecoration(
                  //hintText: "Enter your Email",
                  //hintStyle: TextStyle(color: Colors.white),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ),
            SizedBox(
              height: 50.0,
              width: 300.0,
              child: TextFormField(
              controller: _passwordField,
              decoration: const InputDecoration(
                  //hintText: "Enter your Password",
                  //hintStyle: TextStyle(color: Colors.white),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
              obscureText: true,
            ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.lightGreenAccent,
              ),
              child: MaterialButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Employee(),
                      ),
                    );
                  //After authentication with firebase this should be done
                  // bool shouldNavigate =
                  //     await signIn(_emailField.text, _passwordField.text);
                  // if (shouldNavigate) {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => HomeView(),
                  //     ),
                  //   );
                  },
                child: const Text("Employee"),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.0),
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.lightGreenAccent,
              ),
              child: MaterialButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Employer(),
                      ),
                    );
                  //After authentication and integration with firebase
                  // bool shouldNavigate =
                  //     await register(_emailField.text, _passwordField.text);
                  // if (shouldNavigate) {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => HomeView(),
                  //     ),
                  //   );
                  // }
                },
                child: const Text("Employer",textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
