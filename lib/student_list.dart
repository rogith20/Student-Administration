import 'main.dart';
import 'package:flutter/material.dart';


class StudentListPage extends StatelessWidget {
  get myStudent => Student(name: 'Student', rollNumber: '123', className: 'BCA');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Students',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: 21, // add one more item for "Add Student" tile
              itemBuilder: (BuildContext context, int index) {
                if (index == 20) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.add),
                    ),
                    title: Text('Add Student'),
                    onTap: () {
                      // Navigate to add student screen
                    },
                  );
                }
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Student ${index + 1}'),
                  subtitle: Text('ID: 123456'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentDetailsScreen(student: myStudent),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class StudentDetailsScreen extends StatelessWidget {
  final Student student;
  Student myStudent = Student(name: 'Student', rollNumber: '123', className: 'BCA');

  StudentDetailsScreen({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Student Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${student.name}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Roll Number: ${student.rollNumber}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Class: ${student.className}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}