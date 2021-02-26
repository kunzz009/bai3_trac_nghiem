import 'package:flutter/material.dart';
import 'package:flutter_app03/main.dart';


// ignore: must_be_immutable
class End extends StatefulWidget {
  int count;
  End({Key key , @required this.count}) : super(key: key);
  @override
  _EndState createState() => _EndState(count);
}

class _EndState extends State<End> {
  int count;
  _EndState(this.count);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Kết quả'
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Material(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage('assets/cm.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Chúc mừng bạn đã hoàn thành!\nScores: $count',
                          style: TextStyle(
                            // fontFamily: "Redressed",
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
                },
                  child: Text(
                    'Quay lại',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.green),
                  splashColor: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
