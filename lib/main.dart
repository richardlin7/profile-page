import 'package:flutter/material.dart';
import 'package:profile/name.dart';
import 'package:profile/phone.dart';
import 'package:profile/email.dart';
import 'package:profile/info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(
        pState: ProfileState(
            fName: "Richard",
            lName: "Lin",
            phone: "770-818-8101",
            email: "newtoflutter@gmail.com",
            info: "I am a software developer who is trying out Flutter."),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final ProfileState pState;
  final String email = 'newtoflutter@gmail.com';
  final String info = 'I am a software developer who is trying out Flutter.';

  const ProfileScreen({required this.pState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              'Edit Profile',
              style: TextStyle(
                  color: Colors.blue,
                  height: 3,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/photo.jpg'),
                      ),
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: const Icon(Icons.create_sharp,
                              color: Colors.blue),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                50,
                              ),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2, 4),
                                color: Colors.black.withOpacity(
                                  0.3,
                                ),
                                blurRadius: 3,
                              ),
                            ]),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NamePage(pState)));
                },
                child: ListTile(
                    title: const Text('Name'),
                    subtitle: Text('${pState.fName}' ' ' '${pState.lName}'),
                    trailing:
                        Icon(Icons.arrow_forward, color: Colors.grey.shade400),
                    tileColor: Colors.white)),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhonePage(pState)));
                },
                child: ListTile(
                    title: const Text('Phone'),
                    subtitle: Text('${pState.phone}'),
                    trailing:
                        Icon(Icons.arrow_forward, color: Colors.grey.shade400),
                    tileColor: Colors.white)),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmailPage(pState)));
                },
                child: ListTile(
                    title: const Text('Email'),
                    subtitle: Text('${pState.email}'),
                    trailing:
                        Icon(Icons.arrow_forward, color: Colors.grey.shade400),
                    tileColor: Colors.white)),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InfoPage(pState)));
                },
                child: ListTile(
                    title: const Text('Tell us about yourself'),
                    subtitle: Text('${pState.info}'),
                    trailing:
                        Icon(Icons.arrow_forward, color: Colors.grey.shade400),
                    tileColor: Colors.white)),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
