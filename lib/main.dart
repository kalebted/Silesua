// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:capstone_a/chat_page.dart';
import 'package:capstone_a/home_page.dart';
import 'package:capstone_a/OnBoardingPage.dart';
import 'package:capstone_a/alert_page.dart';
import 'package:capstone_a/consultants.dart';
import 'package:capstone_a/contact_page.dart';
import 'package:capstone_a/venting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingPage(),
        routes: {
          '/main':(context) => MainScreen(),
          '/home':(context) => HomePage(),
          '/alert':(context) => AlertPage(),
          '/chats':(context) => ChatPage(),
          '/venting':(context) => VentingPage(),
          '/contacts':(context) => ContactPage(),
          '/consultants':(context) => Consultants(),
        },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int myIndex = 0;
  List<Widget> widgetList = [
    HomePage(),
    ChatPage(),
    Consultants(),
    VentingPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Silesua",
          style: TextStyle(
            fontFamily: 'BioRhyme',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color.fromARGB(255, 219, 41, 191),
          ),
        ),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.notifications_rounded),
          //   onPressed: () {},
          // ),
          IconButton(
            icon: Icon(
              Icons.share_location,
              color: Colors.red[900],
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/alert');
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: myIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 219, 41, 191),
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle), 
            label: 'Consultants'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add),
            label: 'Vent'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Contacts'
          ),
        ],
      ),
    );
  }
}