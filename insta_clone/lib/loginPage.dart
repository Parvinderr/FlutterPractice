import 'package:flutter/material.dart';
// import 'home.dart';
import 'profile.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormFieldState> _fieldKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> _fieldKey1 = GlobalKey<FormFieldState>();
  String dropValue = 'English';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _key,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.grey[100],
                padding: EdgeInsets.only(
                  top: 4,
                  right: 150,
                  left: 150,
                  bottom: 4,
                ),
                alignment: Alignment.centerRight,
                child: DropdownButton(
                  value: dropValue,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  dropdownColor: Colors.white60,
                  isDense: true,
                  autofocus: true,
                  focusColor: Colors.pink[300],
                  isExpanded: true,
                  elevation: 10,
                  onTap: () {
                    print('You Entered $dropValue');
                  },
                  onChanged: (_value) {
                    _value = dropValue;
                    print('You selected $_value');
                  },
                  items: [
                    DropdownMenuItem(
                      value: 'English',
                      child: Text('English'),
                      onTap: () {},
                    ),
                    DropdownMenuItem(
                      value: 'Hindi',
                      child: Text('Hindi'),
                      onTap: () {},
                    ),
                    DropdownMenuItem(
                      value: 'Punjabi',
                      child: Text('Punjabi'),
                      onTap: () {},
                    ),
                    DropdownMenuItem(
                      value: 'Bengali',
                      child: Text('Bengali'),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text(
                        'Instagram',
                        style: TextStyle(
                            fontFamily: 'Tangerine',
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0)),
                          child: TextFormField(
                            scrollPadding: EdgeInsets.all(12.0),
                            onChanged: (name) {
                              print('$name');
                            },
                            decoration: InputDecoration(
                              labelText: "UserName",
                              // helperText: 'Enter Your Name',
                              hintText: 'Enter Your Name',
                              isDense: true,
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              fillColor: Colors.pink,
                              hoverColor: Colors.amber,
                              border: OutlineInputBorder(),
                              focusColor: Colors.grey[200],
                            ),
                            showCursor: true,
                            autofocus: true,
                            autocorrect: true,
                            key: _fieldKey,
                            cursorColor: Colors.grey[700],
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0)),
                          child: TextFormField(
                            scrollPadding: EdgeInsets.all(12.0),
                            enableInteractiveSelection: true,
                            scrollPhysics: BouncingScrollPhysics(),
                            showCursor: true,
                            obscureText: true,
                            onChanged: (name) {
                              print('$name');
                            },
                            decoration: InputDecoration(
                              labelText: "PassWord",
                              hintText: 'Enter Your PassWord',
                              isDense: true,
                              border: OutlineInputBorder(),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              fillColor: Colors.pink,
                              hoverColor: Colors.amber,
                              focusColor: Colors.grey[200],
                            ),
                            autofocus: true,
                            autocorrect: true,
                            key: _fieldKey1,
                            cursorColor: Colors.grey[700],
                          ),
                        ),
                        Container(
                          // transform: Matrix4.identity(),
                          margin: EdgeInsets.all(20.0),
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //       color: Colors.black, style: BorderStyle.solid),
                          //   borderRadius: BorderRadius.circular(60.0),
                          // ),
                          height: 50,
                          width: double.infinity,
                          child: FlatButton(
                            color: Colors.blueAccent,
                            // padding: EdgeInsets.all(14.0),
                            child: Text('Login'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ),
                              );
                            },
                            visualDensity: VisualDensity(
                              horizontal: 1.0,
                              vertical: 0.45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Flexible(
                child: MaterialButton(
                  elevation: 10.0,
                  clipBehavior: Clip.hardEdge,
                  animationDuration: Duration(
                    milliseconds: 500,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Dont Have Account. ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
