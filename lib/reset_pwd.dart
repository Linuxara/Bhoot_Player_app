import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShowAlertDialog.dart';


class reset_password extends StatefulWidget {


  @override
  _reset_passwordState createState() => _reset_passwordState();
}
class _reset_passwordState extends State<reset_password> {


  TextEditingController _Resetpcontroller = new TextEditingController();
  TextEditingController _Confirmpcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Reset Your Password"),
        backgroundColor: Colors.cyanAccent.shade400,
      ),
      body: Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.all(3.0),
          height: 245,
          width: 400,
          
          child: new Column(
              children: <Widget>[
                new TextField(
                  controller: _Resetpcontroller,
                  keyboardType: TextInputType.streetAddress,
                  decoration: new InputDecoration(
                      labelText: "New password",
                      hintText: "Enter new Password"
                  ),
                ),
                new TextField(
                  controller: _Confirmpcontroller,
                  keyboardType: TextInputType.streetAddress,
                  decoration: new InputDecoration(
                      labelText: "Confirm password",
                      hintText: "Re-enter Password"
                  ),
                ),
                ElevatedButton(
                  child: Text("Submit"), onPressed:() {
          Future.delayed(Duration.zero, () =>
                 showAlertDialog(context, "Password Updated!!!"));
                 }


          )
    ]
      ),
      )
    );
  }
}




