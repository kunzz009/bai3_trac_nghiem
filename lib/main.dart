import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app03/screens/pageone.dart';


void main() => runApp( new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        home: new LoginPage(),
        theme: new ThemeData(
            primarySwatch: Colors.blue
        )
    );
  }

}
class LoginPage extends StatefulWidget  {
  @override
  State createState() => new LoginPageState();
}
class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 300)
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeInOut);
    _iconAnimation.addListener(() =>this.setState(() {

    }));
    _iconAnimationController.forward();
  }
  void _clickbutton(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => getjson(),));
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children:<Widget> [
          new Image(
            image: new AssetImage("assets/ab.jpg"),height: 90, width: 150,
            fit: BoxFit.cover,
            color: Colors.limeAccent,
            colorBlendMode: BlendMode.darken,


          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children:<Widget> [
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ),

              new Form(child: new Theme(
                data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                          color: Colors.teal,fontSize: 20.0
                      ),
                    )

                ),
                child: new Container(
                  padding: const EdgeInsets.all(40.0),

                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      new Text(


                        "Funny Question",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40
                      ),
                      ),

                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Email",
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Password",
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      new Padding(
                          padding: const EdgeInsets.only(top:20.0)),
                      new MaterialButton(
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Login"),
                        onPressed: (_clickbutton),
                        splashColor: Colors.redAccent,
                      ),
                      new Padding(
                          padding: const EdgeInsets.only(top:50.0)),
                      new Text(


                        "by Chu Tung Lam ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20
                      ),
                      ),
                    ],
                  ),
                ),
              ),

              )
            ],
          )
        ],
      ),
    );
  }
}
