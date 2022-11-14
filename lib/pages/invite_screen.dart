import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InvitePage extends StatefulWidget {
  const InvitePage({super.key});

  @override
  State<InvitePage> createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
  String? dropDownValue;
  List<String> cityList = [
    'Admin',
    'Approver',
    'Preparer',
    'Viewer',
    'Employee'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Theme.of(context).iconTheme.color,
              )),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Invite",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                focusColor: Colors.grey[300],
                fillColor: Colors.grey[300],
                labelText: "Business email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Color.fromRGBO(66, 66, 66, 1)),
                  hintText: "Admin",
                  fillColor: Colors.grey[300]),
              value: dropDownValue,
              onChanged: (Value) {
                setState(() {
                  dropDownValue = Value;
                });
              },
              items: cityList
                  .map((cityTitle) => DropdownMenuItem(
                      value: cityTitle, child: Text("$cityTitle")))
                  .toList(),
            ),
          ),
        ]),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: InkWell(
              onTap: () {
                //print('called on tap');
              },
              child: Container(
                //margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                height: kToolbarHeight,
                child: Center(child: Text("Continue")),
              )),
        ),
      ),
    );
  }
}
