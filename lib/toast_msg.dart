import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMsg extends StatefulWidget {
  const ToastMsg({Key? key}) : super(key: key);

  @override
  State<ToastMsg> createState() => _ToastMsgState();
}

class _ToastMsgState extends State<ToastMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast Msg"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "This is Short Toast message",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          },
          child: Text("click"),
        ),
      ),
    );
  }
}
