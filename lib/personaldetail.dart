import 'package:flutter/material.dart';

import 'homescreen.dart';

class PersonDetails extends StatelessWidget {
  final Person person;

  const PersonDetails({required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resident information Page '),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // implement notification feature
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // implement search feature
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                person.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                person.description,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),

            // add custom widgets such as medication reminders, appointment schedule, etc.
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Upcoming Appointments',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Dentist Appointment'),
                subtitle: Text('Monday, 23 Aug, 3:00 PM'),
                trailing: IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    // cancel appointment
                  },
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Doctor Appointment'),
                subtitle: Text('Thursday, 25 Aug, 10:00 AM'),
                trailing: IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    // cancel appointment
                  },
                ),
              ),
            ),
            // add more upcoming appointments in a similar manner
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Medication Reminders',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.local_pharmacy),
                title: Text('Metformin'),
                subtitle: Text('Take 1 tablet at night'),
                trailing: IconButton(
                  icon: Icon(Icons.check),
                  onPressed: () {
                    // mark medication as taken
                  },
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.local_pharmacy),
                title: Text('Vitamines'),
                subtitle: Text('Take 1 tablet per day'),
                trailing: IconButton(
                  icon: Icon(Icons.check),
                  onPressed: () {
                    // mark medication as taken
                  },
                ),
              ),
            ),
            // add more medication reminders in a similar manner
          ],
        ),
      ),
    );
  }
}
