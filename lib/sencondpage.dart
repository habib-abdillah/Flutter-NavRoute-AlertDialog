import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("Kembali !!!"),
                onPressed: () {
                  konfirmasiDialog(context);
                })
          ],
        ),
      ),
    );
  }

  void konfirmasiDialog(BuildContext context) {
    setState(() {
      Widget OKButton = FlatButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: Text("Ya"));
      Widget CANCELButton = FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Batal"));

      AlertDialog alert = AlertDialog(
        title: Text("Konfirmasi"),
        content: Text("Apakah anda yakin akan kembali ke halaman sebelumnya?"),
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
