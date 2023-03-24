import 'package:flutter/material.dart';


/* class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  DateTime _selectedDate = DateTime.now();
  List<bool> _switchValues = List.generate(20, (index) => false);
  List<String> _attendanceStatuses = List.generate(20, (index) => '');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Attendance',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Text(
                'Select Date:',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(width: 16.0),
              ElevatedButton(
                onPressed: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: _selectedDate,
                    firstDate: DateTime(2010),
                    lastDate: DateTime(2100),
                  );
                  if (picked != null && picked != _selectedDate) {
                    setState(() {
                      _selectedDate = picked;
                    });
                  }
                },
                child: Text(
                  '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Student ${index + 1}'),
                  trailing: Switch(
                    value: _switchValues[index],
                    onChanged: (bool value) {
                      setState(() {
                        _switchValues[index] = value;
                        if (value) {
                          _attendanceStatuses[index] =
                          'Student ${index + 1} is marked Present';
                        } else {
                          _attendanceStatuses[index] =
                          'Student ${index + 1} is marked Absent';
                        }
                      });
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  _attendanceStatuses[index],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}*/

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  List<bool> _switchValues = List.filled(20, false);
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Attendance',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Text(
                'Select Date:',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(width: 16.0),
              ElevatedButton(
                onPressed: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: _selectedDate,
                    firstDate: DateTime(2010),
                    lastDate: DateTime(2100),
                  );
                  if (picked != null && picked != _selectedDate) {
                    setState(() {
                      _selectedDate = picked;
                    });
                  }
                },
                child: Text(
                  '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Student ${index + 1}'),
                  trailing: Switch(
                    value: _switchValues[index],
                    onChanged: (bool value) {
                      setState(() {
                        _switchValues[index] = value;
                      });
                      final String status = value ? 'Present' : 'Absent';
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Student ${index + 1} is marked $status'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}