import 'package:flutter/material.dart';
import 'package:flutter_login/screens/rounded_input_field_email.dart';
import 'package:flutter_login/screens/rounded_input_field_password.dart';

class SignInPage extends StatelessWidget {
  static const routeName = "/loginPage";
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void validateInput() {
    FormState form = this.formKey.currentState;
    ScaffoldState scaffold = this.scaffoldKey.currentState;

    SnackBar message = SnackBar(
      content: Text('Semua data sudah tervalidasi'),
    );
    if (form.validate()) {
      scaffold.showSnackBar(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.blue[900],
        padding: EdgeInsets.all(50.0),
        child: Form(
          key: formKey,
          child: Column(children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
            ),
            Text(
              "Log In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Container(height: 10.0),
            RoundedInputFieldEmail(
              onChanged: (value) {},
            ),
            RoundedInputFieldPassword(
              onChanged: (value) {},
            ),
            Container(height: 10.0),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  ),
                  child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 55,
                      child: RaisedButton(
                        onPressed: validateInput,
                        color: Colors.cyan[600],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
            ),
            Text(
              "Forgot password?",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 15,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            Text(
              "Register Here",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
