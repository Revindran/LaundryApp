import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.grey[400]),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _vSpace(),
                  Align(
                      alignment: Alignment.centerLeft, child: _hText("Login")),
                  _vSpace(),
                  const TextField(
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 20.0, color: Colors.redAccent),
                      labelStyle:
                          TextStyle(fontSize: 20.0, color: Colors.redAccent),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.redAccent,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Username',
                    ),
                  ),
                  _vSpace(),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 20.0, color: Colors.redAccent),
                      labelStyle:
                          TextStyle(fontSize: 20.0, color: Colors.redAccent),
                      prefixIcon: Icon(Icons.security, color: Colors.redAccent),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Forgot your password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  _vSpace(),
                  MaterialButton(
                    onPressed: () {},
                    //since this is only a UI app
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'SFUIDisplay',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Colors.grey[700],
                    elevation: 0,
                    minWidth: 400,
                    height: 50,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  _vSpace(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _vSpace() {
  return SizedBox(
    height: 20,
  );
}

Widget _hText(String? heading) {
  return Text(
    '$heading',
    textAlign: TextAlign.left,
    style: TextStyle(
      color: Colors.grey[700],
      fontSize: 40,
      fontWeight: FontWeight.w600,
    ),
  );
}
