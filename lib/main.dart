import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Profile',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String name = 'Mohammed Safhi';
  final String phone = '+966 53 808 1245';
  final String location = 'Dammam';
  final String email = 'MohammedSafhi34@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal Profile',
          style: TextStyle(color: Colors.white), // Center the title with white color
        ),
        centerTitle: true, // Center the title
        backgroundColor: Colors.indigo, // Set the background color of the AppBar
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height, // Set the height to full screen height
        child: Container(
          color: Colors.indigo, // Change the background color
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'img/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                buildBoxWithTitle(Icons.person, 'Name:', name, Icons.arrow_forward),
                SizedBox(height: 10),
                buildBoxWithTitle(Icons.phone, 'Phone:', phone, Icons.arrow_forward),
                SizedBox(height: 10),
                buildBoxWithTitle(Icons.location_on, 'Location:', location, Icons.arrow_forward),
                SizedBox(height: 10),
                buildBoxWithTitle(Icons.email, 'Email:', email, Icons.arrow_forward),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBoxWithTitle(
      IconData iconData, String title, String value, IconData arrowIconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: 60, // Set the height of the box
        child: Row(
          children: [
            SizedBox(width: 16),
            Icon(
              iconData,
              color: Colors.white, // Change the color of the icon to white
            ),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.white, // Change the color of the label to white
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  value,
                  style: TextStyle(color: Colors.white), // Set the text color to white
                ),
              ),
            ),
            Icon(
              arrowIconData,
              color: Colors.white, // Change the color of the arrow to white
            ),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}