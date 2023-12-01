import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              'Edit Profile',
              style: TextStyle(
                  color: Colors.blue,
                  height: 3,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Stack(
              children: [
                CircleAvatar(
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
                      child: Icon(Icons.create_sharp, color: Colors.blue),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            50,
                          ),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 4),
                            color: Colors.black.withOpacity(
                              0.3,
                            ),
                            blurRadius: 3,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  print('button pressed!');
                },
                child: ListTile(
                    title: Text('Name'),
                    subtitle: Text('Richard Lin'),
                    trailing:
                        Icon(Icons.arrow_forward, color: Colors.grey.shade400),
                    tileColor: Colors.white)),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  print('button pressed!');
                },
                child: ListTile(
                    title: Text('Phone'),
                    subtitle: Text('770-818-8101'),
                    trailing:
                        Icon(Icons.arrow_forward, color: Colors.grey.shade400),
                    tileColor: Colors.white)),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  print('button pressed!');
                },
                child: ListTile(
                    title: Text('Email'),
                    subtitle: Text('newtoflutter@gmail.com'),
                    trailing:
                        Icon(Icons.arrow_forward, color: Colors.grey.shade400),
                    tileColor: Colors.white)),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  print('button pressed!');
                },
                child: ListTile(
                    title: Text('Tell us about yourself'),
                    subtitle: Text('I am new to flutter.'),
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

  itemProfile(String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
