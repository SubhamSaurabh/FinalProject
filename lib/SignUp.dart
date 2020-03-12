import 'package:flutter/material.dart';
import 'LoginPage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int selectedRadio;
  int selectedRadioType;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioType = 0;
  }

  // Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  setSelectedRadioType(int val) {
    setState(() {
      selectedRadioType = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 25.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'login',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700),
                      ),
                    )
                  ],
                ),
                /*Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Welcome to Kitchen Zoom',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black87),
                  ),
                ),*/
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Sign up to Kitchen Zoom',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                TextField(
                    style: TextStyle(fontWeight: FontWeight.w500),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check),
                        hintText: 'Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(fontWeight: FontWeight.w400))),
                TextField(
                    style: TextStyle(fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check),
                        hintText: 'Username',
                        labelText: 'Username',
                        labelStyle: TextStyle(fontWeight: FontWeight.w400))),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        hintText: 'Registration',
                        labelText: 'Registration',
                        labelStyle: TextStyle(fontWeight: FontWeight.w400))),
                TextField(
                    style: TextStyle(fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        hintText: 'SIC',
                        labelText: 'SIC',
                        labelStyle: TextStyle(fontWeight: FontWeight.w400))),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                    obscureText: true,
                    style: TextStyle(fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(fontWeight: FontWeight.w400))),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Veg',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      activeColor: Colors.green,
                      onChanged: (val) {
                        print("Radio $val");
                        setSelectedRadio(val);
                      },
                    ),
                    Text(
                      'Non-Veg',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Radio(
                      value: 2,
                      groupValue: selectedRadio,
                      activeColor: Colors.red,
                      onChanged: (val) {
                        print("Radio $val");
                        setSelectedRadio(val);
                      },
                    ),
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Student',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Radio(
                      value: 1,
                      groupValue: selectedRadioType,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        print("Radio $val");
                        setSelectedRadioType(val);
                      },
                    ),
                    Text(
                      'Supervisor',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Radio(
                      value: 2,
                      groupValue: selectedRadioType,
                      activeColor: Colors.blue,
                      onChanged: (val) {
                        print("Radio $val");
                        setSelectedRadioType(val);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ),
                    elevation: 5.0,
                    fillColor: Colors.black,
                    shape: StadiumBorder(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'By signing up you agree to our ',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Terms of Use',
                          style: TextStyle(
                            color: Colors.blue,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'and ',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.blue,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
