import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertMsg extends StatefulWidget {
  const AlertMsg({Key? key}) : super(key: key);

  @override
  State<AlertMsg> createState() => _AlertMsgState();
}

class _AlertMsgState extends State<AlertMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    scrollable: true,
                    semanticLabel: "in the alert",
                    actionsAlignment: MainAxisAlignment.spaceBetween,
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, "Permanently Deleted");
                        },
                        child: Text("yes"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, "not deleted");
                        },
                        child: Text("no"),
                      ),
                    ],
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    // backgroundColor: Colors.pink,
                    // contentPadding: EdgeInsets.all(90),
                    // insetPadding: EdgeInsets.all(100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    title: Text("Delete??"),
                    content: Text("permanently delete the folder??"),
                  ),
                ).then((value) => debugPrint("$value"));
              },
              child: Text("confirm"),
            ),
            CupertinoButton(
              child: Text("hi"),
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, "always fine dude");
                        },
                        child: Text("yes"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, "not good");
                        },
                        child: Text("no"),
                      ),
                    ],
                    content: Text("hey guys!!whats up?\nEverything Fine?"),
                  ),
                ).then((value) => debugPrint("$value"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
