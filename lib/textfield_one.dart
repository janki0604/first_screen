import 'package:flutter/material.dart';

class TextFieldOne extends StatefulWidget {
  const TextFieldOne({Key? key}) : super(key: key);

  @override
  State<TextFieldOne> createState() => _TextFieldOneState();
}

class _TextFieldOneState extends State<TextFieldOne> {
  bool check = false;
  String? gender;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "enter some text";
                } else if (value.length != 4) {
                  return "minimum 4 character required";
                }
                return null;
              },

              controller: searchController,
              onTap: () => debugPrint("on tap----->>>"),
              onChanged: (value) {
                debugPrint("on changed---->>>$value");
                setState(() {});
              },

              // maxLength: 10,
              style: TextStyle(
                // color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                // backgroundColor: Colors.black,
                debugLabel: "bang bang",
                decorationColor: Colors.green,
              ),
              keyboardAppearance: Brightness.dark,
              // autofocus: false,
              keyboardType: TextInputType.number,
              // obscureText: true,
              // obscuringCharacter: ">",
              textInputAction: TextInputAction.next,
              maxLines: 3,
              minLines: 1,
              enabled: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.pink,
                    width: 10,
                  ),
                ),

                labelText: "search here",
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 10,
                  ),
                ),

                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 5,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.add,
                  color: Colors.red,
                ),
                suffixText: "hy",
                suffixStyle: TextStyle(
                  color: Colors.yellow,
                ),
                suffixIcon: Icon(Icons.add),
                // prefixIconColor: Colors.red,
                // contentPadding: EdgeInsets.only(top: 100),
                fillColor: Colors.purple,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "processing data",
                      ),
                    ),
                  );
                }
              },
              child: Text("done"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              searchController.text,
              style: TextStyle(color: Colors.blueAccent, fontSize: 30),
            ),
            Switch(
              activeColor: Colors.pinkAccent,
              value: check,
              onChanged: (value) {
                print("value---->>>> $value");
                setState(() {
                  check = !check;
                });
              },
            ),
            RadioListTile(
              title: Text("Male"),
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(
                  () {
                    debugPrint("value called--->>>$value");
                    gender = value;
                  },
                );
              },
            ),
            RadioListTile(
              title: Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                debugPrint("value called--->>>$value");

                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Other"),
              value: "other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  debugPrint("value called--->>>$value");

                  gender = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  bool validator() {
    if (searchController.text.isEmpty) {
      return false;
    }
    return true;
  }
}
