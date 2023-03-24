import 'package:flutter/material.dart';
import 'attendance.dart';
import 'profile.dart';
import 'student_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Administration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    StudentListPage(),
    AttendancePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Student Administration'),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Students',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}




class Student {
  final String name;
  final String rollNumber;
  final String className;

  Student({
    required this.name,
    required this.rollNumber,
    required this.className,
  });
}


