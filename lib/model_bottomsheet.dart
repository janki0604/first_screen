import 'package:flutter/material.dart';

class ModelBottomsheet extends StatefulWidget {
  const ModelBottomsheet({Key? key}) : super(key: key);

  @override
  State<ModelBottomsheet> createState() => _ModelBottomsheetState();
}

class _ModelBottomsheetState extends State<ModelBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              // <-- SEE HERE
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),
              ),
            ),
            builder: (context) {
              return SizedBox(
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
