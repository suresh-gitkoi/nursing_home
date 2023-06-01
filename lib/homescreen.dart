import 'package:flutter/material.dart';
import 'package:nursing_home/personaldetail.dart';

class Person {
  String name;
  int age;
  String description;
  String image;

  Person(
      {required this.name,
      required this.age,
      required this.description,
      required this.image});
}

class Homescreen extends StatelessWidget {
  final List<Person> persons = [
    Person(
      name: 'Elizabeth Doe',
      age: 85,
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
      image: '1.jpg',
    ),
    Person(
      name: 'Sarah Smith',
      age: 92,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Iaculis nunc sed augue lacus viverra vitae congue.',
      image: '2.jpg',
    ),
    Person(
      name: 'David Taylor',
      age: 75,
      description:
          'Elementum sagittis vitae et leo duis ut diam. Eu sem integer vitae justo eget. Vel turpis nunc eget lorem dolor sed viverra. Ac turpis egestas sed tempus urna et.',
      image: '4.jpeg',
    ),
    // add more Person objects as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PersonDetails(person: persons[index]),
                ),
              );
            },
            child: Card(
              child: ListTile(
                // leading: ImageIcon(
                //   AssetImage('assets/images/${persons[index].image}'),
                // ),
                leading: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/${persons[index].image}',
                      ),
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                title: Text(persons[index].name),
                subtitle: Text('${persons[index].age} years old'),
              ),
            ),
          );
        },
      ),
    );
  }
}
