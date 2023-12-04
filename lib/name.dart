import 'package:flutter/material.dart';
import 'package:profile/main.dart';

class ProfileState {
  String? fName;
  String? lName;
  String? phone;
  String? email;
  String? info;

  ProfileState({this.fName, this.lName, this.phone, this.email, this.info});
}

class NamePage extends StatefulWidget {
  final ProfileState pState;

  const NamePage(this.pState);
  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  String firstName = "Richard";
  String lastName = "Lin";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar(context),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('First Name'),
                    subtitle: TextFormField(
                      onChanged: (value) {
                        firstName = value;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        hintText: ' First Name',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Last Name'),
                    subtitle: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          lastName = value;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        hintText: ' Last Name',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreen(
                              pState: ProfileState(
                                  fName: firstName,
                                  lName: lastName,
                                  phone: widget.pState.phone,
                                  email: widget.pState.email,
                                  info: widget.pState.info))));
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
        'Edit Name',
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
