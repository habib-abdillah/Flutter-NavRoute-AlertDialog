import 'package:flutter/material.dart';
import 'sencondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman 1"),
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text("Masuk Halaman Selanjutnya !!!"),
                    onPressed: () {
                      konfirmasiDialog(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void konfirmasiDialog(BuildContext context) {
    setState(() {
      Widget OKButton = FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute()));
          },
          child: Text("Ya"));
      Widget CANCELButton = FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Batal"));

      AlertDialog alert = AlertDialog(
        title: Text("Konfirmasi"),
        content: Text("Apakah anda yakin akan membuka halaman selanjutnya?"),
        actions: [OKButton, CANCELButton],
      );

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          });
    });
  }
}
