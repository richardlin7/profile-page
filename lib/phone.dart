import 'package:flutter/material.dart';
import 'package:profile/main.dart';
import 'package:profile/name.dart';

class PhonePage extends StatefulWidget {
  final ProfileState pState;

  const PhonePage(this.pState);

  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  String phoneNumber = "0";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar(context),
        body: Column(
          children: [
            Row(children: [
              Expanded(
                child: ListTile(
                  title: const Text("What's your Phone Number?"),
                  subtitle: TextFormField(
                    onChanged: (value) {
                      phoneNumber = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      hintText: ' Your phone number',
                    ),
                  ),
                ),
              ),
            ]),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreen(
                                  pState: ProfileState(
                                fName: widget.pState.fName,
                                lName: widget.pState.lName,
                                phone: phoneNumber,
                                email: widget.pState.email,
                                info: widget.pState.info,
                              ))));
                },
                child: ListTile(
                  title: const Text(
                    'Update',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Edit Phone Number',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(
                    pState: ProfileState(
                  fName: widget.pState.fName,
                  lName: widget.pState.lName,
                  phone: widget.pState.phone,
                  email: widget.pState.email,
                  info: widget.pState.info,
                )),
              ));
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.arrow_back, color: Colors.grey.shade400),
        ),
      ),
    );
  }
}
