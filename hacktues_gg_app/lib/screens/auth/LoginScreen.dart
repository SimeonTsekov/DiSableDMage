import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/AuthBloc.dart';
import 'package:hacktues_gg_app/event/AuthEvent.dart';
import 'package:hacktues_gg_app/state/AuthState.dart';
import 'package:hacktues_gg_app/utils/StreamListener.dart';

class LoginScreen extends StatefulWidget {
  final AuthBloc _authBloc;

  const LoginScreen(this._authBloc);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  bool validateAndSave() {
    final FormState form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  Future<void> validateAndSubmit() async {
    if (validateAndSave()) {
      await widget._authBloc.sendEvent(
          AuthEvent.authenticate(email: _email, password: _password));
    }
  }

  Future<void> _presentDialog(BuildContext widgetContext,
      {required String message, required String additionalInformation}) async {
    await showDialog(
      context: widgetContext,
      builder: (context) => AlertDialog(
        title: Text(message),
        content: Text(additionalInformation),
        actions: <Widget>[
          // ignore: deprecated_member_use
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      ),
    );
  }

  Padding _buildInput(
          {required String hintText,
          required IconData primaryIcon,
          bool endIcon = false,
          IconData? suffixIconData,
          required TextInputType keyboardType,
          required FormFieldValidator<String> validate,
          required void Function(String) onChanged}) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          keyboardType: keyboardType,
          validator: validate,
          decoration: InputDecoration(
            suffixIcon: endIcon
                ? Icon(
                    suffixIconData,
                    color: Colors.white,
                  )
                : null,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            icon: Icon(
              primaryIcon,
              color: Colors.white,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.white.withOpacity(0.8), width: 1),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.5),
            ),
          ),
          onChanged: onChanged,
        ),
      );

  Widget _buildLoginButton(IconData iconName, Function onPressed) => Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SizedBox(
          width: 180,
          height: 45,
          // ignore: deprecated_member_use
          child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.lightBlueAccent,
              onPressed: () => onPressed(),
              child: Icon(
                iconName,
                color: Colors.white,
              )),
        ),
      );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return StreamListener<AuthState>(
        stream: widget._authBloc.stream,
        onData: (authState) {
          authState.when(
              authenticated: () {},
              // Navigate and stuff (or handle nav from a top level widget)
              failedToAuthenticate: (reason) {
                this._presentDialog(context,
                    message: 'Auth failed',
                    additionalInformation: reason.toString());
              },
              unknown: () {},
              loggedOut: () {});
        },
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Login'),
              backgroundColor: Colors.blueAccent,
              automaticallyImplyLeading: false,
              elevation: 0.0,
            ),
            extendBodyBehindAppBar: true,
            body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  color: Colors.lightBlueAccent,
                ),
                SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: height * 0.5,
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: 'G',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Europe_Ext'),
                                  children: [
                                    TextSpan(
                                      text: 'ree',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 30,
                                          fontFamily: 'Europe_Ext'),
                                    ),
                                    TextSpan(
                                      text: 'n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontFamily: 'Europe_Ext'),
                                    ),
                                    TextSpan(
                                      text: 'It',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Europe_Ext'),
                                    ),
                                  ]),
                            )),
                        _buildInput(
                            hintText: "Email",
                            primaryIcon: Icons.person_outline,
                            validate: (email) {
                              if (email == null || email.isEmpty) {
                                return 'Please enter a non-empty email address!';
                              }
                              if (!EmailValidator.validate(email)) {
                                return 'Please enter a valid email address!';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) => this._email = value),
                        _buildInput(
                            hintText: "Password",
                            primaryIcon: Icons.vpn_key,
                            endIcon: true,
                            validate: (password) {
                              if (password == null || password.isEmpty) {
                                return 'Please enter a password!';
                              }
                              if (password.length < 6) {
                                return 'Please enter a password longer than six characters!';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (value) => this._password = value),
                        _buildLoginButton(
                            Icons.exit_to_app, () => validateAndSubmit()),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
