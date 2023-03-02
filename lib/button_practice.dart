import 'package:first_screen/screen_three.dart';
import 'package:flutter/material.dart';

import 'gridview_builder.dart';

class ButtonPractice extends StatefulWidget {
  const ButtonPractice({Key? key}) : super(key: key);

  @override
  State<ButtonPractice> createState() => _ButtonPracticeState();
}

class _ButtonPracticeState extends State<ButtonPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ScreenOne(),
                  //   ),
                  // );
                },
                icon: Icon(Icons.access_time_filled_rounded),
              ),
              Spacer(),
              InkWell(
                child: Icon(Icons.data_array),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenThree(),
                  ),
                ),
              ),
              Spacer(),
              DropdownButton(
                // value: 1,
                isDense: true,
                hint: Text("hy"),
                icon: Icon(Icons.piano),
                itemHeight: 100,
                elevation: 50,
                onTap: () => () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridviewBuilder(),
                      ));
                },
                items: [
                  DropdownMenuItem(
                    child: Text("hello"),
                    value: 1,
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => ScreenTwo(),
                    //       ));
                    // },
                  ),
                  DropdownMenuItem(
                    child: Text("hello"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("kkk"),
                    value: 3,
                  ),
                ],
                onChanged: (value) => 3,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.connected_tv_sharp),
              ),
            ],
          ),
          OutlinedButton(
            autofocus: true,
            onPressed: () {},
            child: Text("Outlined Button"),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            splashRadius: 100,
            child: Text("pop pop"),
            shape: Border.all(
              width: 5,
              color: Colors.yellow,
            ),
            color: Colors.red,
            itemBuilder: (context) {
              // return List.empty(growable: false);
              return List.of([
                CheckedPopupMenuItem(
                  child: CircleAvatar(),
                ),
                CheckedPopupMenuItem(
                  child: Icon(Icons.home),
                  height: 200,
                  value: 2,
                  checked: true,
                  // enabled: true,
                  padding: EdgeInsets.all(20),
                ),
              ]);
            },
          ),
          BackButton(),
          ButtonBar(
            children: [
              Container(
                height: 20,
                width: 20,
                color: Colors.pink,
              ),
              Icon(Icons.cabin),
            ],
          ),
          CloseButton(
            color: Colors.red,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
