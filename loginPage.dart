import 'package:flutter/material.dart';
import 'signup.dart';
class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffff6400), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffff6400), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fillColor: Color(0xfff3f3f4),
                  prefixIcon: Icon(Icons.security,color: Color(0xffff6400),),
                  filled: true))
        ],
      ),
    );
  }
  Widget _entryFieldd(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffff6400), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffff6400), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fillColor: Color(0xfff3f3f4),
                  prefixIcon: Icon(Icons.email,color: Color(0xffff6400),),
                  filled: true))
        ],
      ),
    );
  }
  Widget _submitButton() {
    return RaisedButton(
      onPressed: () { },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      padding: const EdgeInsets.all(0.0),
      child: Ink(
        decoration:BoxDecoration(
          gradient: LinearGradient(colors:[Color(0xffff0000),Color(0xffff6400)] ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width:20,
          ),
        ],
      ),
    );
  }

  Widget _googleButton() {
    return RaisedButton(
      onPressed: () { },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      padding: const EdgeInsets.all(0.0),
      child: Ink(
        decoration:BoxDecoration(
          gradient: LinearGradient(colors:[Color(0xffff0000),Color(0xffff6400)] ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Image(
                image: AssetImage('images/goooogle.png'),
                height: MediaQuery.of(context).size.height*.03,
              ),
              SizedBox(width: 2,),
              Text(
                'Login with Google',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xffff6400),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Fo',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black,
          ),
          children: [
            TextSpan(
              text: 'od',
              style: TextStyle(color: Color(0xffff0000), fontSize: 30),
            ),
            TextSpan(
              text: 'cave',
              style: TextStyle(color:Colors.black , fontSize: 30),
            ),
          ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryFieldd("Email id"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffff0000),Color(0xffff6400)]
            ),
          ),
          child: Stack(
            children: <Widget>[

              Container(
                padding: EdgeInsets.fromLTRB(width*0.02,height*0.09,width*0.02,height*0.09),
                child: SingleChildScrollView(
                    child:Card(
                      elevation: 50.0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child:Container(
                        padding: EdgeInsets.fromLTRB(width*0.02,height*0.04,width*0.02,height*0.04),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                      child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height:height*0.0000001),
                      CircleAvatar(
                        radius:60,
                        backgroundColor:Colors.black,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius:55,
                          backgroundImage: AssetImage('images/hut.jpg'),
                        ),
                      ),
                      _title(),
                      SizedBox(height: 5),
                      _emailPasswordWidget(),
                      SizedBox(height: 15),
                      _submitButton(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        alignment: Alignment.centerRight,
                        child: Text('Forgot Password ?',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                      _divider(),
                      _googleButton(),
                      SizedBox(height: height * .02),
                      _createAccountLabel(),
                    ],
                  ),
                      )
                  ],
                ),
                  ),
                  ),
              ),
              ),
              //Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        ));
  }
}