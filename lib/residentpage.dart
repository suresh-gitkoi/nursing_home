import 'package:flutter/material.dart';

class ResidentPage extends StatefulWidget {
  const ResidentPage({super.key});

  @override
  State<ResidentPage> createState() => _ResidentPageState();
}

class _ResidentPageState extends State<ResidentPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(),
          ),
          Positioned(top: top, child: buildProfileImage()),
        ],
      ),
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            'Harry Porter',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Age: 84',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIcon(
                Icons.medical_information_rounded,
              ),
              const SizedBox(
                width: 12,
              ),
              buildIcon(
                Icons.health_and_safety,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Hello this is the patient information',
            style: TextStyle(
              fontSize: 28,
              height: 1.4,
            ),
          ),
        ],
      );

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'Images/6.jpeg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage('Images/2.jpg'),
      );

  Widget buildIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Center(
          child: Icon(
            icon,
            size: 32,
            color: Colors.grey,
          ),
        ),
      );
}
